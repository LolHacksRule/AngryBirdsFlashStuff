package §3!`§
{
   import §"y§.b2EdgeShape;
   import §"y§.b2MassData;
   import §"y§.b2Shape;
   import §'F§.b2Settings;
   import §'F§.b2internal;
   import §+C§.b2JointEdge;
   import §-"&§.b2Contact;
   import §-"&§.b2ContactEdge;
   import §6Z§.b2Mat22;
   import §6Z§.b2Math;
   import §6Z§.b2Sweep;
   import §6Z§.b2Transform;
   import §6Z§.b2Vec2;
   import §@0§.b2ControllerEdge;
   import §^9§.§`c§;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §1!=§:b2Transform;
      
      b2internal static var §24§:uint = 1;
      
      b2internal static var § !]§:uint = 2;
      
      b2internal static var §2!H§:uint = 4;
      
      b2internal static var §<"+§:uint = 8;
      
      b2internal static var §1!?§:uint = 16;
      
      b2internal static var §6!Q§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §1!=§ = new b2Transform();
            loop0:
            while(true)
            {
               §24§ = 1;
               while(true)
               {
                  § !]§ = 2;
                  loop2:
                  for(; _loc2_; if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  },b2_kinematicBody = 1,§§goto(addr37))
                  {
                     §2!H§ = 4;
                     while(true)
                     {
                        §<"+§ = 8;
                        addr37:
                        while(!(_loc1_ && _loc1_))
                        {
                           if(!_loc1_)
                           {
                              b2_dynamicBody = 2;
                              if(!_loc1_)
                              {
                                 if(!_loc1_)
                                 {
                                    return;
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       addr53:
                                       if(_loc2_ || b2Body)
                                       {
                                          continue loop2;
                                       }
                                       loop5:
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             §6!Q§ = 32;
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §1!?§ = 16;
                                                continue loop5;
                                             }
                                             addr94:
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       b2_staticBody = 0;
                                       continue loop7;
                                    }
                                 }
                                 continue loop2;
                              }
                              continue;
                              continue;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      b2internal var §,[§:uint;
      
      b2internal var §6m§:int;
      
      b2internal var §6d§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §?!^§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §-[§:b2Vec2;
      
      b2internal var §#!K§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §0!^§:b2Body;
      
      b2internal var §0!>§:b2Body;
      
      b2internal var §'e§:b2Fixture;
      
      b2internal var §]! §:int;
      
      b2internal var §9"&§:b2ControllerEdge;
      
      b2internal var §,!l§:int;
      
      b2internal var §4!Z§:b2JointEdge;
      
      b2internal var §]J§:b2ContactEdge;
      
      b2internal var §6!L§:Number;
      
      b2internal var §4!&§:Number;
      
      b2internal var §`!k§:Number;
      
      b2internal var §`!`§:Number;
      
      b2internal var §+c§:Number;
      
      b2internal var §8!a§:Number;
      
      b2internal var §]!`§:Number;
      
      b2internal var §'L§:Number;
      
      b2internal var §!!T§:Number;
      
      private var § D§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || this)
         {
            this.m_xf = new b2Transform();
            while(true)
            {
               this.m_sweep = new b2Sweep();
               loop1:
               while(!_loc7_)
               {
                  this.§?!^§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§-[§ = new b2Vec2();
                     loop3:
                     for(; _loc6_; while(true)
                     {
                        if(!(_loc6_ || param1))
                        {
                           continue loop3;
                        }
                        §§goto(addr56);
                     },§§goto(addr292))
                     {
                        super();
                        loop4:
                        while(true)
                        {
                           this.§,[§ = 0;
                           loop5:
                           while(true)
                           {
                              §§push(param1.§6!D§);
                              loop6:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(param1.§6"-§);
                                       loop8:
                                       while(!_loc7_)
                                       {
                                          if(§§pop())
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                this.§,[§ |= b2internal::1!?;
                                                addr233:
                                                while(_loc6_)
                                                {
                                                }
                                                addr104:
                                                addr304:
                                                continue loop5;
                                                while(true)
                                                {
                                                   if(_loc7_ && param1)
                                                   {
                                                      continue loop9;
                                                   }
                                                   §§push(this.m_xf);
                                                   if(_loc7_ && param2)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop().R);
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      §§pop().Set(param1.angle);
                                                      continue loop3;
                                                   }
                                                   addr305:
                                                   var _loc3_:b2Mat22 = §§pop();
                                                   var _loc4_:b2Vec2 = this.m_sweep.localCenter;
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      addr835:
                                                      addr803:
                                                      addr805:
                                                      addr802:
                                                      §§push(this.m_sweep.c);
                                                      §§push(_loc3_.col1.x);
                                                      if(!_loc7_)
                                                      {
                                                         addr834:
                                                         §§push(_loc4_.x);
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            addr828:
                                                            §§push(§§pop() * §§pop());
                                                            §§push(_loc3_.col2.x * _loc4_.y);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§pop().x = §§pop();
                                                      addr836:
                                                      §§push(this.m_sweep);
                                                      if(!_loc7_)
                                                      {
                                                         addr751:
                                                         §§push(§§pop().c);
                                                         §§push(_loc3_.col1);
                                                         if(_loc6_ || this)
                                                         {
                                                            §§push(§§pop().y);
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               addr770:
                                                               §§push(_loc4_.x);
                                                               if(!_loc7_)
                                                               {
                                                                  addr773:
                                                                  §§push(§§pop() * §§pop());
                                                                  §§push(_loc3_.col2);
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     addr783:
                                                                     §§push(§§pop().y);
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(_loc4_.y);
                                                                        if(_loc6_)
                                                                        {
                                                                           addr790:
                                                                           §§push(§§pop() + §§pop() * §§pop());
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              §§pop().y = §§pop();
                                                                              addr799:
                                                                              §§push(this.m_sweep.c);
                                                                              if(_loc6_)
                                                                              {
                                                                                 addr720:
                                                                                 §§push(this.m_sweep.c.x);
                                                                                 if(!(_loc7_ && param2))
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          addr736:
                                                                                          §§push(this.m_xf.position.x);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   addr743:
                                                                                                   §§pop().x = §§pop() + §§pop();
                                                                                                   addr744:
                                                                                                   §§push(this.m_sweep);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§push(§§pop().c);
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         if(_loc6_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(this.m_sweep);
                                                                                                            if(_loc6_ || param1)
                                                                                                            {
                                                                                                               §§push(§§pop().c);
                                                                                                               if(_loc6_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(§§pop().y);
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     §§push(this.m_xf);
                                                                                                                     if(!(_loc7_ && param1))
                                                                                                                     {
                                                                                                                        §§push(§§pop().position);
                                                                                                                        if(!(_loc7_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§push(§§pop().y);
                                                                                                                           if(!(_loc7_ && param1))
                                                                                                                           {
                                                                                                                              addr688:
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc6_ || param2)
                                                                                                                              {
                                                                                                                                 if(_loc6_ || param2)
                                                                                                                                 {
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    addr703:
                                                                                                                                    if(!(_loc7_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(this.m_sweep);
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc7_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             §§pop().c0.SetV(this.m_sweep.c);
                                                                                                                                             this.§4!Z§ = null;
                                                                                                                                             this.§9"&§ = null;
                                                                                                                                             this.§]J§ = null;
                                                                                                                                             addr608:
                                                                                                                                             addr626:
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                this.§,!l§ = 0;
                                                                                                                                                this.§0!^§ = null;
                                                                                                                                                addr591:
                                                                                                                                                if(_loc6_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc7_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      this.§0!>§ = null;
                                                                                                                                                      this.§?!^§.SetV(param1.§`'§);
                                                                                                                                                      this.m_angularVelocity = param1.§>!f§;
                                                                                                                                                      addr562:
                                                                                                                                                      addr567:
                                                                                                                                                      if(!(_loc7_ && param1))
                                                                                                                                                      {
                                                                                                                                                         this.§8!a§ = param1.§94§;
                                                                                                                                                         this.§]!`§ = param1.§&!&§;
                                                                                                                                                         addr542:
                                                                                                                                                         if(_loc6_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc6_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               this.§!!T§ = param1.§3]§;
                                                                                                                                                               addr512:
                                                                                                                                                               if(!(_loc7_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     this.§-[§.Set(0,0);
                                                                                                                                                                     this.§#!K§ = 0;
                                                                                                                                                                     this.§'L§ = 0;
                                                                                                                                                                     this.§6m§ = param1.type;
                                                                                                                                                                     addr499:
                                                                                                                                                                     addr489:
                                                                                                                                                                     addr506:
                                                                                                                                                                     addr494:
                                                                                                                                                                     if(this.§6m§ == b2_dynamicBody)
                                                                                                                                                                     {
                                                                                                                                                                        addr473:
                                                                                                                                                                        if(!(_loc7_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           this.§6!L§ = 1;
                                                                                                                                                                           this.§4!&§ = 1;
                                                                                                                                                                           addr421:
                                                                                                                                                                           this.§`!k§ = 0;
                                                                                                                                                                           addr483:
                                                                                                                                                                           if(_loc6_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc7_)
                                                                                                                                                                              {
                                                                                                                                                                                 this.§`!`§ = 0;
                                                                                                                                                                                 addr389:
                                                                                                                                                                                 if(!(_loc7_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc6_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc7_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§+c§ = param1.§<!x§;
                                                                                                                                                                                          addr373:
                                                                                                                                                                                          if(_loc6_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc7_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc7_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§ D§ = param1.userData;
                                                                                                                                                                                                   addr363:
                                                                                                                                                                                                   if(_loc6_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc7_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.§'e§ = null;
                                                                                                                                                                                                         addr350:
                                                                                                                                                                                                         if(_loc6_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            this.§]! § = 0;
                                                                                                                                                                                                            if(_loc6_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc6_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc7_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc6_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc7_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr608);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           return;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr608);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr439:
                                                                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr421);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr499);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr389);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr363);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr350);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr473);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr542);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr373);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr591);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr562);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr483);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr489);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr448:
                                                                                                                                                                                    if(_loc6_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc7_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§4!&§ = 0;
                                                                                                                                                                                          §§goto(addr439);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr506);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr494);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr421);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr542);
                                                                                                                                                                           }
                                                                                                                                                                           addr467:
                                                                                                                                                                           §§goto(addr467);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr512);
                                                                                                                                                                     }
                                                                                                                                                                     this.§6!L§ = 0;
                                                                                                                                                                     §§goto(addr448);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr567);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr562);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr744);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr626);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr591);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr799);
                                                                                                                                                }
                                                                                                                                                §§goto(addr703);
                                                                                                                                             }
                                                                                                                                             addr603:
                                                                                                                                             §§goto(addr603);
                                                                                                                                          }
                                                                                                                                          §§goto(addr799);
                                                                                                                                       }
                                                                                                                                       §§goto(addr744);
                                                                                                                                       addr710:
                                                                                                                                    }
                                                                                                                                    §§goto(addr836);
                                                                                                                                 }
                                                                                                                                 §§goto(addr835);
                                                                                                                              }
                                                                                                                              §§goto(addr743);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr736);
                                                                                                                  }
                                                                                                                  §§goto(addr688);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr720);
                                                                                                         }
                                                                                                         §§goto(addr803);
                                                                                                      }
                                                                                                      §§goto(addr799);
                                                                                                   }
                                                                                                   §§goto(addr835);
                                                                                                }
                                                                                                §§goto(addr770);
                                                                                             }
                                                                                             §§goto(addr783);
                                                                                          }
                                                                                          §§goto(addr790);
                                                                                       }
                                                                                       §§goto(addr773);
                                                                                    }
                                                                                    §§goto(addr790);
                                                                                 }
                                                                                 §§goto(addr743);
                                                                              }
                                                                              §§goto(addr751);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr828);
                                                               }
                                                               §§goto(addr834);
                                                            }
                                                            §§goto(addr790);
                                                         }
                                                         §§goto(addr805);
                                                      }
                                                      §§goto(addr802);
                                                   }
                                                   §§goto(addr710);
                                                }
                                                addr304:
                                                §§goto(addr305);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(param1.§?!n§);
                                             loop12:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   while(!(_loc7_ && param2))
                                                   {
                                                      this.§,[§ |= b2internal::2!H;
                                                   }
                                                   continue loop2;
                                                   addr198:
                                                }
                                                else
                                                {
                                                   addr167:
                                                }
                                                while(true)
                                                {
                                                   §§push(param1.§5!5§);
                                                   loop16:
                                                   for(; _loc6_ || param1; while(true)
                                                   {
                                                      §§push(param1.active);
                                                      if(_loc6_ || param2)
                                                      {
                                                         continue loop12;
                                                      }
                                                      continue loop16;
                                                   },continue loop12)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc6_ || param1)
                                                      {
                                                         this.§,[§ |= b2internal:: !];
                                                         while(_loc6_)
                                                         {
                                                            continue loop16;
                                                         }
                                                         addr191:
                                                      }
                                                      else
                                                      {
                                                         addr302:
                                                         §§goto(addr304);
                                                         §§push(this.m_xf);
                                                      }
                                                   }
                                                   continue loop8;
                                                }
                                                while(true)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   §§goto(addr233);
                                                }
                                                continue loop4;
                                                if(_loc7_ && param1)
                                                {
                                                   continue;
                                                }
                                                if(§§pop())
                                                {
                                                   loop19:
                                                   while(true)
                                                   {
                                                      if(_loc6_ || this)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            this.§,[§ |= b2internal::6!Q;
                                                            while(true)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  break loop19;
                                                               }
                                                               addr116:
                                                               while(_loc6_ || _loc3_)
                                                               {
                                                                  continue loop19;
                                                                  addr47:
                                                                  if(!(_loc6_ || this))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(false)
                                                                  {
                                                                     loop25:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.m_sweep);
                                                                        while(true)
                                                                        {
                                                                           §§pop().localCenter.§5!H§();
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(this.m_sweep);
                                                                              if(!(_loc7_ && param2))
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§pop().§+%§ = 1;
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       continue loop25;
                                                                                    }
                                                                                    §§goto(addr104);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr302);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr292:
                                                                                 §§pop().a0 = this.m_sweep.a = param1.angle;
                                                                              }
                                                                           }
                                                                           §§goto(addr302);
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     continue;
                                                                     addr56:
                                                                  }
                                                                  §§goto(addr292);
                                                                  §§push(this.m_sweep);
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               this.§,[§ |= b2internal::<"+;
                                                               continue loop2;
                                                            }
                                                            addr240:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr198);
                                                      }
                                                   }
                                                   §§goto(addr191);
                                                }
                                                while(true)
                                                {
                                                   this.m_world = param2;
                                                   §§goto(addr116);
                                                }
                                             }
                                          }
                                       }
                                       continue loop6;
                                    }
                                    addr221:
                                 }
                              }
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr240);
      }
      
      private function §!!g§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Number = Math.atan2(param2.§8@§().y,param2.§8@§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§0!o§(_loc5_,param2.§8@§());
         _loc6_ = b2Math.§";§(_loc6_,param2.§,!E§());
         _loc6_ = b2Math.§0!o§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§&!Z§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§&!Z§(param1.§8@§(),param2.§8@§())).Normalize();
         var _loc8_:* = b2Math.§7!c§(param1.§8@§(),param2.§,!E§()) > 0;
         if(!_loc10_)
         {
            param1.§+9§(param2,_loc6_,_loc7_,_loc8_);
         }
         do
         {
            param2.§=!p§(param1,_loc6_,_loc7_,_loc8_);
         }
         while(!_loc9_);
         
         return _loc4_;
      }
      
      public function CreateFixture(param1:b2FixtureDef) : b2Fixture
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§`c§ = null;
         if(!(_loc7_ && this))
         {
            if(this.m_world.§6"+§() == true)
            {
               if(_loc6_)
               {
                  §§goto(addr33);
               }
            }
            var _loc2_:b2Fixture = new b2Fixture();
            if(!_loc7_)
            {
               _loc2_.§2#§(this,this.m_xf,param1);
               if(_loc6_)
               {
                  if(this.§,[§ & b2internal::6!Q)
                  {
                     if(!(_loc7_ && _loc2_))
                     {
                        §§push(this.m_world);
                        if(_loc6_)
                        {
                           _loc3_ = §§pop().§1C§.§9!V§;
                           if(_loc6_)
                           {
                              _loc2_.§]!J§(_loc3_,this.m_xf);
                              addr76:
                              _loc2_.§0!>§ = this.§'e§;
                              if(!(_loc7_ && this))
                              {
                                 addr97:
                                 this.§'e§ = _loc2_;
                                 if(!_loc7_)
                                 {
                                    var _loc4_:*;
                                    §§push((_loc4_ = this).§]! §);
                                    if(!(_loc7_ && param1))
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc5_:* = §§pop();
                                    if(_loc6_ || param1)
                                    {
                                       _loc4_.§]! § = _loc5_;
                                    }
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       _loc2_.m_body = this;
                                       loop5:
                                       while(true)
                                       {
                                          if(_loc2_.§;h§ > 0)
                                          {
                                             loop1:
                                             while(true)
                                             {
                                                if(_loc7_)
                                                {
                                                   continue loop5;
                                                }
                                                while(true)
                                                {
                                                   this.§5!Z§();
                                                   addr181:
                                                   while(true)
                                                   {
                                                      break loop1;
                                                   }
                                                }
                                                continue loop5;
                                             }
                                             addr177:
                                          }
                                          loop3:
                                          while(true)
                                          {
                                             §§push(this.m_world);
                                             addr143:
                                             while(true)
                                             {
                                                §§push(this.m_world.§,[§);
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop() | b2World.§+!P§);
                                                }
                                                §§pop().§,[§ = §§pop();
                                                if(!_loc7_)
                                                {
                                                   if(_loc6_ || this)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr177);
                                                }
                                                §§goto(addr181);
                                                continue loop3;
                                             }
                                          }
                                       }
                                       addr134:
                                    }
                                    return _loc2_;
                                 }
                                 §§goto(addr179);
                              }
                              §§goto(addr181);
                           }
                           §§goto(addr76);
                        }
                        §§goto(addr143);
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr76);
               }
               §§goto(addr179);
            }
            §§goto(addr134);
         }
         addr33:
         return null;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         if(!_loc4_)
         {
            _loc3_.shape = param1;
         }
         do
         {
            _loc3_.density = param2;
         }
         while(_loc4_);
         
         return this.CreateFixture(_loc3_);
      }
      
      public function §7H§(param1:b2Fixture) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§`c§ = null;
         if(_loc13_)
         {
            if(this.m_world.§6"+§() == true)
            {
               if(_loc13_ || param1)
               {
                  §§goto(addr43);
               }
            }
            var _loc2_:b2Fixture = this.§'e§;
            var _loc3_:b2Fixture = null;
            var _loc4_:Boolean = false;
            loop0:
            while(_loc2_ != null)
            {
               if(_loc2_ == param1)
               {
                  if(!(_loc12_ && _loc2_))
                  {
                     if(_loc3_)
                     {
                        if(!(_loc12_ && param1))
                        {
                           _loc3_.§0!>§ = param1.§0!>§;
                           loop1:
                           while(true)
                           {
                              addr68:
                              loop2:
                              while(true)
                              {
                                 addr54:
                                 while(true)
                                 {
                                    _loc4_ = true;
                                    if(_loc12_)
                                    {
                                       break loop0;
                                    }
                                    if(_loc13_ || _loc2_)
                                    {
                                       if(true)
                                       {
                                          break loop0;
                                       }
                                       continue loop2;
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           addr108:
                        }
                        break;
                     }
                     this.§'e§ = param1.§0!>§;
                     while(true)
                     {
                        if(!(_loc12_ && this))
                        {
                           §§goto(addr54);
                        }
                        else
                        {
                           §§goto(addr108);
                        }
                     }
                  }
                  break;
               }
               _loc3_ = _loc2_;
               _loc2_ = _loc2_.§0!>§;
            }
            var _loc5_:b2ContactEdge = this.§]J§;
            if(_loc13_)
            {
               while(_loc5_)
               {
                  _loc6_ = _loc5_.§;%§;
                  _loc5_ = _loc5_.next;
                  _loc7_ = _loc6_.§&R§();
                  _loc8_ = _loc6_.§@!,§();
                  if(!_loc12_)
                  {
                     §§push(param1 == _loc7_);
                     if(_loc13_ || _loc3_)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc12_ && this))
                           {
                              addr175:
                              §§pop();
                              addr189:
                              if(!_loc12_)
                              {
                                 §§push(param1 == _loc8_);
                              }
                              this.m_world.§1C§.§5f§(_loc6_);
                              continue;
                           }
                        }
                        if(!§§pop())
                        {
                           continue;
                        }
                        if(!(_loc13_ || _loc3_))
                        {
                           continue;
                        }
                        §§goto(addr189);
                     }
                  }
                  §§goto(addr175);
               }
               if(!(_loc12_ && param1))
               {
                  §§goto(addr203);
               }
               §§goto(addr235);
            }
            addr203:
            if(this.§,[§ & b2internal::6!Q)
            {
               if(_loc13_ || this)
               {
                  _loc9_ = this.m_world.§1C§.§9!V§;
                  if(_loc13_ || _loc3_)
                  {
                     param1.§5!k§(_loc9_);
                  }
                  §§goto(addr231);
               }
               §§goto(addr255);
            }
            addr231:
            param1.§5f§();
            if(_loc13_)
            {
               addr235:
               param1.m_body = null;
               if(_loc13_ || _loc3_)
               {
                  param1.§0!>§ = null;
                  if(_loc13_ || param1)
                  {
                     addr255:
                     var _loc10_:*;
                     §§push((_loc10_ = this).§]! §);
                     if(_loc13_)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc11_:* = §§pop();
                     if(!_loc12_)
                     {
                        _loc10_.§]! § = _loc11_;
                     }
                     if(!_loc13_)
                     {
                     }
                     §§goto(addr284);
                  }
               }
               this.§5!Z§();
            }
            addr284:
            return;
         }
         addr43:
      }
      
      public function §[!@§(param1:b2Vec2, param2:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:b2Fixture = null;
         if(_loc9_)
         {
            if(this.m_world.§6"+§() != true)
            {
               loop0:
               while(true)
               {
                  §§push(this.m_xf);
                  loop1:
                  while(true)
                  {
                     §§push(§§pop().R);
                     if(!_loc8_)
                     {
                        §§pop().Set(param2);
                        while(true)
                        {
                           §§push(this.m_xf);
                           if(!_loc8_)
                           {
                              if(!_loc9_)
                              {
                                 continue loop1;
                              }
                              §§pop().position.SetV(param1);
                              if(!_loc9_)
                              {
                                 continue;
                              }
                              if(_loc8_)
                              {
                                 continue loop0;
                              }
                              if(!(_loc9_ || param2))
                              {
                                 break loop0;
                              }
                              while(true)
                              {
                                 if(true)
                                 {
                                    §§push(this.m_xf);
                                 }
                                 continue loop0;
                              }
                           }
                           break;
                        }
                        §§push(§§pop().R);
                        break;
                     }
                     break;
                  }
                  var _loc4_:b2Mat22 = §§pop();
                  var _loc5_:b2Vec2 = this.m_sweep.localCenter;
                  if(_loc9_ || param1)
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
                                                         if(_loc8_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop().c);
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_.col1);
                                                            if(_loc8_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop().y);
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(_loc5_.x);
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  loop18:
                                                                  while(_loc9_ || _loc3_)
                                                                  {
                                                                     §§push(_loc4_.col2);
                                                                     if(!(_loc8_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop().y);
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc5_.y);
                                                                           if(_loc8_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(§§pop() * §§pop());
                                                                           loop20:
                                                                           for(; _loc9_ || _loc3_; while(!(_loc8_ && param1))
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 continue loop19;
                                                                              }
                                                                              if(!(_loc9_ || param2))
                                                                              {
                                                                                 continue loop17;
                                                                              }
                                                                              if(!(_loc9_ || param2))
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              if(_loc8_)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              §§goto(addr266);
                                                                              §§push(§§pop() + §§pop());
                                                                           })
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().y = §§pop();
                                                                                 addr320:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.m_sweep);
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       break loop14;
                                                                                    }
                                                                                    continue loop3;
                                                                                 }
                                                                                 addr166:
                                                                                 if(!(_loc9_ || param1))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc8_ && param1)
                                                                                 {
                                                                                    continue loop18;
                                                                                 }
                                                                                 §§pop().y = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       loop31:
                                                                                       while(!(_loc8_ && param2))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.m_sweep);
                                                                                             if(_loc8_ && this)
                                                                                             {
                                                                                                break loop14;
                                                                                             }
                                                                                             §§push(§§pop().c);
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                continue loop15;
                                                                                             }
                                                                                             addr214:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc9_ || _loc3_))
                                                                                                {
                                                                                                   continue loop4;
                                                                                                }
                                                                                                §§push(this.m_sweep);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().c);
                                                                                                   addr224:
                                                                                                   addr126:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      addr225:
                                                                                                      while(!_loc8_)
                                                                                                      {
                                                                                                         if(!(_loc9_ || this))
                                                                                                         {
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         §§push(this.m_xf);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().position);
                                                                                                            addr239:
                                                                                                            addr150:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               continue loop20;
                                                                                                            }
                                                                                                            §§push(this.m_xf);
                                                                                                            if(_loc8_ && _loc3_)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            §§push(§§pop().position);
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  continue loop20;
                                                                                                               }
                                                                                                               §§goto(addr166);
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr239);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                   §§push(this.m_sweep);
                                                                                                   if(!(_loc9_ || param1))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§push(§§pop().c);
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      if(_loc9_ || param2)
                                                                                                      {
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               §§goto(addr150);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr225);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().x = §§pop();
                                                                                                               continue loop31;
                                                                                                            }
                                                                                                            addr266:
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr166);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr224);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop21;
                                                                                       }
                                                                                       continue loop14;
                                                                                    }
                                                                                    if(_loc8_ && this)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(this.m_sweep);
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       break loop14;
                                                                                    }
                                                                                    §§pop().c0.SetV(this.m_sweep.c);
                                                                                    if(!(_loc8_ && param2))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr350);
                                                                                 }
                                                                                 §§goto(addr320);
                                                                              }
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                            }
                                                         }
                                                         continue loop5;
                                                      }
                                                      §§pop().a0 = this.m_sweep.a = param2;
                                                      addr350:
                                                      var _loc6_:§`c§ = this.m_world.§1C§.§9!V§;
                                                      _loc3_ = this.§'e§;
                                                      addr385:
                                                      if(_loc3_)
                                                      {
                                                         _loc3_.§[!$§(_loc6_,this.m_xf,this.m_xf);
                                                         if(_loc9_)
                                                         {
                                                            _loc3_ = _loc3_.§0!>§;
                                                            §§goto(addr385);
                                                         }
                                                         §§goto(addr389);
                                                      }
                                                      if(!_loc8_)
                                                      {
                                                         §§goto(addr389);
                                                      }
                                                      addr389:
                                                      this.m_world.§1C§.§>"+§();
                                                      return;
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
                  §§goto(addr320);
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §9!Z§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§[!@§(param1.position,param1.GetAngle());
         }
      }
      
      public function §#%§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function SetPosition(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[!@§(param1,this.GetAngle());
         }
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function SetAngle(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§[!@§(this.GetPosition(),param1);
         }
      }
      
      public function §#!0§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §8!H§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(this.§6m§ == b2_staticBody)
            {
               if(!(_loc3_ && param1))
               {
                  return;
               }
               while(true)
               {
               }
               addr68:
            }
            while(true)
            {
               this.§?!^§.SetV(param1);
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr68);
            }
         }
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§?!^§;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.§6m§ != b2_staticBody)
            {
               do
               {
                  this.m_angularVelocity = param1;
               }
               while(_loc2_ && _loc2_);
               
               if(!(_loc2_ && _loc2_))
               {
                  return;
               }
            }
         }
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §47§() : b2BodyDef
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2BodyDef = new b2BodyDef();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.type = this.§<!A§();
            loop0:
            while(true)
            {
               _loc1_.§?!n§ = (this.§,[§ & b2internal::2!H) == b2internal::2!H;
               while(true)
               {
                  _loc1_.angle = this.GetAngle();
                  while(true)
                  {
                     _loc1_.§&!&§ = this.§]!`§;
                     continue loop0;
                     addr55:
                     if(_loc3_ || this)
                     {
                        return _loc1_;
                        addr62:
                     }
                  }
                  addr152:
                  loop4:
                  while(_loc3_ || this)
                  {
                     _loc1_.§6"-§ = (this.§,[§ & b2internal::1!?) == b2internal::1!?;
                     loop5:
                     while(true)
                     {
                        _loc1_.§6!D§ = (this.§,[§ & b2internal::<"+) == b2internal::<"+;
                        while(_loc3_)
                        {
                           _loc1_.§5!5§ = (this.§,[§ & b2internal:: !]) == b2internal:: !];
                           loop7:
                           while(!(_loc2_ && _loc1_))
                           {
                              _loc1_.§94§ = this.§8!a§;
                              loop8:
                              while(_loc3_ || _loc1_)
                              {
                                 _loc1_.§`'§.SetV(this.GetLinearVelocity());
                                 while(!_loc2_)
                                 {
                                    _loc1_.position = this.GetPosition();
                                    continue loop8;
                                    while(!(_loc2_ && _loc1_))
                                    {
                                       _loc1_.userData = this.GetUserData();
                                       if(!_loc3_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr41);
                                    }
                                    if(!(_loc2_ && this))
                                    {
                                       if(!(_loc3_ || _loc2_))
                                       {
                                          continue loop7;
                                       }
                                       §§goto(addr55);
                                       continue loop7;
                                    }
                                 }
                                 continue loop5;
                              }
                              continue loop0;
                           }
                        }
                        continue loop4;
                     }
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public function §@]§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.§6m§ == b2_dynamicBody)
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
                     addr175:
                  }
                  while(true)
                  {
                     §§push(this.§-[§);
                     loop4:
                     while(true)
                     {
                        §§push(this.§-[§);
                        addr160:
                        while(true)
                        {
                           §§push(§§pop().x);
                           addr161:
                           while(true)
                           {
                              §§push(param1.x);
                              addr163:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr164:
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    addr165:
                                    while(!_loc4_)
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop4;
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr188);
                                 }
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
      
      public function §?7§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§6m§ != b2_dynamicBody)
            {
               if(_loc2_)
               {
                  return;
               }
               while(true)
               {
               }
               addr90:
            }
            loop0:
            while(true)
            {
               if(this.IsAwake() == false)
               {
                  while(true)
                  {
                     this.SetAwake(true);
                     addr70:
                     while(_loc2_)
                     {
                     }
                     continue loop0;
                  }
                  addr67:
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§#!K§);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§#!K§ = §§pop();
                  if(!_loc3_)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        break;
                     }
                     §§goto(addr67);
                  }
                  §§goto(addr70);
               }
               return;
            }
         }
         §§goto(addr90);
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§6m§ == b2_dynamicBody)
            {
               loop0:
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     loop1:
                     while(true)
                     {
                        this.SetAwake(true);
                        while(true)
                        {
                           loop12:
                           for(; _loc4_ || param2; §§pop().m_angularVelocity = §§pop(),if(!(_loc4_ || this))
                           {
                              continue;
                           },if(!(_loc3_ && param2))
                           {
                              if(_loc4_)
                              {
                                 return;
                                 addr125:
                              }
                              continue loop1;
                           },addr182:,loop11:
                           while(true)
                           {
                              §§push(this.§?!^§);
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§push(this.§?!^§);
                              if(_loc4_ || param2)
                              {
                                 §§push(§§pop().y);
                                 if(_loc4_ || param1)
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(this.§4!&§);
                                       if(_loc4_)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§push(param1.y);
                                             if(!_loc3_)
                                             {
                                                addr161:
                                                §§push(§§pop() * §§pop());
                                                if(!_loc3_)
                                                {
                                                   addr164:
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc3_)
                                                   {
                                                      §§pop().y = §§pop();
                                                      continue loop12;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§4!&§);
                                                      addr187:
                                                      while(true)
                                                      {
                                                         §§push(param1.x);
                                                         addr189:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                      }
                                                   }
                                                   addr185:
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   addr191:
                                                   while(true)
                                                   {
                                                      §§pop().x = §§pop();
                                                      continue loop11;
                                                   }
                                                }
                                             }
                                             §§goto(addr189);
                                          }
                                          §§goto(addr187);
                                       }
                                       §§goto(addr161);
                                    }
                                    §§goto(addr191);
                                 }
                                 §§goto(addr164);
                              }
                              else
                              {
                                 while(true)
                                 {
                                 }
                                 addr184:
                              }
                              §§goto(addr185);
                           },while(true)
                           {
                              §§goto(addr184);
                              §§goto(addr192);
                           },addr192:)
                           {
                              if(!_loc4_)
                              {
                                 continue loop0;
                              }
                              if(_loc3_)
                              {
                                 §§goto(addr216);
                              }
                              §§push(this);
                              §§push(this.m_angularVelocity);
                              if(!_loc4_)
                              {
                                 continue;
                              }
                              §§push(this.§`!`§);
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(param2.x);
                                 if(!(_loc3_ && param1))
                                 {
                                    §§push(this.m_sweep.c.x);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc3_ && this))
                                       {
                                          addr62:
                                          §§push(param1.y);
                                          if(_loc4_)
                                          {
                                             addr66:
                                             §§push(§§pop() * §§pop());
                                             if(!_loc3_)
                                             {
                                                addr69:
                                                §§push(param2.y);
                                                if(!_loc3_)
                                                {
                                                   §§push(this.m_sweep.c.y);
                                                   if(_loc4_ || this)
                                                   {
                                                      addr95:
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc4_ || this)
                                                      {
                                                         §§push(param1.x);
                                                      }
                                                      §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                      continue;
                                                   }
                                                   §§goto(addr95);
                                                   §§push(§§pop() * §§pop());
                                                }
                                             }
                                          }
                                          §§goto(addr95);
                                       }
                                       §§goto(addr69);
                                    }
                                    §§goto(addr66);
                                 }
                                 §§goto(addr62);
                              }
                              §§goto(addr95);
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr182);
                  }
               }
            }
            addr216:
            return;
         }
         §§goto(addr125);
      }
      
      public function §`W§(param1:Function) : b2Body
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         §§push(this.GetAngularVelocity());
         if(_loc16_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:b2Vec2 = this.§#!0§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.CreateBody(this.§47§());
         var _loc8_:b2Fixture = _loc5_.§'e§;
         while(true)
         {
            if(!_loc8_)
            {
               if(!_loc17_)
               {
                  _loc5_.§5!Z§();
                  if(!(_loc17_ && this))
                  {
                     addr208:
                     _loc6_.§5!Z§();
                     break;
                  }
                  break;
               }
               §§goto(addr208);
            }
            else
            {
               if(!param1(_loc8_))
               {
                  _loc7_ = _loc8_;
                  _loc8_ = _loc8_.§0!>§;
                  continue;
               }
               if(_loc17_)
               {
                  break;
               }
               _loc13_ = _loc8_.§0!>§;
               if(_loc16_ || this)
               {
                  if(_loc7_)
                  {
                     if(!(_loc17_ && this))
                     {
                        _loc7_.§0!>§ = _loc13_;
                        if(!(_loc17_ && _loc3_))
                        {
                           addr101:
                           var _loc14_:*;
                           §§push((_loc14_ = _loc5_).§]! §);
                           if(_loc16_)
                           {
                              §§push(§§pop() - 1);
                           }
                           var _loc15_:* = §§pop();
                           if(!(_loc17_ && param1))
                           {
                              _loc14_.§]! § = _loc15_;
                           }
                           if(_loc16_ || _loc3_)
                           {
                              addr128:
                              _loc8_.§0!>§ = _loc6_.§'e§;
                              if(_loc16_ || _loc2_)
                              {
                                 _loc6_.§'e§ = _loc8_;
                                 if(_loc17_)
                                 {
                                 }
                                 addr181:
                                 _loc8_.m_body = _loc6_;
                                 _loc8_ = _loc13_;
                                 continue;
                              }
                              §§push((_loc14_ = _loc6_).§]! §);
                              if(_loc16_ || param1)
                              {
                                 §§push(§§pop() + 1);
                              }
                              _loc15_ = §§pop();
                              if(!_loc17_)
                              {
                                 _loc14_.§]! § = _loc15_;
                              }
                              if(_loc16_ || _loc2_)
                              {
                                 §§goto(addr181);
                              }
                           }
                        }
                     }
                     §§goto(addr181);
                  }
                  else
                  {
                     _loc5_.§'e§ = _loc13_;
                     if(!(_loc17_ && _loc3_))
                     {
                        §§goto(addr101);
                     }
                  }
               }
               §§goto(addr128);
            }
         }
         var _loc9_:b2Vec2 = _loc5_.§#!0§();
         var _loc10_:b2Vec2 = _loc6_.§#!0§();
         var _loc11_:b2Vec2 = b2Math.§&!Z§(_loc2_,b2Math.§6"%§(_loc3_,b2Math.§";§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§&!Z§(_loc2_,b2Math.§6"%§(_loc3_,b2Math.§";§(_loc10_,_loc4_)));
         if(_loc16_)
         {
            _loc5_.SetLinearVelocity(_loc11_);
            while(true)
            {
               _loc6_.SetLinearVelocity(_loc12_);
               loop2:
               while(true)
               {
                  _loc5_.SetAngularVelocity(_loc3_);
                  addr302:
                  while(true)
                  {
                     _loc6_.SetAngularVelocity(_loc3_);
                     continue loop2;
                  }
               }
               if(!(_loc16_ || _loc2_))
               {
                  continue;
               }
               loop5:
               while(true)
               {
                  _loc5_.§[!r§();
                  while(!_loc17_)
                  {
                     _loc6_.§[!r§();
                     if(!(_loc16_ || this))
                     {
                        continue;
                     }
                     if(_loc16_)
                     {
                        break loop5;
                     }
                     §§goto(addr302);
                  }
                  §§goto(addr273);
               }
               return _loc6_;
               addr287:
            }
         }
         §§goto(addr287);
      }
      
      public function §[!R§(param1:b2Body) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§'e§;
         for(; _loc2_; _loc2_ = _loc11_)
         {
            _loc11_ = _loc2_.§0!>§;
            if(_loc15_ && this)
            {
               continue;
            }
            var _loc12_:*;
            §§push((_loc12_ = param1).§]! §);
            if(!_loc15_)
            {
               §§push(§§pop() - 1);
            }
            var _loc13_:* = §§pop();
            if(_loc14_)
            {
               _loc12_.§]! § = _loc13_;
            }
            if(_loc14_)
            {
               _loc2_.§0!>§ = this.§'e§;
               if(!_loc15_)
               {
                  this.§'e§ = _loc2_;
                  if(!_loc15_)
                  {
                     addr73:
                     §§push((_loc12_ = this).§]! §);
                     if(!_loc15_)
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc13_ = §§pop();
                     if(_loc14_)
                     {
                        _loc12_.§]! § = _loc13_;
                     }
                     if(!_loc14_)
                     {
                        continue;
                     }
                  }
                  _loc2_.m_body = _loc4_;
               }
               continue;
            }
            §§goto(addr73);
         }
         if(!_loc15_)
         {
            _loc3_.§]! § = 0;
         }
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§#!0§();
         var _loc6_:b2Vec2 = _loc4_.§#!0§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         §§push(_loc3_.GetAngularVelocity());
         if(!(_loc15_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.GetAngularVelocity());
         if(!(_loc15_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         if(!(_loc15_ && this))
         {
            _loc3_.§5!Z§();
            do
            {
               this.§[!r§();
            }
            while(_loc15_);
            
         }
      }
      
      public function GetMass() : Number
      {
         return this.§6!L§;
      }
      
      public function §7"'§() : Number
      {
         return this.§`!k§;
      }
      
      public function §9!p§(param1:b2MassData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            param1.§#!5§ = this.§6!L§;
         }
         while(true)
         {
            param1.I = this.§`!k§;
            while(!(_loc2_ && _loc2_))
            {
               param1.center.SetV(this.m_sweep.localCenter);
               if(_loc3_ || _loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function §!j§(param1:b2MassData) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(b2Settings);
            §§push(this.m_world.§6"+§());
            if(_loc4_ || param1)
            {
               §§push(§§pop() == false);
            }
            §§pop().b2Assert(§§pop());
            loop0:
            while(true)
            {
               §§push(this.m_world.§6"+§());
               while(true)
               {
                  §§push(true);
                  while(true)
                  {
                     if(§§pop() != §§pop())
                     {
                        while(true)
                        {
                           §§push(this.§6m§);
                           while(true)
                           {
                              if(§§pop() == b2_dynamicBody)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    this.§4!&§ = 0;
                                    while(_loc4_)
                                    {
                                       this.§`!k§ = 0;
                                       loop7:
                                       while(true)
                                       {
                                          this.§`!`§ = 0;
                                          while(!(_loc3_ && this))
                                          {
                                             this.§6!L§ = param1.§#!5§;
                                             while(_loc4_ || _loc3_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue loop7;
                                                }
                                                if(!(_loc4_ || _loc3_))
                                                {
                                                   §§goto(addr265);
                                                }
                                                §§push(this.§6!L§);
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr191:
                                                   while(true)
                                                   {
                                                      if(§§pop() <= §§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            this.§6!L§ = 1;
                                                            addr195:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                         addr192:
                                                      }
                                                      while(true)
                                                      {
                                                         this.§4!&§ = 1 / this.§6!L§;
                                                         addr179:
                                                         §§goto(addr257);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          continue loop5;
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                              addr257:
                              while(_loc4_ || _loc2_)
                              {
                                 continue loop10;
                              }
                              return;
                           }
                        }
                     }
                     addr265:
                     return;
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      public function §5!Z§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2MassData = null;
         if(_loc6_ || this)
         {
            this.§6!L§ = 0;
         }
         loop0:
         while(true)
         {
            this.§4!&§ = 0;
            loop1:
            while(true)
            {
               this.§`!k§ = 0;
               while(true)
               {
                  this.§`!`§ = 0;
                  while(_loc6_)
                  {
                     this.m_sweep.localCenter.§5!H§();
                     loop4:
                     while(true)
                     {
                        addr83:
                        while(true)
                        {
                           §§push(this.§6m§);
                           loop6:
                           while(true)
                           {
                              §§push(b2_staticBody);
                              loop7:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 loop8:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§pop();
                                          addr91:
                                          while(true)
                                          {
                                             §§push(this.§6m§);
                                             if(!(_loc6_ || _loc1_))
                                             {
                                                break;
                                             }
                                             §§push(b2_kinematicBody);
                                             if(!_loc6_)
                                             {
                                                continue loop7;
                                             }
                                             §§push(§§pop() == §§pop());
                                             if(!_loc6_)
                                             {
                                                continue loop9;
                                             }
                                             if(!_loc6_)
                                             {
                                                continue loop8;
                                             }
                                          }
                                          continue loop6;
                                       }
                                    }
                                    while(§§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          if(_loc6_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop1;
                                       }
                                       if(_loc6_ || this)
                                       {
                                          continue loop4;
                                       }
                                       §§goto(addr91);
                                    }
                                    addr119:
                                    var _loc1_:b2Vec2 = b2Vec2.§0"0§(0,0);
                                    var _loc2_:b2Fixture = this.§'e§;
                                    addr245:
                                    if(_loc2_)
                                    {
                                       §§push(_loc2_.§;h§);
                                       if(_loc6_ || this)
                                       {
                                          §§push(0);
                                          if(!(_loc5_ && this))
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc6_ || _loc1_)
                                                {
                                                   addr241:
                                                   _loc2_ = _loc2_.§0!>§;
                                                   §§goto(addr245);
                                                }
                                                §§push(this);
                                                §§push(this.§`!k§);
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   §§push(§§pop() * this.§+c§);
                                                }
                                                §§pop().§`!k§ = §§pop();
                                                b2Settings.b2Assert(this.§`!k§ > 0);
                                                addr366:
                                                if(_loc6_)
                                                {
                                                   this.§`!`§ = 1 / this.§`!k§;
                                                   addr323:
                                                   if(!(_loc6_ || this))
                                                   {
                                                      §§goto(addr366);
                                                   }
                                                   addr501:
                                                   var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
                                                   if(!_loc5_)
                                                   {
                                                      addr697:
                                                      this.m_sweep.localCenter.SetV(_loc1_);
                                                      addr700:
                                                      §§push(this.m_sweep);
                                                      if(_loc6_ || _loc1_)
                                                      {
                                                         §§pop().c0.SetV(b2Math.§!v§(this.m_xf,this.m_sweep.localCenter));
                                                         addr694:
                                                         §§push(this.m_sweep);
                                                         if(_loc6_)
                                                         {
                                                            §§pop().c.SetV(this.m_sweep.c0);
                                                            addr650:
                                                            if(!(_loc5_ && this))
                                                            {
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  addr638:
                                                                  addr616:
                                                                  addr614:
                                                                  §§push(this.§?!^§);
                                                                  §§push(this.§?!^§.x);
                                                                  if(_loc6_)
                                                                  {
                                                                     addr621:
                                                                     §§push(this.m_angularVelocity);
                                                                     §§push(this.m_sweep.c.y);
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        addr634:
                                                                        §§push(§§pop() - _loc3_.y);
                                                                     }
                                                                     §§push(§§pop() + §§pop() * -§§pop());
                                                                  }
                                                                  §§pop().x = §§pop();
                                                                  addr639:
                                                                  §§push(this.§?!^§);
                                                                  if(!(_loc5_ && _loc1_))
                                                                  {
                                                                     §§push(this.§?!^§);
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(§§pop().y);
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(this.m_angularVelocity);
                                                                           if(_loc6_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(this.m_sweep);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(§§pop().c);
                                                                                    if(_loc6_ || _loc3_)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(_loc6_ || _loc2_)
                                                                                       {
                                                                                          if(_loc6_ || this)
                                                                                          {
                                                                                             §§push(_loc3_.x);
                                                                                             if(_loc6_ || _loc2_)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(!(_loc5_ && _loc3_))
                                                                                                {
                                                                                                   addr581:
                                                                                                   if(_loc6_ || _loc1_)
                                                                                                   {
                                                                                                      addr589:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         addr593:
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc6_ || _loc2_)
                                                                                                         {
                                                                                                            §§pop().y = §§pop();
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               if(!(_loc6_ || _loc3_))
                                                                                                               {
                                                                                                                  §§goto(addr650);
                                                                                                               }
                                                                                                               return;
                                                                                                            }
                                                                                                            §§goto(addr639);
                                                                                                         }
                                                                                                         §§goto(addr638);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr621);
                                                                                                }
                                                                                                §§goto(addr589);
                                                                                             }
                                                                                             §§goto(addr634);
                                                                                          }
                                                                                          §§goto(addr621);
                                                                                       }
                                                                                       §§goto(addr581);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr621);
                                                                           }
                                                                           §§goto(addr589);
                                                                        }
                                                                        §§goto(addr593);
                                                                     }
                                                                     §§goto(addr616);
                                                                  }
                                                                  §§goto(addr614);
                                                               }
                                                               §§goto(addr700);
                                                            }
                                                            §§goto(addr694);
                                                         }
                                                         §§goto(addr700);
                                                      }
                                                      §§goto(addr697);
                                                   }
                                                   §§goto(addr694);
                                                   addr302:
                                                }
                                                addr440:
                                                if(_loc6_)
                                                {
                                                   this.§4!&§ = 1;
                                                   addr441:
                                                   addr461:
                                                   §§push(this.§`!k§ > 0);
                                                   if(!(_loc5_ && _loc1_))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         addr455:
                                                         §§pop();
                                                         §§push((this.§,[§ & b2internal::1!?) == 0);
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                         }
                                                         §§goto(addr455);
                                                         addr456:
                                                      }
                                                      if(§§pop())
                                                      {
                                                         addr383:
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               §§push(this);
                                                               §§push(this.§`!k§);
                                                               if(_loc6_ || _loc2_)
                                                               {
                                                                  §§push(this.§6!L§);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(_loc1_.x);
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(_loc1_.x);
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc6_ || _loc2_)
                                                                           {
                                                                              addr430:
                                                                              addr431:
                                                                              addr432:
                                                                              §§push(_loc1_.y);
                                                                              if(!(_loc5_ && this))
                                                                              {
                                                                                 addr426:
                                                                                 §§push(§§pop() * _loc1_.y);
                                                                              }
                                                                              §§pop().§`!k§ = §§pop() - §§pop() * (§§pop() + §§pop());
                                                                              addr433:
                                                                              if(!(_loc5_ && this))
                                                                              {
                                                                                 §§goto(addr440);
                                                                              }
                                                                              §§push(_loc1_);
                                                                              §§push(_loc1_.y);
                                                                              if(_loc6_ || _loc3_)
                                                                              {
                                                                                 §§push(§§pop() * this.§4!&§);
                                                                              }
                                                                              §§pop().y = §§pop();
                                                                              §§goto(addr441);
                                                                              addr485:
                                                                              addr500:
                                                                           }
                                                                           §§goto(addr430);
                                                                        }
                                                                        §§goto(addr426);
                                                                     }
                                                                     §§goto(addr430);
                                                                  }
                                                                  §§goto(addr431);
                                                               }
                                                               §§goto(addr432);
                                                            }
                                                            §§goto(addr461);
                                                         }
                                                         §§goto(addr456);
                                                      }
                                                      this.§`!k§ = 0;
                                                      addr308:
                                                      if(_loc6_ || this)
                                                      {
                                                         this.§`!`§ = 0;
                                                         if(!(_loc5_ && _loc1_))
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(_loc6_ || _loc1_)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§goto(addr383);
                                                                  }
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr302);
                                                                  }
                                                                  §§goto(addr501);
                                                               }
                                                               §§goto(addr433);
                                                            }
                                                            §§goto(addr323);
                                                         }
                                                         §§goto(addr308);
                                                      }
                                                      §§goto(addr366);
                                                   }
                                                   §§goto(addr455);
                                                }
                                                §§goto(addr485);
                                             }
                                             _loc4_ = _loc2_.§9!p§();
                                             if(!_loc5_)
                                             {
                                                §§push(this);
                                                §§push(this.§6!L§);
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop() + _loc4_.§#!5§);
                                                }
                                                §§pop().§6!L§ = §§pop();
                                                §§push(_loc1_);
                                                §§push(_loc1_.x);
                                                if(_loc6_)
                                                {
                                                   §§push(_loc4_.center.x);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(§§pop() * _loc4_.§#!5§);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§pop().x = §§pop();
                                                addr190:
                                                §§push(_loc1_);
                                                §§push(_loc1_.y);
                                                if(!_loc5_)
                                                {
                                                   §§push(_loc4_.center.y);
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      §§push(§§pop() * _loc4_.§#!5§);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§pop().y = §§pop();
                                                addr230:
                                                if(_loc6_)
                                                {
                                                   §§push(this);
                                                   §§push(this.§`!k§);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(§§pop() + _loc4_.I);
                                                   }
                                                   §§pop().§`!k§ = §§pop();
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      if(_loc6_ || _loc2_)
                                                      {
                                                         addr188:
                                                         if(false)
                                                         {
                                                            §§goto(addr190);
                                                         }
                                                         §§goto(addr241);
                                                      }
                                                      §§goto(addr230);
                                                   }
                                                   §§goto(addr190);
                                                }
                                                addr240:
                                                §§goto(addr240);
                                             }
                                             §§goto(addr188);
                                          }
                                       }
                                       §§goto(addr441);
                                    }
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§push(this.§6!L§);
                                       if(!(_loc5_ && _loc1_))
                                       {
                                          §§push(0);
                                          if(!_loc5_)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                if(!_loc5_)
                                                {
                                                   this.§4!&§ = 1 / this.§6!L§;
                                                   if(!_loc5_)
                                                   {
                                                      §§push(_loc1_);
                                                      §§push(_loc1_.x);
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         §§push(§§pop() * this.§4!&§);
                                                      }
                                                      §§pop().x = §§pop();
                                                      §§goto(addr500);
                                                   }
                                                   §§goto(addr366);
                                                }
                                                §§goto(addr430);
                                             }
                                             else
                                             {
                                                this.§6!L§ = 1;
                                             }
                                             §§goto(addr440);
                                          }
                                       }
                                       §§goto(addr441);
                                    }
                                    §§goto(addr430);
                                 }
                              }
                           }
                        }
                     }
                     if(_loc6_ || _loc2_)
                     {
                        return;
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
         if(_loc5_ || _loc3_)
         {
            §§push(param1.x);
            if(_loc5_ || _loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc4_)
               {
                  addr45:
                  §§push(_loc2_.col2.x);
                  if(_loc5_ || this)
                  {
                     addr55:
                     §§push(param1.y);
                     if(_loc5_ || _loc2_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc4_)
                        {
                           addr67:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(!(_loc4_ && _loc3_))
                           {
                              §§push(param1.x);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    addr100:
                                    §§push(_loc2_.col2.y);
                                    if(!_loc4_)
                                    {
                                       addr108:
                                       §§push(§§pop() + §§pop() * param1.y);
                                    }
                                    §§goto(addr108);
                                 }
                                 var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    §§push(_loc3_);
                                    §§push(_loc3_.x);
                                    if(_loc5_ || param1)
                                    {
                                       §§push(§§pop() + this.m_xf.position.x);
                                    }
                                    §§pop().x = §§pop();
                                 }
                                 do
                                 {
                                    §§push(_loc3_);
                                    §§push(_loc3_.y);
                                    if(_loc5_)
                                    {
                                       §§push(§§pop() + this.m_xf.position.y);
                                    }
                                    §§pop().y = §§pop();
                                 }
                                 while(_loc4_);
                                 
                                 return _loc3_;
                              }
                              §§goto(addr108);
                           }
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr108);
                  }
               }
               §§goto(addr67);
            }
            §§goto(addr55);
         }
         §§goto(addr45);
      }
      
      public function §3!D§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§"]§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§5F§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§3r§(this.m_xf.R,param1);
      }
      
      public function §,$§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§?!^§.x);
         if(!(_loc2_ && this))
         {
            §§push(this.m_angularVelocity);
            if(!_loc2_)
            {
               §§push(param1.y);
               if(_loc3_ || param1)
               {
                  §§push(this.m_sweep.c.y);
                  if(!(_loc2_ && param1))
                  {
                     §§push(§§pop() - §§pop());
                     if(!_loc2_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc3_ || _loc2_)
                        {
                        }
                        §§goto(addr109);
                     }
                     addr109:
                     §§push(§§pop() - §§pop());
                     §§push(this.§?!^§.y);
                     if(_loc3_)
                     {
                        §§push(this.m_angularVelocity);
                        if(_loc3_)
                        {
                           addr83:
                           §§push(param1.x);
                           if(!(_loc2_ && _loc3_))
                           {
                              addr102:
                              §§push(§§pop() - this.m_sweep.c.x);
                           }
                           §§push(§§pop() * §§pop());
                        }
                     }
                     return new §§pop().b2Vec2(§§pop(),§§pop());
                     §§push(§§pop() + §§pop());
                  }
                  §§goto(addr102);
               }
               §§goto(addr83);
            }
         }
         §§goto(addr109);
      }
      
      public function §<M§(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(!_loc4_)
         {
            §§push(param1.x);
            if(!_loc4_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc4_ && this))
               {
                  §§push(_loc2_.col2.x);
                  if(!(_loc4_ && _loc3_))
                  {
                     addr50:
                     §§push(param1.y);
                     if(_loc5_ || this)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc4_ && _loc2_))
                        {
                           addr68:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(!_loc4_)
                           {
                              §§push(param1.x);
                              if(_loc5_ || this)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc5_)
                                 {
                                    addr85:
                                    §§push(_loc2_.col2.y);
                                    if(!_loc5_)
                                    {
                                    }
                                    addr94:
                                    var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
                                    addr93:
                                    if(_loc5_ || this)
                                    {
                                       §§push(_loc3_);
                                       §§push(_loc3_.x);
                                       if(_loc5_ || param1)
                                       {
                                          §§push(§§pop() + this.m_xf.position.x);
                                       }
                                       §§pop().x = §§pop();
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
                                       
                                    }
                                    §§push(§§findproperty(b2Vec2));
                                    §§push(this.§?!^§.x);
                                    if(_loc5_ || _loc2_)
                                    {
                                       §§push(this.m_angularVelocity);
                                       if(!(_loc4_ && this))
                                       {
                                          §§push(_loc3_.y);
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             §§push(this.m_sweep.c.y);
                                             if(_loc5_ || param1)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc5_ || _loc2_)
                                                {
                                                   §§goto(addr164);
                                                }
                                                §§goto(addr182);
                                             }
                                             §§goto(addr196);
                                          }
                                          addr164:
                                          §§push(§§pop() * §§pop());
                                          if(!_loc4_)
                                          {
                                             addr168:
                                             §§push(§§pop() - §§pop());
                                             §§push(this.§?!^§.y);
                                             if(_loc5_ || param1)
                                             {
                                                §§push(this.m_angularVelocity);
                                                if(_loc5_)
                                                {
                                                   addr182:
                                                   §§push(_loc3_.x);
                                                   if(_loc5_ || this)
                                                   {
                                                      addr196:
                                                      §§push(§§pop() * (§§pop() - this.m_sweep.c.x));
                                                   }
                                                   §§goto(addr196);
                                                }
                                             }
                                          }
                                          §§goto(addr198);
                                       }
                                       addr198:
                                       return new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
                                    }
                                    §§goto(addr168);
                                 }
                                 §§goto(addr94);
                              }
                              §§goto(addr93);
                              §§push(§§pop() * param1.y);
                           }
                        }
                     }
                  }
                  §§goto(addr85);
               }
               §§goto(addr68);
            }
            §§goto(addr50);
         }
         §§goto(addr68);
      }
      
      public function §@!F§() : Number
      {
         return this.§8!a§;
      }
      
      public function SetLinearDamping(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§8!a§ = param1;
         }
      }
      
      public function §^"$§() : Number
      {
         return this.§]!`§;
      }
      
      public function SetAngularDamping(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§]!`§ = param1;
         }
      }
      
      public function §6u§() : Number
      {
         return this.§!!T§;
      }
      
      public function SetGravityScale(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§!!T§ = param1;
         }
      }
      
      public function §6!f§(param1:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§6m§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr128:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        this.§6m§ = param1;
                        loop3:
                        while(_loc3_)
                        {
                           this.§5!Z§();
                           while(_loc3_ || this)
                           {
                              continue loop0;
                              addr59:
                              if(!(_loc4_ && _loc3_))
                              {
                                 loop7:
                                 while(true)
                                 {
                                    this.§-[§.§5!H§();
                                    while(true)
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          this.§#!K§ = 0;
                                          if(!(_loc4_ && this))
                                          {
                                             continue loop7;
                                          }
                                          continue;
                                       }
                                       addr52:
                                       while(!(_loc4_ && _loc2_))
                                       {
                                          §§goto(addr59);
                                       }
                                       addr88:
                                       loop9:
                                       while(_loc4_ && param1)
                                       {
                                          while(true)
                                          {
                                             this.m_angularVelocity = 0;
                                             continue loop9;
                                          }
                                       }
                                       while(true)
                                       {
                                          this.SetAwake(true);
                                          §§goto(addr52);
                                          §§goto(addr88);
                                       }
                                    }
                                    addr103:
                                    while(true)
                                    {
                                       this.§?!^§.§5!H§();
                                       §§goto(addr106);
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr103);
      }
      
      public function §<!A§() : uint
      {
         return this.§6m§;
      }
      
      public function §6t§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!param1)
            {
               this.§,[§ &= ~b2internal::<"+;
               if(_loc2_)
               {
                  addr67:
               }
               return;
            }
            if(_loc3_)
            {
               addr61:
               this.§,[§ |= b2internal::<"+;
            }
            §§goto(addr67);
         }
         §§goto(addr61);
      }
      
      public function §@V§() : Boolean
      {
         return (this.§,[§ & b2internal::<"+) == b2internal::<"+;
      }
      
      public function §^F§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!param1)
            {
               this.§,[§ &= ~b2internal::2!H;
               do
               {
                  this.SetAwake(true);
               }
               while(_loc2_ && this);
               
               if(!_loc2_)
               {
                  if(_loc2_)
                  {
                     addr73:
                     this.§,[§ |= b2internal::2!H;
                     addr79:
                  }
                  return;
               }
               §§goto(addr79);
            }
         }
         §§goto(addr73);
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!param1)
            {
               this.§,[§ &= ~b2internal:: !];
               loop0:
               while(true)
               {
                  this.§'L§ = 0;
                  addr89:
                  loop1:
                  while(true)
                  {
                     this.§?!^§.§5!H§();
                     while(true)
                     {
                        this.m_angularVelocity = 0;
                        loop3:
                        while(_loc3_)
                        {
                           this.§-[§.§5!H§();
                           while(true)
                           {
                              if(_loc3_ || this)
                              {
                                 if(_loc3_)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                           }
                           return;
                        }
                        addr124:
                        this.§'L§ = 0;
                        §§goto(addr105);
                        if(_loc2_ && _loc3_)
                        {
                           continue;
                        }
                        if(!_loc3_)
                        {
                           continue loop1;
                        }
                        if(!_loc3_)
                        {
                           addr118:
                           this.§,[§ |= b2internal:: !];
                           §§goto(addr124);
                        }
                        §§goto(addr105);
                     }
                  }
               }
            }
            §§goto(addr118);
         }
         §§goto(addr89);
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§,[§ & b2internal:: !]) == b2internal:: !];
      }
      
      public function §'!N§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1)
            {
               if(!(_loc2_ && _loc3_))
               {
                  this.§,[§ |= b2internal::1!?;
                  addr83:
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        this.§5!Z§();
                        if(!(_loc3_ || this))
                        {
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 continue loop2;
                              }
                              continue loop1;
                           }
                           addr55:
                        }
                        return;
                     }
                  }
                  addr83:
               }
               §§goto(addr83);
            }
            else
            {
               this.§,[§ &= ~b2internal::1!?;
            }
            §§goto(addr55);
         }
         §§goto(addr83);
      }
      
      public function §#a§() : Boolean
      {
         return (this.§,[§ & b2internal::1!?) == b2internal::1!?;
      }
      
      public function §+E§(param1:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§`c§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(_loc6_)
         {
            §§push(param1);
            if(!_loc7_)
            {
               if(§§pop() == this.§3!z§())
               {
                  if(!(_loc7_ && this))
                  {
                     return;
                  }
                  addr46:
                  §§push(param1);
               }
               §§goto(addr46);
            }
            if(§§pop())
            {
               if(!(_loc7_ && this))
               {
                  this.§,[§ |= b2internal::6!Q;
               }
               _loc2_ = this.m_world.§1C§.§9!V§;
               _loc3_ = this.§'e§;
               while(_loc3_)
               {
                  _loc3_.§]!J§(_loc2_,this.m_xf);
                  if(!(_loc6_ || _loc3_))
                  {
                     break;
                  }
                  _loc3_ = _loc3_.§0!>§;
               }
            }
            else
            {
               this.§,[§ &= ~b2internal::6!Q;
               _loc2_ = this.m_world.§1C§.§9!V§;
               _loc3_ = this.§'e§;
               if(!_loc7_)
               {
                  loop0:
                  while(_loc3_)
                  {
                     _loc3_.§5!k§(_loc2_);
                     if(!(_loc6_ || param1))
                     {
                        break;
                     }
                     while(true)
                     {
                        _loc3_ = _loc3_.§0!>§;
                        continue loop0;
                     }
                  }
                  _loc4_ = this.§]J§;
                  if(_loc6_ || this)
                  {
                     while(_loc4_)
                     {
                        _loc5_ = _loc4_;
                        _loc4_ = _loc4_.next;
                        if(_loc6_)
                        {
                           this.m_world.§1C§.§5f§(_loc5_.§;%§);
                        }
                     }
                     if(_loc6_ || param1)
                     {
                        this.§]J§ = null;
                     }
                  }
                  §§goto(addr189);
               }
               §§goto(addr133);
            }
            addr189:
            return;
         }
         §§goto(addr46);
      }
      
      public function §3!z§() : Boolean
      {
         return (this.§,[§ & b2internal::6!Q) == b2internal::6!Q;
      }
      
      public function §1![§() : Boolean
      {
         return (this.§,[§ & b2internal::2!H) == b2internal::2!H;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§'e§;
      }
      
      public function GetJointList() : b2JointEdge
      {
         return this.§4!Z§;
      }
      
      public function §[!^§() : b2ControllerEdge
      {
         return this.§9"&§;
      }
      
      public function §9'§() : b2ContactEdge
      {
         return this.§]J§;
      }
      
      public function §>X§() : b2Body
      {
         return this.§0!>§;
      }
      
      public function GetUserData() : *
      {
         return this.§ D§;
      }
      
      public function SetUserData(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§ D§ = param1;
         }
      }
      
      public function §7!$§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §[!r§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §1!=§;
         if(!(_loc7_ && this))
         {
            §§push(_loc1_.R);
            if(_loc6_ || _loc2_)
            {
               §§pop().Set(this.m_sweep.a0);
               addr42:
               §§push(_loc1_.R);
            }
            var _loc2_:b2Mat22 = §§pop();
            var _loc3_:b2Vec2 = this.m_sweep.localCenter;
            if(!(_loc7_ && _loc1_))
            {
               §§push(_loc1_.position);
               if(_loc6_ || _loc1_)
               {
                  §§push(this.m_sweep);
                  if(!(_loc7_ && this))
                  {
                     §§push(§§pop().c0);
                     if(!_loc7_)
                     {
                        §§push(§§pop().x);
                        if(!(_loc7_ && _loc3_))
                        {
                           §§push(_loc2_.col1);
                           if(!(_loc7_ && _loc3_))
                           {
                              §§push(§§pop().x);
                              if(_loc6_ || _loc3_)
                              {
                                 §§push(_loc3_.x);
                                 if(_loc6_ || _loc1_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc7_)
                                    {
                                       §§push(_loc2_.col2);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc6_)
                                          {
                                             addr133:
                                             §§push(_loc3_.y);
                                             if(!(_loc7_ && _loc1_))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc6_ || _loc1_)
                                                {
                                                   addr150:
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc7_ && _loc2_))
                                                   {
                                                      addr158:
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc6_)
                                                      {
                                                         §§goto(addr161);
                                                      }
                                                      §§goto(addr214);
                                                   }
                                                   §§goto(addr187);
                                                }
                                             }
                                             §§goto(addr212);
                                          }
                                          §§goto(addr150);
                                       }
                                       §§goto(addr201);
                                    }
                                    §§goto(addr187);
                                 }
                                 §§goto(addr133);
                              }
                              §§goto(addr158);
                           }
                           §§goto(addr179);
                        }
                        addr161:
                        §§pop().x = §§pop();
                        if(!(_loc7_ && this))
                        {
                           addr174:
                           §§push(_loc1_.position);
                           §§push(this.m_sweep.c0.y);
                           if(!_loc7_)
                           {
                              addr179:
                              §§push(_loc2_.col1.y);
                              if(_loc6_ || this)
                              {
                                 addr187:
                                 §§push(_loc3_.x);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc6_ || this)
                                    {
                                       addr201:
                                       §§push(_loc2_.col2.y);
                                       if(_loc6_ || _loc2_)
                                       {
                                          addr212:
                                          §§push(§§pop() + §§pop() * _loc3_.y);
                                       }
                                       §§goto(addr212);
                                    }
                                 }
                                 §§goto(addr212);
                              }
                              addr214:
                              §§pop().y = §§pop() - §§pop();
                           }
                           §§goto(addr214);
                        }
                        var _loc5_:§`c§ = this.m_world.§1C§.§9!V§;
                        _loc4_ = this.§'e§;
                        while(_loc4_)
                        {
                           _loc4_.§[!$§(_loc5_,_loc1_,this.m_xf);
                           if(_loc7_)
                           {
                              break;
                           }
                           _loc4_ = _loc4_.§0!>§;
                        }
                        return;
                     }
                  }
               }
            }
            §§goto(addr174);
         }
         §§goto(addr42);
      }
      
      b2internal function §-F§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §§push(this.m_xf);
            if(!_loc3_)
            {
               §§push(§§pop().R);
               if(_loc4_ || _loc2_)
               {
                  §§pop().Set(this.m_sweep.a);
                  addr42:
                  §§push(this.m_xf.R);
               }
               var _loc1_:b2Mat22 = §§pop();
               var _loc2_:b2Vec2 = this.m_sweep.localCenter;
               if(!_loc3_)
               {
                  §§push(this.m_xf);
                  loop0:
                  while(true)
                  {
                     §§push(§§pop().position);
                     addr181:
                     while(true)
                     {
                        §§push(this.m_sweep);
                        addr183:
                        while(true)
                        {
                           §§push(§§pop().c);
                           addr184:
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr185:
                              while(true)
                              {
                                 §§push(_loc1_.col1);
                                 addr187:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    addr188:
                                    while(true)
                                    {
                                       §§push(_loc2_.x);
                                       addr190:
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          addr191:
                                          while(true)
                                          {
                                             §§push(_loc1_.col2);
                                             addr203:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr204:
                                                while(true)
                                                {
                                                   §§push(_loc2_.y);
                                                   addr206:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      addr207:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         addr208:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            addr209:
                                                            while(true)
                                                            {
                                                               §§pop().x = §§pop();
                                                               continue loop0;
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
                  }
               }
               §§goto(addr177);
            }
         }
         §§goto(addr42);
      }
      
      b2internal function §%g§(param1:b2Body) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this.§6m§);
            if(_loc3_ || this)
            {
               §§push(b2_dynamicBody);
               if(!_loc4_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc3_)
                  {
                     §§push(!§§pop());
                     if(!(_loc4_ && _loc2_))
                     {
                        addr46:
                        if(§§pop())
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              §§pop();
                              if(_loc3_)
                              {
                                 addr61:
                                 §§push(param1.§6m§ == b2_dynamicBody);
                                 if(_loc3_ || param1)
                                 {
                                    §§goto(addr79);
                                 }
                                 §§goto(addr82);
                              }
                              var _loc2_:b2JointEdge = this.§4!Z§;
                              for(; _loc2_; _loc2_ = _loc2_.next)
                              {
                                 if(_loc2_.§-!3§ == param1)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§push(_loc2_.§`!g§.§>!!§);
                                       if(!_loc4_)
                                       {
                                          if(§§pop() != false)
                                          {
                                             continue;
                                          }
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          §§push(false);
                                          if(!(_loc3_ || _loc2_))
                                          {
                                             §§goto(addr146);
                                          }
                                       }
                                       return §§pop();
                                    }
                                    break;
                                 }
                              }
                              addr146:
                              return §§pop();
                              §§push(true);
                           }
                           addr79:
                           §§push(!§§pop());
                           if(!_loc4_)
                           {
                              addr82:
                              if(§§pop())
                              {
                                 if(!(_loc4_ && param1))
                                 {
                                    §§goto(addr91);
                                 }
                              }
                           }
                           §§goto(addr91);
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr46);
               }
            }
            §§goto(addr61);
         }
         addr91:
         return false;
      }
      
      b2internal function §#!§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.m_sweep);
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§pop().§#!§(§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(this.m_sweep);
                     while(!_loc2_)
                     {
                        §§pop().c.SetV(this.m_sweep.c0);
                        while(true)
                        {
                           §§push(this.m_sweep);
                           if(!(_loc3_ || _loc2_))
                           {
                              break;
                           }
                           §§push(this.m_sweep.a0);
                           if(!(_loc2_ && _loc3_))
                           {
                              §§pop().a = §§pop();
                              while(!_loc2_)
                              {
                                 this.§-F§();
                                 if(_loc3_ || _loc2_)
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       break loop2;
                                    }
                                    continue loop2;
                                 }
                              }
                              continue;
                           }
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
   }
}

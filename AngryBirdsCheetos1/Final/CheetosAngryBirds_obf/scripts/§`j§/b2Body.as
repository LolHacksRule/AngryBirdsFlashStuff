package §`j§
{
   import §&U§.b2EdgeShape;
   import §&U§.b2MassData;
   import §&U§.b2Shape;
   import §0!G§.b2Mat22;
   import §0!G§.b2Math;
   import §0!G§.b2Sweep;
   import §0!G§.b2Transform;
   import §0!G§.b2Vec2;
   import §2!+§.b2ControllerEdge;
   import §2!F§.b2Settings;
   import §2!F§.b2internal;
   import §8Y§.b2Contact;
   import §8Y§.b2ContactEdge;
   import §9"§.§>![§;
   import §[!8§.b2JointEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §6z§:b2Transform;
      
      b2internal static var §finally§:uint = 1;
      
      b2internal static var §=!§:uint = 2;
      
      b2internal static var §&!?§:uint = 4;
      
      b2internal static var §>!N§:uint = 8;
      
      b2internal static var §%!0§:uint = 16;
      
      b2internal static var §&!N§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §6z§ = new b2Transform();
            loop0:
            while(true)
            {
               §finally§ = 1;
               loop1:
               while(true)
               {
                  §=!§ = 2;
                  while(true)
                  {
                     §&!?§ = 4;
                     loop3:
                     while(true)
                     {
                        §>!N§ = 8;
                        addr101:
                        while(true)
                        {
                           §%!0§ = 16;
                           continue loop3;
                        }
                     }
                     if(_loc1_ && _loc2_)
                     {
                        continue;
                     }
                     §&!N§ = 32;
                     loop6:
                     while(true)
                     {
                        b2_staticBody = 0;
                        loop7:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              if(_loc1_)
                              {
                                 break;
                              }
                              b2_kinematicBody = 1;
                              while(!_loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    b2_dynamicBody = 2;
                                    if(_loc1_)
                                    {
                                       continue;
                                    }
                                    if(_loc1_)
                                    {
                                       continue loop7;
                                    }
                                    §§goto(addr37);
                                    continue;
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           continue loop6;
                        }
                        §§goto(addr101);
                     }
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      b2internal var §@x§:uint;
      
      b2internal var §8!J§:int;
      
      b2internal var §^V§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §,?§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §1!1§:b2Vec2;
      
      b2internal var §3!S§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §8`§:b2Body;
      
      b2internal var §#!&§:b2Body;
      
      b2internal var §#j§:b2Fixture;
      
      b2internal var §+![§:int;
      
      b2internal var §6V§:b2ControllerEdge;
      
      b2internal var §+!V§:int;
      
      b2internal var §1v§:b2JointEdge;
      
      b2internal var §=-§:b2ContactEdge;
      
      b2internal var §3!7§:Number;
      
      b2internal var §#!D§:Number;
      
      b2internal var §8S§:Number;
      
      b2internal var §?8§:Number;
      
      b2internal var §2!&§:Number;
      
      b2internal var §-Z§:Number;
      
      b2internal var §3p§:Number;
      
      b2internal var §&Q§:Number;
      
      private var §'8§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && _loc3_))
         {
            this.m_xf = new b2Transform();
            loop0:
            while(true)
            {
               this.m_sweep = new b2Sweep();
               loop1:
               while(true)
               {
                  this.§,?§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§1!1§ = new b2Vec2();
                     addr263:
                     while(true)
                     {
                        super();
                        loop4:
                        while(true)
                        {
                           this.§@x§ = 0;
                           loop5:
                           while(true)
                           {
                              §§push(param1.§<!;§);
                              loop6:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(!_loc6_)
                                    {
                                       this.§@x§ |= b2internal::>!N;
                                       while(true)
                                       {
                                       }
                                    }
                                    continue loop1;
                                    addr240:
                                 }
                                 while(true)
                                 {
                                    §§push(param1.§<K§);
                                    loop10:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             this.§@x§ |= b2internal::%!0;
                                             addr235:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr229:
                                       }
                                       while(true)
                                       {
                                          §§push(param1.§9W§);
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(_loc7_)
                                                {
                                                   this.§@x§ |= b2internal::&!?;
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                §§goto(addr235);
                                                addr216:
                                             }
                                             while(true)
                                             {
                                                §§push(param1.§0-§);
                                                continue loop10;
                                             }
                                             addr159:
                                             if(!(_loc7_ || param2))
                                             {
                                                continue;
                                             }
                                             if(!_loc7_)
                                             {
                                                continue loop6;
                                             }
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   this.§@x§ |= b2internal::&!N;
                                                   addr175:
                                                   addr200:
                                                   loop22:
                                                   while(true)
                                                   {
                                                      if(!(_loc7_ || this))
                                                      {
                                                         while(true)
                                                         {
                                                            this.§@x§ |= b2internal::=!;
                                                            break loop22;
                                                         }
                                                         addr194:
                                                      }
                                                   }
                                                   addr111:
                                                   while(true)
                                                   {
                                                      if(!(_loc6_ && this))
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               break;
                                                               addr149:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(param1.§3?§);
                                                               if(_loc6_ && this)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr159);
                                                            }
                                                            continue loop10;
                                                         }
                                                         §§goto(addr248);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr229);
                                                      }
                                                   }
                                                   continue loop2;
                                                   if(!(_loc7_ || param1))
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc7_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   §§push(this.m_xf);
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      §§push(§§pop().R);
                                                      if(!_loc6_)
                                                      {
                                                         §§pop().Set(param1.angle);
                                                         while(_loc7_)
                                                         {
                                                            if(_loc7_ || _loc3_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            §§goto(addr175);
                                                         }
                                                         while(true)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               if(_loc7_ || param1)
                                                               {
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  §§goto(addr216);
                                                               }
                                                               §§goto(addr224);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr200);
                                                            }
                                                         }
                                                         addr296:
                                                         var _loc3_:b2Mat22 = §§pop().R;
                                                         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
                                                         if(_loc7_)
                                                         {
                                                            addr833:
                                                            this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
                                                            addr834:
                                                            addr813:
                                                            addr815:
                                                            addr832:
                                                            addr826:
                                                            addr831:
                                                            addr828:
                                                            addr829:
                                                            addr812:
                                                            addr810:
                                                            §§push(this.m_sweep);
                                                            if(_loc7_ || param1)
                                                            {
                                                               addr758:
                                                               §§push(§§pop().c);
                                                               if(_loc7_ || this)
                                                               {
                                                                  §§push(_loc3_.col1);
                                                                  if(_loc7_)
                                                                  {
                                                                     addr770:
                                                                     §§push(§§pop().y);
                                                                     §§push(_loc4_.x);
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc7_ || _loc3_)
                                                                        {
                                                                           §§push(_loc3_.col2);
                                                                           if(_loc7_ || param2)
                                                                           {
                                                                              addr792:
                                                                              §§push(§§pop().y);
                                                                              §§push(_loc4_.y);
                                                                              if(!(_loc6_ && param2))
                                                                              {
                                                                                 addr802:
                                                                                 §§push(§§pop() + §§pop() * §§pop());
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§pop().y = §§pop();
                                                                                    addr806:
                                                                                    §§push(this.m_sweep.c);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr689:
                                                                                       §§push(this.m_sweep.c.x);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          if(_loc7_ || param1)
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                addr705:
                                                                                                §§push(this.m_xf.position.x);
                                                                                                if(!(_loc6_ && param2))
                                                                                                {
                                                                                                   if(_loc7_ || param2)
                                                                                                   {
                                                                                                      if(!(_loc6_ && _loc3_))
                                                                                                      {
                                                                                                         if(!(_loc6_ && this))
                                                                                                         {
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               addr736:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  if(!(_loc6_ && param2))
                                                                                                                  {
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     addr746:
                                                                                                                     §§push(this.m_sweep);
                                                                                                                     if(_loc7_ || param2)
                                                                                                                     {
                                                                                                                        if(!(_loc6_ && param1))
                                                                                                                        {
                                                                                                                           §§push(§§pop().c);
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              §§push(this.m_sweep);
                                                                                                                              if(_loc7_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().c);
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().y);
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc6_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(this.m_xf);
                                                                                                                                          if(!(_loc6_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().position);
                                                                                                                                             if(_loc7_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                if(_loc7_ || param1)
                                                                                                                                                {
                                                                                                                                                   addr678:
                                                                                                                                                   §§pop().y = §§pop() + §§pop();
                                                                                                                                                   addr679:
                                                                                                                                                   §§push(this.m_sweep);
                                                                                                                                                   if(!(_loc6_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§pop().c0.SetV(this.m_sweep.c);
                                                                                                                                                      this.§1v§ = null;
                                                                                                                                                      this.§6V§ = null;
                                                                                                                                                      addr593:
                                                                                                                                                      addr609:
                                                                                                                                                      if(!(_loc6_ && param1))
                                                                                                                                                      {
                                                                                                                                                         this.§=-§ = null;
                                                                                                                                                         addr574:
                                                                                                                                                         if(!_loc6_)
                                                                                                                                                         {
                                                                                                                                                            this.§+!V§ = 0;
                                                                                                                                                            this.§8`§ = null;
                                                                                                                                                            this.§#!&§ = null;
                                                                                                                                                            this.§,?§.SetV(param1.§^!T§);
                                                                                                                                                            this.m_angularVelocity = param1.§6s§;
                                                                                                                                                            addr554:
                                                                                                                                                            addr564:
                                                                                                                                                            addr569:
                                                                                                                                                            addr559:
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               this.§-Z§ = param1.§+!9§;
                                                                                                                                                               this.§3p§ = param1.§?!'§;
                                                                                                                                                               addr526:
                                                                                                                                                               addr539:
                                                                                                                                                               if(_loc7_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  this.§1!1§.Set(0,0);
                                                                                                                                                                  addr513:
                                                                                                                                                                  if(_loc7_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     this.§3!S§ = 0;
                                                                                                                                                                     this.§&Q§ = 0;
                                                                                                                                                                     addr506:
                                                                                                                                                                     if(!(_loc6_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           this.§8!J§ = param1.type;
                                                                                                                                                                           addr487:
                                                                                                                                                                           if(this.§8!J§ == b2_dynamicBody)
                                                                                                                                                                           {
                                                                                                                                                                              addr457:
                                                                                                                                                                              if(!(_loc6_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 this.§3!7§ = 1;
                                                                                                                                                                                 addr467:
                                                                                                                                                                                 if(_loc7_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc7_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§#!D§ = 1;
                                                                                                                                                                                       addr444:
                                                                                                                                                                                       if(_loc7_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr384:
                                                                                                                                                                                          this.§8S§ = 0;
                                                                                                                                                                                          if(_loc7_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc6_)
                                                                                                                                                                                             {
                                                                                                                                                                                                this.§?8§ = 0;
                                                                                                                                                                                                addr379:
                                                                                                                                                                                                if(_loc7_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.§2!&§ = param1.§'!>§;
                                                                                                                                                                                                      addr360:
                                                                                                                                                                                                      if(!(_loc6_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc6_ && param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            this.§'8§ = param1.§4!E§;
                                                                                                                                                                                                            addr352:
                                                                                                                                                                                                            if(_loc7_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this.§#j§ = null;
                                                                                                                                                                                                               addr325:
                                                                                                                                                                                                               if(!(_loc6_ && param2))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc6_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc7_ || param2)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.§+![§ = 0;
                                                                                                                                                                                                                        if(_loc7_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr526);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              return;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr352);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr325);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr554);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr444);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr379);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr360);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr487);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr402:
                                                                                                                                                                                                      if(_loc7_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc6_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc7_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr384);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr513);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr457);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            this.§#!D§ = 0;
                                                                                                                                                                                                            §§goto(addr402);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr539);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr467);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr564);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr384);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr593);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr574);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr569);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr506);
                                                                                                                                                                           }
                                                                                                                                                                           this.§3!7§ = 0;
                                                                                                                                                                           §§goto(addr402);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr609);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr554);
                                                                                                                                                                     addr520:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr559);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr806);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr679);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr746);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr834);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr746);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr705);
                                                                                                                                       }
                                                                                                                                       §§goto(addr736);
                                                                                                                                    }
                                                                                                                                    §§goto(addr678);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr689);
                                                                                                                           }
                                                                                                                           §§goto(addr806);
                                                                                                                        }
                                                                                                                        §§goto(addr834);
                                                                                                                     }
                                                                                                                     §§goto(addr806);
                                                                                                                  }
                                                                                                                  §§goto(addr813);
                                                                                                               }
                                                                                                               §§goto(addr770);
                                                                                                            }
                                                                                                            §§goto(addr815);
                                                                                                         }
                                                                                                         §§goto(addr832);
                                                                                                      }
                                                                                                      §§goto(addr770);
                                                                                                   }
                                                                                                   §§goto(addr792);
                                                                                                }
                                                                                                §§goto(addr802);
                                                                                             }
                                                                                             §§goto(addr826);
                                                                                          }
                                                                                          §§goto(addr802);
                                                                                       }
                                                                                       §§goto(addr736);
                                                                                    }
                                                                                    §§goto(addr758);
                                                                                 }
                                                                                 §§goto(addr833);
                                                                              }
                                                                              §§goto(addr831);
                                                                           }
                                                                           §§goto(addr828);
                                                                        }
                                                                        §§goto(addr802);
                                                                     }
                                                                     §§goto(addr829);
                                                                  }
                                                                  §§goto(addr812);
                                                               }
                                                               §§goto(addr810);
                                                            }
                                                            addr809:
                                                            §§goto(addr809);
                                                         }
                                                         addr125:
                                                         addr73:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr296);
                                                      }
                                                      §§goto(addr520);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr296);
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                this.m_world = param2;
                                                §§goto(addr125);
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
         §§goto(addr224);
      }
      
      private function §6J§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:Number = Math.atan2(param2.§<N§().y,param2.§<N§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§ X§(_loc5_,param2.§<N§());
         _loc6_ = b2Math.§4_§(_loc6_,param2.§3c§());
         _loc6_ = b2Math.§ X§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§do §(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§do §(param1.§<N§(),param2.§<N§())).Normalize();
         var _loc8_:* = b2Math.static(param1.§<N§(),param2.§3c§()) > 0;
         if(!(_loc9_ && this))
         {
            param1.§ !-§(param2,_loc6_,_loc7_,_loc8_);
            do
            {
               param2.§1!H§(param1,_loc6_,_loc7_,_loc8_);
            }
            while(!(_loc10_ || param2));
            
         }
         return _loc4_;
      }
      
      public function §!"§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§>![§ = null;
         if(_loc7_)
         {
            if(this.m_world.§'E§() == true)
            {
               if(!_loc6_)
               {
                  return null;
               }
            }
         }
         var _loc2_:b2Fixture = new b2Fixture();
         if(!_loc6_)
         {
            _loc2_.§>y§(this,this.m_xf,param1);
            if(!_loc6_)
            {
               if(this.§@x§ & b2internal::&!N)
               {
                  if(!_loc6_)
                  {
                     §§push(this.m_world);
                     if(_loc7_)
                     {
                        _loc3_ = §§pop().§7-§.§;!=§;
                        if(!_loc6_)
                        {
                           _loc2_.§case§(_loc3_,this.m_xf);
                           addr67:
                           _loc2_.§#!&§ = this.§#j§;
                           if(_loc7_ || this)
                           {
                              addr88:
                              this.§#j§ = _loc2_;
                              if(!(_loc6_ && _loc3_))
                              {
                                 var _loc4_:*;
                                 §§push((_loc4_ = this).§+![§);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc5_:* = §§pop();
                                 if(!(_loc6_ && this))
                                 {
                                    _loc4_.§+![§ = _loc5_;
                                 }
                                 if(_loc6_)
                                 {
                                 }
                                 while(true)
                                 {
                                    this.§&=§();
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(this.m_world);
                                          §§goto(addr129);
                                       }
                                    }
                                 }
                                 addr165:
                              }
                              _loc2_.m_body = this;
                              §§goto(addr171);
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr67);
                     }
                     addr129:
                     §§goto(addr147);
                  }
                  §§goto(addr88);
               }
               §§goto(addr67);
            }
            addr147:
            while(true)
            {
               §§push(this.m_world.§@x§);
               if(_loc7_)
               {
                  §§push(§§pop() | b2World.§5S§);
               }
               §§pop().§@x§ = §§pop();
               if(!(_loc7_ || param1))
               {
                  continue loop2;
               }
               if(!_loc6_)
               {
                  break;
               }
               addr171:
               while(true)
               {
                  if(_loc2_.§4U§ > 0)
                  {
                     if(!_loc6_)
                     {
                        continue loop1;
                     }
                     continue loop2;
                  }
                  continue loop3;
               }
               continue loop3;
            }
            return _loc2_;
         }
         §§goto(addr171);
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         if(_loc5_)
         {
            _loc3_.shape = param1;
         }
         do
         {
            _loc3_.density = param2;
         }
         while(!(_loc5_ || param2));
         
         return this.§!"§(_loc3_);
      }
      
      public function § each§(param1:b2Fixture) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§>![§ = null;
         if(_loc12_)
         {
            if(this.m_world.§'E§() == true)
            {
               if(_loc12_ || param1)
               {
                  return;
               }
            }
         }
         var _loc2_:b2Fixture = this.§#j§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         loop0:
         for(; _loc2_ != null; _loc3_ = _loc2_,_loc2_ = _loc2_.§#!&§)
         {
            if(_loc2_ != param1)
            {
               continue;
            }
            loop1:
            while(!_loc3_)
            {
               this.§#j§ = param1.§#!&§;
               if(!_loc12_)
               {
                  break loop0;
               }
               if(!(_loc12_ || _loc3_))
               {
                  continue;
               }
               loop3:
               while(true)
               {
                  _loc4_ = true;
                  if(_loc12_)
                  {
                     if(!_loc13_)
                     {
                        if(!(_loc12_ || _loc3_))
                        {
                           break loop1;
                        }
                        if(true)
                        {
                           break loop0;
                        }
                        continue;
                     }
                     while(true)
                     {
                        continue loop3;
                     }
                     addr97:
                  }
                  break loop0;
               }
            }
            while(true)
            {
               _loc3_.§#!&§ = param1.§#!&§;
               §§goto(addr97);
            }
         }
         var _loc5_:b2ContactEdge = this.§=-§;
         if(!(_loc13_ && this))
         {
            while(_loc5_)
            {
               _loc6_ = _loc5_.§"!$§;
               _loc5_ = _loc5_.§%Y§;
               _loc7_ = _loc6_.§&^§();
               _loc8_ = _loc6_.§7I§();
               if(_loc12_ || _loc2_)
               {
                  §§push(param1 == _loc7_);
                  if(!_loc13_)
                  {
                     if(!§§pop())
                     {
                        if(_loc12_)
                        {
                           addr164:
                           §§pop();
                           if(_loc13_)
                           {
                              continue;
                           }
                           addr167:
                           §§push(param1 == _loc8_);
                        }
                     }
                     if(§§pop())
                     {
                        if(!(_loc13_ && _loc3_))
                        {
                           this.m_world.§7-§.§;@§(_loc6_);
                        }
                     }
                     continue;
                  }
                  §§goto(addr164);
               }
               §§goto(addr167);
            }
            if(!_loc13_)
            {
               if(this.§@x§ & b2internal::&!N)
               {
                  if(_loc12_ || _loc2_)
                  {
                     _loc9_ = this.m_world.§7-§.§;!=§;
                     if(!(_loc13_ && param1))
                     {
                        param1.§^<§(_loc9_);
                     }
                  }
                  §§goto(addr234);
               }
               param1.§;@§();
               if(_loc12_ || param1)
               {
                  param1.m_body = null;
                  if(_loc12_ || this)
                  {
                     §§goto(addr234);
                  }
                  §§goto(addr239);
               }
               §§goto(addr234);
            }
            addr234:
            param1.§#!&§ = null;
            if(!_loc13_)
            {
               addr239:
               var _loc10_:*;
               §§push((_loc10_ = this).§+![§);
               if(!_loc13_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc11_:* = §§pop();
               if(_loc12_ || this)
               {
                  _loc10_.§+![§ = _loc11_;
               }
               if(_loc12_)
               {
                  addr271:
                  this.§&=§();
               }
            }
            return;
         }
         §§goto(addr271);
      }
      
      public function §,R§(param1:b2Vec2, param2:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:b2Fixture = null;
         if(_loc8_)
         {
            if(this.m_world.§'E§() == true)
            {
               if(_loc8_ || this)
               {
                  return;
               }
               addr75:
               while(true)
               {
               }
               addr75:
            }
            while(true)
            {
               §§push(this.m_xf);
               if(_loc8_ || _loc3_)
               {
                  §§push(§§pop().R);
                  if(!_loc9_)
                  {
                     §§pop().Set(param2);
                     while(true)
                     {
                        if(!(_loc9_ && param2))
                        {
                           §§push(this.m_xf);
                           if(_loc9_)
                           {
                              break;
                           }
                           continue;
                        }
                        §§goto(addr75);
                     }
                     addr78:
                     §§push(§§pop().R);
                  }
                  var _loc4_:b2Mat22 = §§pop();
                  var _loc5_:b2Vec2 = this.m_sweep.localCenter;
                  if(!(_loc9_ && this))
                  {
                     §§push(this.m_sweep);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop().c);
                        loop3:
                        while(true)
                        {
                           §§push(_loc4_.col1);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop().x);
                              loop5:
                              while(true)
                              {
                                 §§push(_loc5_.x);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    loop7:
                                    while(true)
                                    {
                                       §§push(_loc4_.col2);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          loop9:
                                          while(true)
                                          {
                                             §§push(_loc5_.y);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§pop().x = §§pop();
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(this.m_sweep);
                                                         loop14:
                                                         while(!_loc9_)
                                                         {
                                                            §§push(§§pop().c);
                                                            loop15:
                                                            while(!(_loc9_ && this))
                                                            {
                                                               §§push(_loc4_.col1);
                                                               if(!_loc9_)
                                                               {
                                                                  §§push(§§pop().y);
                                                                  if(!(_loc9_ && param2))
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     if(_loc9_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     §§push(_loc5_.x);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_.col2);
                                                                     if(!_loc8_)
                                                                     {
                                                                        break;
                                                                        addr320:
                                                                     }
                                                                     §§push(§§pop().y);
                                                                     if(!(_loc9_ && this))
                                                                     {
                                                                        §§push(_loc5_.y);
                                                                        if(!(_loc8_ || _loc3_))
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                     while(!(_loc9_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           §§pop().y = §§pop();
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.m_sweep);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().c);
                                                                                 loop22:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.m_sweep);
                                                                                    addr246:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().c);
                                                                                       addr247:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          addr248:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                continue loop19;
                                                                                             }
                                                                                             if(_loc9_ && param2)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(this.m_xf);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().position);
                                                                                                addr260:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   addr261:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      addr262:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().x = §§pop();
                                                                                                         addr263:
                                                                                                         addr350:
                                                                                                         loop30:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.m_sweep);
                                                                                                                  addr134:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().c);
                                                                                                                        if(!(_loc9_ && this))
                                                                                                                        {
                                                                                                                           if(_loc9_ && param1)
                                                                                                                           {
                                                                                                                              continue loop15;
                                                                                                                           }
                                                                                                                           §§push(this.m_sweep);
                                                                                                                           if(_loc8_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().c);
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().y);
                                                                                                                                 if(!(_loc9_ && this))
                                                                                                                                 {
                                                                                                                                    if(_loc8_ || param1)
                                                                                                                                    {
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          §§push(this.m_xf);
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().position);
                                                                                                                                             if(!(_loc9_ && param2))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                if(_loc8_ || this)
                                                                                                                                                {
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            continue loop11;
                                                                                                                                                         }
                                                                                                                                                         if(!(_loc8_ || param2))
                                                                                                                                                         {
                                                                                                                                                            continue loop9;
                                                                                                                                                         }
                                                                                                                                                         addr224:
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(_loc8_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                            if(_loc8_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.m_sweep);
                                                                                                                                                               if(_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc8_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr106);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr134);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr350);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr359);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr298);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr297);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr320);
                                                                                                                                                }
                                                                                                                                                §§goto(addr261);
                                                                                                                                             }
                                                                                                                                             §§goto(addr260);
                                                                                                                                          }
                                                                                                                                          §§goto(addr259);
                                                                                                                                       }
                                                                                                                                       §§goto(addr248);
                                                                                                                                    }
                                                                                                                                    §§goto(addr262);
                                                                                                                                 }
                                                                                                                                 §§goto(addr224);
                                                                                                                              }
                                                                                                                              §§goto(addr247);
                                                                                                                           }
                                                                                                                           §§goto(addr246);
                                                                                                                           continue loop15;
                                                                                                                        }
                                                                                                                        continue loop22;
                                                                                                                     }
                                                                                                                     continue loop14;
                                                                                                                  }
                                                                                                                  addr127:
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     if(true)
                                                                                                                     {
                                                                                                                        §§push(this.m_sweep);
                                                                                                                     }
                                                                                                                     continue;
                                                                                                                     break loop30;
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         §§pop().a0 = this.m_sweep.a = param2;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop7;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr106:
                                                                                 if(_loc8_ || param2)
                                                                                 {
                                                                                    §§pop().c0.SetV(this.m_sweep.c);
                                                                                    if(!(_loc9_ && this))
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          §§goto(addr127);
                                                                                       }
                                                                                       §§goto(addr263);
                                                                                    }
                                                                                    §§goto(addr359);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  continue loop8;
                                                                  addr298:
                                                               }
                                                               continue loop4;
                                                            }
                                                            continue loop3;
                                                         }
                                                         continue loop2;
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
                  addr359:
                  var _loc6_:§>![§ = this.m_world.§7-§.§;!=§;
                  _loc3_ = this.§#j§;
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        if(!_loc9_)
                        {
                           this.m_world.§7-§.§&k§();
                           break;
                        }
                        break;
                     }
                     _loc3_.§=!P§(_loc6_,this.m_xf,this.m_xf);
                     if(_loc9_ && param1)
                     {
                        break;
                     }
                     _loc3_ = _loc3_.§#!&§;
                  }
                  return;
               }
               §§goto(addr78);
            }
         }
         §§goto(addr75);
      }
      
      public function §!!]§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,R§(param1.position,param1.GetAngle());
         }
      }
      
      public function §4!P§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §%!U§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,R§(param1,this.GetAngle());
         }
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function § !K§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§,R§(this.GetPosition(),param1);
         }
      }
      
      public function §2!K§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §8c§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§8!J§ != b2_staticBody)
            {
               loop0:
               while(true)
               {
                  this.§,?§.SetV(param1);
                  if(_loc3_)
                  {
                     break;
                  }
                  addr59:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(_loc3_)
               {
                  return;
               }
            }
            return;
         }
         §§goto(addr59);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§,?§;
      }
      
      public function §4K§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§8!J§ != b2_staticBody)
            {
               loop0:
               while(true)
               {
                  this.m_angularVelocity = param1;
                  if(!_loc3_)
                  {
                     break;
                  }
                  addr62:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(!_loc3_)
               {
                  return;
               }
            }
            return;
         }
         §§goto(addr62);
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §=l§() : b2BodyDef
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2BodyDef = new b2BodyDef();
         if(!_loc3_)
         {
            _loc1_.type = this.§"!M§();
            while(true)
            {
               _loc1_.§9W§ = (this.§@x§ & b2internal::&!?) == b2internal::&!?;
               while(_loc2_ || _loc1_)
               {
                  _loc1_.angle = this.GetAngle();
                  while(true)
                  {
                     _loc1_.§?!'§ = this.§3p§;
                     while(true)
                     {
                        _loc1_.§6s§ = this.m_angularVelocity;
                        addr148:
                        loop4:
                        while(true)
                        {
                           _loc1_.§<K§ = (this.§@x§ & b2internal::%!0) == b2internal::%!0;
                           addr142:
                           while(true)
                           {
                              _loc1_.§<!;§ = (this.§@x§ & b2internal::>!N) == b2internal::>!N;
                              continue loop4;
                           }
                        }
                        if(!(_loc2_ || _loc3_))
                        {
                           continue;
                        }
                        _loc1_.position = this.GetPosition();
                        §§goto(addr46);
                     }
                  }
               }
            }
         }
         §§goto(addr148);
      }
      
      public function §"^§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§8!J§ == b2_dynamicBody)
            {
               loop0:
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     loop1:
                     while(!(_loc3_ && this))
                     {
                        this.SetAwake(true);
                        while(true)
                        {
                           addr138:
                           if(_loc3_ && param2)
                           {
                              continue;
                           }
                           §§push(this);
                           §§push(this.§3!S§);
                           if(_loc4_)
                           {
                              §§push(param2.x);
                              if(!_loc3_)
                              {
                                 §§push(this.m_sweep.c.x);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!_loc3_)
                                    {
                                       §§push(param1.y);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc4_)
                                          {
                                             addr50:
                                             §§push(param2.y);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§push(this.m_sweep.c.y);
                                                if(_loc4_ || this)
                                                {
                                                   addr76:
                                                   addr77:
                                                   addr78:
                                                   §§push(§§pop() - §§pop());
                                                   if(!_loc3_)
                                                   {
                                                      addr73:
                                                      §§push(param1.x);
                                                   }
                                                   §§pop().§3!S§ = §§pop() + (§§pop() - §§pop());
                                                   if(_loc3_)
                                                   {
                                                      while(!_loc3_)
                                                      {
                                                         §§goto(addr138);
                                                      }
                                                      loop9:
                                                      while(true)
                                                      {
                                                         if(_loc3_ && param2)
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§push(this.§1!1§);
                                                         if(!_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(this.§1!1§);
                                                         if(_loc4_ || param2)
                                                         {
                                                            §§push(§§pop().y);
                                                            if(_loc4_ || this)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  if(!(_loc3_ && param1))
                                                                  {
                                                                     §§push(param1.y);
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        addr135:
                                                                        §§pop().y = §§pop() + §§pop();
                                                                        §§goto(addr136);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(param1.x);
                                                                     }
                                                                     addr152:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§pop().x = §§pop();
                                                                  continue loop9;
                                                               }
                                                               continue loop1;
                                                            }
                                                            §§goto(addr135);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                            }
                                                            addr151:
                                                         }
                                                         §§goto(addr152);
                                                      }
                                                      addr136:
                                                      while(true)
                                                      {
                                                         §§goto(addr151);
                                                         §§goto(addr163);
                                                      }
                                                      addr149:
                                                   }
                                                   if(_loc4_)
                                                   {
                                                      return;
                                                   }
                                                   continue loop0;
                                                }
                                                §§goto(addr76);
                                                §§push(§§pop() * §§pop());
                                             }
                                             §§goto(addr76);
                                          }
                                          §§goto(addr77);
                                       }
                                       §§goto(addr73);
                                    }
                                 }
                                 §§goto(addr76);
                              }
                              §§goto(addr50);
                           }
                           §§goto(addr78);
                        }
                     }
                     §§goto(addr194);
                  }
                  while(true)
                  {
                     §§goto(addr149);
                  }
               }
            }
         }
         addr194:
      }
      
      public function §?§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(this.§8!J§ == b2_dynamicBody)
            {
               loop0:
               do
               {
                  if(this.IsAwake() == false)
                  {
                     if(_loc3_)
                     {
                        while(true)
                        {
                           this.SetAwake(true);
                        }
                        addr65:
                     }
                     loop1:
                     while(!_loc2_)
                     {
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§3!S§);
                           if(!(_loc2_ && this))
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§3!S§ = §§pop();
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr29);
               }
               while(_loc2_);
               
               return;
            }
            addr85:
            return;
         }
         §§goto(addr65);
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§8!J§ == b2_dynamicBody)
            {
               loop0:
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     if(!(_loc3_ && param2))
                     {
                        while(true)
                        {
                           this.SetAwake(true);
                        }
                        addr198:
                     }
                     while(true)
                     {
                        loop11:
                        while(_loc4_ || _loc3_)
                        {
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           if(_loc3_ && param2)
                           {
                              §§goto(addr216);
                           }
                           §§push(this);
                           §§push(this.m_angularVelocity);
                           if(!(_loc3_ && param1))
                           {
                              §§push(this.§?8§);
                              if(_loc4_)
                              {
                                 §§push(param2.x);
                                 if(_loc4_)
                                 {
                                    §§push(this.m_sweep.c.x);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr57:
                                          §§push(param1.y);
                                          if(!(_loc3_ && this))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc4_)
                                             {
                                                addr69:
                                                §§push(param2.y);
                                                if(!(_loc3_ && param1))
                                                {
                                                   §§push(this.m_sweep.c.y);
                                                   if(_loc4_)
                                                   {
                                                      addr90:
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc3_)
                                                      {
                                                         addr87:
                                                         §§push(param1.x);
                                                      }
                                                      §§pop().m_angularVelocity = §§pop() + §§pop() * (§§pop() - §§pop());
                                                      if(!_loc4_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc3_ && param2))
                                                      {
                                                         return;
                                                      }
                                                      addr175:
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§push(this.§,?§);
                                                         if(!_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(this.§,?§);
                                                         if(_loc4_ || param1)
                                                         {
                                                            §§push(§§pop().y);
                                                            if(_loc4_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  §§push(this.§#!D§);
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     §§push(param1.y);
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr147:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc4_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              addr152:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§pop().y = §§pop();
                                                                                 continue loop11;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§#!D§);
                                                                              }
                                                                              addr178:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(param1.x);
                                                                              addr182:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           addr184:
                                                                           while(true)
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              continue loop10;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr182);
                                                                  }
                                                                  §§goto(addr147);
                                                               }
                                                               §§goto(addr184);
                                                            }
                                                            §§goto(addr152);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                            }
                                                            addr177:
                                                         }
                                                         §§goto(addr178);
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr177);
                                                         §§goto(addr185);
                                                      }
                                                      addr185:
                                                   }
                                                   §§goto(addr90);
                                                   §§push(§§pop() * §§pop());
                                                }
                                                §§goto(addr87);
                                             }
                                          }
                                          §§goto(addr90);
                                       }
                                       §§goto(addr69);
                                    }
                                    §§goto(addr90);
                                 }
                                 §§goto(addr57);
                              }
                           }
                           §§goto(addr90);
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr175);
                  }
               }
            }
            addr216:
            return;
         }
         §§goto(addr198);
      }
      
      public function § '§(param1:Function) : b2Body
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         §§push(this.GetAngularVelocity());
         if(_loc16_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:b2Vec2 = this.§2!K§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§#f§(this.§=l§());
         var _loc8_:b2Fixture = _loc5_.§#j§;
         while(true)
         {
            if(!_loc8_)
            {
               if(!(_loc17_ && _loc3_))
               {
                  _loc5_.§&=§();
                  if(!_loc17_)
                  {
                     addr198:
                     _loc6_.§&=§();
                     break;
                  }
                  break;
               }
               §§goto(addr198);
            }
            else
            {
               if(!param1(_loc8_))
               {
                  _loc7_ = _loc8_;
                  _loc8_ = _loc8_.§#!&§;
                  continue;
               }
               if(!_loc16_)
               {
                  break;
               }
               _loc13_ = _loc8_.§#!&§;
               if(!_loc17_)
               {
                  if(_loc7_)
                  {
                     if(!_loc17_)
                     {
                        addr75:
                        _loc7_.§#!&§ = _loc13_;
                        if(_loc16_ || _loc3_)
                        {
                           addr96:
                           var _loc14_:*;
                           §§push((_loc14_ = _loc5_).§+![§);
                           if(!(_loc17_ && _loc2_))
                           {
                              §§push(§§pop() - 1);
                           }
                           var _loc15_:* = §§pop();
                           if(_loc16_)
                           {
                              _loc14_.§+![§ = _loc15_;
                           }
                           if(_loc16_)
                           {
                              addr118:
                              _loc8_.§#!&§ = _loc6_.§#j§;
                              if(_loc16_ || _loc3_)
                              {
                                 addr129:
                                 _loc6_.§#j§ = _loc8_;
                                 if(!_loc17_)
                                 {
                                    §§push((_loc14_ = _loc6_).§+![§);
                                    if(!(_loc17_ && _loc3_))
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    _loc15_ = §§pop();
                                    if(_loc16_ || this)
                                    {
                                       _loc14_.§+![§ = _loc15_;
                                    }
                                    if(!_loc17_)
                                    {
                                       _loc8_.m_body = _loc6_;
                                    }
                                 }
                              }
                           }
                           _loc8_ = _loc13_;
                           continue;
                        }
                        §§goto(addr129);
                     }
                     §§goto(addr118);
                  }
                  else
                  {
                     _loc5_.§#j§ = _loc13_;
                     if(!(_loc17_ && param1))
                     {
                        §§goto(addr96);
                     }
                  }
                  §§goto(addr129);
               }
               §§goto(addr75);
            }
         }
         var _loc9_:b2Vec2 = _loc5_.§2!K§();
         var _loc10_:b2Vec2 = _loc6_.§2!K§();
         var _loc11_:b2Vec2 = b2Math.§do §(_loc2_,b2Math.§28§(_loc3_,b2Math.§4_§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§do §(_loc2_,b2Math.§28§(_loc3_,b2Math.§4_§(_loc10_,_loc4_)));
         if(_loc16_ || _loc3_)
         {
            _loc5_.SetLinearVelocity(_loc11_);
            while(true)
            {
               _loc6_.SetLinearVelocity(_loc12_);
               addr292:
               while(true)
               {
                  _loc5_.§4K§(_loc3_);
                  addr275:
                  while(!_loc17_)
                  {
                  }
               }
            }
            addr296:
         }
         while(true)
         {
            _loc6_.§4K§(_loc3_);
            loop5:
            do
            {
               if(!_loc17_)
               {
                  _loc5_.§%a§();
                  while(!_loc17_)
                  {
                     _loc6_.§%a§();
                     if(_loc16_ || _loc2_)
                     {
                        continue loop5;
                     }
                  }
                  §§goto(addr275);
               }
               else
               {
                  §§goto(addr296);
               }
            }
            while(!_loc16_);
            
            return _loc6_;
         }
      }
      
      public function §4r§(param1:b2Body) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§#j§;
         for(; _loc2_; _loc2_ = _loc11_)
         {
            _loc11_ = _loc2_.§#!&§;
            if(!_loc15_)
            {
               var _loc12_:*;
               §§push((_loc12_ = param1).§+![§);
               if(_loc14_ || this)
               {
                  §§push(§§pop() - 1);
               }
               var _loc13_:* = §§pop();
               if(_loc14_ || param1)
               {
                  _loc12_.§+![§ = _loc13_;
               }
               if(!(_loc15_ && _loc3_))
               {
                  _loc2_.§#!&§ = this.§#j§;
                  if(!(_loc15_ && this))
                  {
                     addr83:
                     this.§#j§ = _loc2_;
                     if(!_loc15_)
                     {
                        §§push((_loc12_ = this).§+![§);
                        if(!(_loc15_ && _loc2_))
                        {
                           §§push(§§pop() + 1);
                        }
                        _loc13_ = §§pop();
                        if(!(_loc15_ && _loc3_))
                        {
                           _loc12_.§+![§ = _loc13_;
                        }
                        if(!(_loc14_ || _loc2_))
                        {
                           continue;
                        }
                     }
                  }
                  _loc2_.m_body = _loc4_;
               }
               continue;
            }
            §§goto(addr83);
         }
         if(_loc14_)
         {
            _loc3_.§+![§ = 0;
         }
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§2!K§();
         var _loc6_:b2Vec2 = _loc4_.§2!K§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         §§push(_loc3_.GetAngularVelocity());
         if(!_loc15_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.GetAngularVelocity());
         if(!_loc15_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         if(_loc14_)
         {
            _loc3_.§&=§();
         }
         do
         {
            this.§%a§();
         }
         while(_loc15_ && this);
         
      }
      
      public function GetMass() : Number
      {
         return this.§3!7§;
      }
      
      public function §,Q§() : Number
      {
         return this.§8S§;
      }
      
      public function §%`§(param1:b2MassData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1.§6O§ = this.§3!7§;
            while(true)
            {
               param1.§`$§ = this.§8S§;
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            param1.center.SetV(this.m_sweep.localCenter);
            if(_loc3_)
            {
               if(_loc3_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §,!O§(param1:b2MassData) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(b2Settings);
            §§push(this.m_world.§'E§());
            if(!_loc4_)
            {
               §§push(§§pop() == false);
            }
            §§pop().b2Assert(§§pop());
            loop0:
            while(true)
            {
               §§push(this.m_world.§'E§());
               loop1:
               while(true)
               {
                  §§push(true);
                  loop2:
                  while(true)
                  {
                     if(§§pop() != §§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§8!J§);
                           loop4:
                           while(true)
                           {
                              if(§§pop() == b2_dynamicBody)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    this.§#!D§ = 0;
                                    loop6:
                                    while(!(_loc4_ && _loc2_))
                                    {
                                       this.§8S§ = 0;
                                       loop7:
                                       while(true)
                                       {
                                          this.§?8§ = 0;
                                          loop8:
                                          while(true)
                                          {
                                             this.§3!7§ = param1.§6O§;
                                             loop9:
                                             for(; _loc3_; while(_loc3_ || this)
                                             {
                                                §§goto(addr185);
                                                §§goto(addr129);
                                             })
                                             {
                                                §§push(this.§3!7§);
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr190:
                                                   while(true)
                                                   {
                                                      if(§§pop() <= §§pop())
                                                      {
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            this.§3!7§ = 1;
                                                         }
                                                         while(true)
                                                         {
                                                         }
                                                         addr205:
                                                      }
                                                      addr171:
                                                      while(true)
                                                      {
                                                         this.§#!D§ = 1 / this.§3!7§;
                                                         continue loop9;
                                                      }
                                                   }
                                                   addr185:
                                                   §§push(param1.§`$§);
                                                   continue loop6;
                                                   if(_loc4_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(0);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            continue loop1;
                                                         }
                                                         addr60:
                                                         loop19:
                                                         while(§§pop())
                                                         {
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(!(_loc3_ || this))
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(_loc4_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr205);
                                                                     }
                                                                  }
                                                                  addr251:
                                                                  return;
                                                                  addr159:
                                                               }
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  §§push(this);
                                                                  §§push(param1.§`$§);
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     §§push(this.§3!7§);
                                                                     if(_loc3_ || _loc2_)
                                                                     {
                                                                        §§push(param1.center.x);
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(param1.center);
                                                                           if(_loc3_ || _loc2_)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr119:
                                                                                    §§push(param1.center.y);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr126:
                                                                                       §§push(§§pop() + §§pop() * param1.center.y);
                                                                                    }
                                                                                    §§goto(addr126);
                                                                                 }
                                                                                 addr129:
                                                                                 §§pop().§8S§ = §§pop() - §§pop() * §§pop();
                                                                                 addr128:
                                                                                 while(!(_loc4_ && _loc2_))
                                                                                 {
                                                                                    this.§?8§ = 1 / this.§8S§;
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!(_loc3_ || param1))
                                                                                    {
                                                                                       §§goto(addr259);
                                                                                    }
                                                                                    if(true)
                                                                                    {
                                                                                       break loop19;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§@x§ & b2internal::%!0);
                                                                                       if(_loc4_ && param1)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(§§pop() == 0);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          continue loop15;
                                                                                       }
                                                                                       continue loop1;
                                                                                    }
                                                                                    continue loop4;
                                                                                    addr37:
                                                                                 }
                                                                                 continue loop9;
                                                                                 addr130:
                                                                              }
                                                                              §§goto(addr126);
                                                                           }
                                                                        }
                                                                        §§goto(addr119);
                                                                     }
                                                                     §§goto(addr128);
                                                                  }
                                                                  §§goto(addr129);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  addr252:
                                                               }
                                                               §§goto(addr37);
                                                            }
                                                            §§goto(addr130);
                                                         }
                                                         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            addr457:
                                                            this.m_sweep.localCenter.SetV(param1.center);
                                                            this.m_sweep.c0.SetV(b2Math.§@E§(this.m_xf,this.m_sweep.localCenter));
                                                            addr461:
                                                         }
                                                         addr454:
                                                         §§push(this.m_sweep);
                                                         if(!_loc4_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               §§pop().c.SetV(this.m_sweep.c0);
                                                               addr429:
                                                               if(!_loc4_)
                                                               {
                                                                  addr387:
                                                                  addr400:
                                                                  addr398:
                                                                  addr399:
                                                                  addr392:
                                                                  addr391:
                                                                  addr389:
                                                                  addr401:
                                                                  addr386:
                                                                  addr384:
                                                                  §§push(this.§,?§);
                                                                  §§push(this.§,?§.x);
                                                                  §§push(this.m_angularVelocity);
                                                                  §§push(this.m_sweep.c.y);
                                                                  if(_loc3_)
                                                                  {
                                                                     addr397:
                                                                     §§push(§§pop() - _loc2_.y);
                                                                  }
                                                                  §§pop().x = §§pop() + §§pop() * -§§pop();
                                                                  addr402:
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     if(!(_loc4_ && param1))
                                                                     {
                                                                        §§push(this.§,?§);
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(this.§,?§);
                                                                           if(_loc3_ || _loc2_)
                                                                           {
                                                                              §§push(§§pop().y);
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 if(_loc3_ || _loc2_)
                                                                                 {
                                                                                    §§push(this.m_angularVelocity);
                                                                                    if(_loc3_ || param1)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§push(this.m_sweep);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§push(§§pop().c);
                                                                                             if(_loc3_ || _loc3_)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§push(_loc2_.x);
                                                                                                   if(_loc3_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr357:
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(_loc3_ || _loc2_)
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               addr367:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  addr370:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     §§pop().y = §§pop();
                                                                                                                     if(_loc4_ && _loc3_)
                                                                                                                     {
                                                                                                                        §§goto(addr402);
                                                                                                                     }
                                                                                                                     return;
                                                                                                                  }
                                                                                                                  §§goto(addr387);
                                                                                                               }
                                                                                                               §§goto(addr400);
                                                                                                            }
                                                                                                            §§goto(addr398);
                                                                                                         }
                                                                                                         §§goto(addr399);
                                                                                                      }
                                                                                                      §§goto(addr357);
                                                                                                   }
                                                                                                   §§goto(addr397);
                                                                                                }
                                                                                                §§goto(addr357);
                                                                                             }
                                                                                             §§goto(addr392);
                                                                                          }
                                                                                          §§goto(addr391);
                                                                                       }
                                                                                       §§goto(addr389);
                                                                                    }
                                                                                    §§goto(addr367);
                                                                                 }
                                                                                 §§goto(addr401);
                                                                              }
                                                                              §§goto(addr370);
                                                                           }
                                                                           §§goto(addr386);
                                                                        }
                                                                        §§goto(addr384);
                                                                     }
                                                                     §§goto(addr461);
                                                                  }
                                                                  §§goto(addr429);
                                                               }
                                                               §§goto(addr454);
                                                            }
                                                         }
                                                         §§goto(addr457);
                                                      }
                                                      continue loop2;
                                                   }
                                                   §§goto(addr190);
                                                   §§goto(addr171);
                                                }
                                             }
                                             continue loop7;
                                          }
                                       }
                                    }
                                    continue loop3;
                                 }
                              }
                              §§goto(addr251);
                           }
                        }
                     }
                     addr259:
                     return;
                  }
               }
            }
         }
         §§goto(addr252);
      }
      
      public function §&=§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2MassData = null;
         if(!_loc5_)
         {
            this.§3!7§ = 0;
            while(true)
            {
               this.§#!D§ = 0;
               loop1:
               while(!_loc5_)
               {
                  this.§8S§ = 0;
                  while(true)
                  {
                     this.§?8§ = 0;
                  }
                  loop4:
                  while(true)
                  {
                     if(_loc5_ && _loc3_)
                     {
                        continue loop1;
                     }
                     loop5:
                     while(true)
                     {
                        §§push(this.§8!J§);
                        loop6:
                        while(true)
                        {
                           §§push(b2_staticBody);
                           loop7:
                           while(true)
                           {
                              §§push(§§pop() == §§pop());
                              if(_loc6_)
                              {
                                 if(!§§pop())
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§pop();
                                       loop9:
                                       for(; _loc6_; continue loop10)
                                       {
                                          if(!_loc5_)
                                          {
                                             §§push(this.§8!J§);
                                             if(_loc5_)
                                             {
                                                continue loop6;
                                             }
                                             §§push(b2_kinematicBody);
                                             if(_loc5_ && _loc3_)
                                             {
                                                continue loop7;
                                             }
                                             addr36:
                                             §§push(§§pop() == §§pop());
                                             if(!(_loc6_ || _loc1_))
                                             {
                                                continue loop10;
                                             }
                                             while(§§pop())
                                             {
                                                if(!_loc5_)
                                                {
                                                   return;
                                                }
                                                if(!_loc5_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop9;
                                                §§goto(addr36);
                                             }
                                             var _loc1_:b2Vec2 = b2Vec2.§?!<§(0,0);
                                             var _loc2_:b2Fixture = this.§#j§;
                                             addr240:
                                             if(_loc2_)
                                             {
                                                §§push(_loc2_.§4U§);
                                                if(_loc6_)
                                                {
                                                   §§push(0);
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            addr236:
                                                            _loc2_ = _loc2_.§#!&§;
                                                            §§goto(addr240);
                                                         }
                                                         addr398:
                                                         §§push(this);
                                                         §§push(this.§8S§);
                                                         if(!(_loc5_ && this))
                                                         {
                                                            §§push(this.§3!7§);
                                                            if(_loc6_)
                                                            {
                                                               §§push(_loc1_.x);
                                                               if(_loc6_)
                                                               {
                                                                  §§push(_loc1_.x);
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc6_ || _loc2_)
                                                                     {
                                                                        addr446:
                                                                        addr447:
                                                                        addr448:
                                                                        §§push(_loc1_.y);
                                                                        if(!(_loc5_ && _loc3_))
                                                                        {
                                                                           addr442:
                                                                           §§push(§§pop() * _loc1_.y);
                                                                        }
                                                                        §§pop().§8S§ = §§pop() - §§pop() * (§§pop() + §§pop());
                                                                        §§push(this);
                                                                        §§push(this.§8S§);
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(§§pop() * this.§2!&§);
                                                                        }
                                                                        §§pop().§8S§ = §§pop();
                                                                        addr370:
                                                                        if(!(_loc5_ && _loc2_))
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              b2Settings.b2Assert(this.§8S§ > 0);
                                                                              addr352:
                                                                              if(_loc6_ || _loc3_)
                                                                              {
                                                                                 this.§?8§ = 1 / this.§8S§;
                                                                                 addr316:
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(!(_loc5_ && _loc1_))
                                                                                    {
                                                                                       if(_loc6_ || _loc2_)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§push(_loc1_);
                                                                                             §§push(_loc1_.y);
                                                                                             if(_loc6_ || _loc1_)
                                                                                             {
                                                                                                §§push(§§pop() * this.§#!D§);
                                                                                             }
                                                                                             §§pop().y = §§pop();
                                                                                             addr450:
                                                                                             §§push(this.§8S§ > 0);
                                                                                             if(this.§8S§ > 0)
                                                                                             {
                                                                                                addr457:
                                                                                                §§pop();
                                                                                                §§push((this.§@x§ & b2internal::%!0) == 0);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(!(_loc5_ && _loc1_))
                                                                                                   {
                                                                                                      addr396:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         §§goto(addr398);
                                                                                                      }
                                                                                                      this.§8S§ = 0;
                                                                                                      addr294:
                                                                                                      if(_loc6_ || _loc3_)
                                                                                                      {
                                                                                                         if(!(_loc5_ && _loc1_))
                                                                                                         {
                                                                                                            this.§?8§ = 0;
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  §§goto(addr316);
                                                                                                               }
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  addr288:
                                                                                                               }
                                                                                                               var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
                                                                                                               if(!(_loc5_ && _loc1_))
                                                                                                               {
                                                                                                                  addr677:
                                                                                                                  this.m_sweep.localCenter.SetV(_loc1_);
                                                                                                                  addr680:
                                                                                                                  §§push(this.m_sweep);
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     §§pop().c0.SetV(b2Math.§@E§(this.m_xf,this.m_sweep.localCenter));
                                                                                                                     addr674:
                                                                                                                     §§push(this.m_sweep);
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        §§pop().c.SetV(this.m_sweep.c0);
                                                                                                                        addr642:
                                                                                                                        if(_loc6_ || _loc3_)
                                                                                                                        {
                                                                                                                           addr609:
                                                                                                                           addr623:
                                                                                                                           addr621:
                                                                                                                           addr614:
                                                                                                                           addr613:
                                                                                                                           addr611:
                                                                                                                           addr622:
                                                                                                                           addr608:
                                                                                                                           addr606:
                                                                                                                           §§push(this.§,?§);
                                                                                                                           §§push(this.§,?§.x);
                                                                                                                           §§push(this.m_angularVelocity);
                                                                                                                           §§push(this.m_sweep.c.y);
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              addr620:
                                                                                                                              §§push(-(§§pop() - _loc3_.y));
                                                                                                                           }
                                                                                                                           §§pop().x = §§pop() + §§pop() * §§pop();
                                                                                                                           addr624:
                                                                                                                           if(_loc6_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(this.§,?§);
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(this.§,?§);
                                                                                                                                 if(!(_loc5_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().y);
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       §§push(this.m_angularVelocity);
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             if(_loc6_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(this.m_sweep);
                                                                                                                                                if(_loc6_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().c);
                                                                                                                                                   if(_loc6_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                      if(_loc6_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc6_ || _loc1_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc3_.x);
                                                                                                                                                            if(!(_loc5_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               if(_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     addr581:
                                                                                                                                                                     §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc6_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc5_ && _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr642);
                                                                                                                                                                              }
                                                                                                                                                                              return;
                                                                                                                                                                              addr602:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr624);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr609);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr623);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr620);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr581);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr620);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr621);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr581);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr614);
                                                                                                                                                }
                                                                                                                                                §§goto(addr613);
                                                                                                                                             }
                                                                                                                                             §§goto(addr611);
                                                                                                                                          }
                                                                                                                                          §§goto(addr622);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr581);
                                                                                                                                 }
                                                                                                                                 §§goto(addr608);
                                                                                                                              }
                                                                                                                              §§goto(addr606);
                                                                                                                           }
                                                                                                                           §§goto(addr674);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr680);
                                                                                                                  }
                                                                                                                  §§goto(addr677);
                                                                                                               }
                                                                                                               §§goto(addr602);
                                                                                                            }
                                                                                                            §§goto(addr294);
                                                                                                         }
                                                                                                         this.§#!D§ = 1;
                                                                                                         addr463:
                                                                                                         §§goto(addr450);
                                                                                                         addr469:
                                                                                                      }
                                                                                                      §§goto(addr352);
                                                                                                   }
                                                                                                   §§goto(addr450);
                                                                                                }
                                                                                                §§goto(addr457);
                                                                                                addr458:
                                                                                             }
                                                                                             §§goto(addr396);
                                                                                             addr485:
                                                                                             addr495:
                                                                                          }
                                                                                          §§goto(addr288);
                                                                                       }
                                                                                       §§goto(addr463);
                                                                                    }
                                                                                    §§goto(addr398);
                                                                                 }
                                                                                 §§goto(addr370);
                                                                              }
                                                                              §§goto(addr485);
                                                                              addr379:
                                                                           }
                                                                           §§goto(addr458);
                                                                        }
                                                                        addr449:
                                                                        §§goto(addr449);
                                                                     }
                                                                     §§goto(addr446);
                                                                  }
                                                                  §§goto(addr442);
                                                               }
                                                               §§goto(addr446);
                                                            }
                                                            §§goto(addr447);
                                                         }
                                                         §§goto(addr448);
                                                      }
                                                      _loc4_ = _loc2_.§%`§();
                                                      if(_loc6_ || _loc2_)
                                                      {
                                                         §§push(this);
                                                         §§push(this.§3!7§);
                                                         if(_loc6_ || this)
                                                         {
                                                            §§push(§§pop() + _loc4_.§6O§);
                                                         }
                                                         §§pop().§3!7§ = §§pop();
                                                         §§push(_loc1_);
                                                         §§push(_loc1_.x);
                                                         if(!(_loc5_ && _loc1_))
                                                         {
                                                            §§push(_loc4_.center.x);
                                                            if(!_loc5_)
                                                            {
                                                               §§push(§§pop() * _loc4_.§6O§);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§pop().x = §§pop();
                                                         addr175:
                                                         §§push(_loc1_);
                                                         §§push(_loc1_.y);
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            §§push(_loc4_.center.y);
                                                            if(!_loc5_)
                                                            {
                                                               §§push(§§pop() * _loc4_.§6O§);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§pop().y = §§pop();
                                                         addr220:
                                                         if(_loc6_)
                                                         {
                                                            §§push(this);
                                                            §§push(this.§8S§);
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               §§push(§§pop() + _loc4_.§`$§);
                                                            }
                                                            §§pop().§8S§ = §§pop();
                                                            if(_loc6_ || _loc2_)
                                                            {
                                                               if(_loc6_ || _loc2_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr175);
                                                                  }
                                                                  §§goto(addr236);
                                                               }
                                                               §§goto(addr220);
                                                            }
                                                            §§goto(addr175);
                                                            addr198:
                                                         }
                                                         addr235:
                                                         §§goto(addr235);
                                                      }
                                                      §§goto(addr198);
                                                   }
                                                   addr261:
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(!(_loc5_ && _loc1_))
                                                      {
                                                         this.§#!D§ = 1 / this.§3!7§;
                                                         if(!_loc5_)
                                                         {
                                                            §§push(_loc1_);
                                                            §§push(_loc1_.x);
                                                            if(_loc6_)
                                                            {
                                                               §§push(§§pop() * this.§#!D§);
                                                            }
                                                            §§pop().x = §§pop();
                                                            §§goto(addr495);
                                                         }
                                                         §§goto(addr398);
                                                      }
                                                      §§goto(addr457);
                                                   }
                                                   else
                                                   {
                                                      this.§3!7§ = 1;
                                                   }
                                                   §§goto(addr469);
                                                }
                                                §§goto(addr450);
                                             }
                                             if(!_loc5_)
                                             {
                                                §§push(this.§3!7§);
                                                if(_loc6_ || _loc2_)
                                                {
                                                   §§push(0);
                                                   if(_loc6_ || _loc2_)
                                                   {
                                                      §§goto(addr261);
                                                   }
                                                }
                                                §§goto(addr450);
                                             }
                                             §§goto(addr379);
                                          }
                                          else
                                          {
                                             §§goto(addr92);
                                          }
                                       }
                                       addr87:
                                       while(true)
                                       {
                                          this.m_sweep.localCenter.§3a§();
                                          continue loop4;
                                       }
                                    }
                                    addr64:
                                 }
                                 §§goto(addr44);
                              }
                              §§goto(addr64);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(_loc4_ || param1)
         {
            §§push(param1.x);
            if(_loc4_ || param1)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc5_ && _loc3_))
               {
                  addr49:
                  §§push(_loc2_.col2.x);
                  if(_loc4_)
                  {
                     addr54:
                     §§push(param1.y);
                     if(_loc4_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc5_)
                        {
                           addr62:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(!(_loc5_ && this))
                           {
                              §§push(param1.x);
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc4_)
                                 {
                                    addr94:
                                    §§push(_loc2_.col2.y);
                                    if(_loc4_ || _loc2_)
                                    {
                                       addr107:
                                       §§push(§§pop() + §§pop() * param1.y);
                                    }
                                    §§goto(addr107);
                                 }
                                 var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                 if(_loc4_)
                                 {
                                    §§push(_loc3_);
                                    §§push(_loc3_.x);
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§push(§§pop() + this.m_xf.position.x);
                                    }
                                    §§pop().x = §§pop();
                                    do
                                    {
                                       §§push(_loc3_);
                                       §§push(_loc3_.y);
                                       if(_loc4_ || _loc2_)
                                       {
                                          §§push(§§pop() + this.m_xf.position.y);
                                       }
                                       §§pop().y = §§pop();
                                    }
                                    while(!(_loc4_ || _loc3_));
                                    
                                 }
                                 return _loc3_;
                              }
                              §§goto(addr107);
                           }
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr94);
               }
               §§goto(addr62);
            }
            §§goto(addr54);
         }
         §§goto(addr49);
      }
      
      public function §!!%§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§2!3§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§;!B§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§6Y§(this.m_xf.R,param1);
      }
      
      public function §7!'§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§,?§.x);
         if(_loc2_ || this)
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
                     if(_loc2_ || _loc3_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc3_)
                        {
                           §§goto(addr63);
                        }
                        §§goto(addr68);
                     }
                  }
                  §§goto(addr91);
               }
               §§goto(addr72);
            }
            §§goto(addr68);
         }
         addr63:
         §§push(§§pop() - §§pop());
         §§push(this.§,?§.y);
         if(_loc2_)
         {
            addr68:
            §§push(this.m_angularVelocity);
            if(!_loc3_)
            {
               addr72:
               §§push(param1.x);
               if(!_loc3_)
               {
                  addr91:
                  §§push(§§pop() + §§pop() * (§§pop() - this.m_sweep.c.x));
               }
            }
            §§goto(addr91);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §=!>§(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(_loc4_)
         {
            §§push(param1.x);
            if(_loc4_ || this)
            {
               §§push(§§pop() * §§pop());
               if(_loc4_)
               {
                  addr39:
                  §§push(_loc2_.col2.x);
                  if(!(_loc5_ && this))
                  {
                     §§push(param1.y);
                     if(_loc4_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc5_ && this))
                        {
                           addr62:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(_loc4_ || _loc3_)
                           {
                           }
                           addr98:
                           var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                           if(_loc4_)
                           {
                              §§push(_loc3_);
                              §§push(_loc3_.x);
                              if(_loc4_)
                              {
                                 §§push(§§pop() + this.m_xf.position.x);
                              }
                              §§pop().x = §§pop();
                              do
                              {
                                 §§push(_loc3_);
                                 §§push(_loc3_.y);
                                 if(_loc4_ || param1)
                                 {
                                    §§push(§§pop() + this.m_xf.position.y);
                                 }
                                 §§pop().y = §§pop();
                              }
                              while(_loc5_ && param1);
                              
                           }
                           §§push(§§findproperty(b2Vec2));
                           §§push(this.§,?§.x);
                           if(_loc4_ || _loc3_)
                           {
                              §§push(this.m_angularVelocity);
                              if(!_loc5_)
                              {
                                 §§push(_loc3_.y);
                                 if(!(_loc5_ && this))
                                 {
                                    §§push(this.m_sweep.c.y);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          addr153:
                                          §§push(§§pop() * §§pop());
                                          if(_loc4_)
                                          {
                                             addr157:
                                             §§push(§§pop() - §§pop());
                                             §§push(this.§,?§.y);
                                             if(!_loc4_)
                                             {
                                             }
                                             §§goto(addr177);
                                          }
                                          §§push(this.m_angularVelocity);
                                          if(_loc4_)
                                          {
                                             §§push(_loc3_.x);
                                             if(!_loc5_)
                                             {
                                                addr175:
                                                §§push(§§pop() * (§§pop() - this.m_sweep.c.x));
                                             }
                                             §§goto(addr175);
                                          }
                                       }
                                       addr177:
                                       return new §§pop().b2Vec2(§§pop(),§§pop());
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§goto(addr175);
                                 }
                                 §§goto(addr153);
                              }
                              §§goto(addr177);
                           }
                           §§goto(addr157);
                        }
                        §§push(param1.x);
                        if(_loc4_ || param1)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc4_ || this)
                           {
                              addr89:
                              §§push(_loc2_.col2.y);
                              if(!_loc5_)
                              {
                                 addr94:
                                 §§push(§§pop() * param1.y);
                              }
                              §§goto(addr98);
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr98);
                        }
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr89);
               }
            }
            §§goto(addr62);
         }
         §§goto(addr39);
      }
      
      public function §1!_§() : Number
      {
         return this.§-Z§;
      }
      
      public function §%Z§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§-Z§ = param1;
         }
      }
      
      public function §5d§() : Number
      {
         return this.§3p§;
      }
      
      public function §3+§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§3p§ = param1;
         }
      }
      
      public function §^m§(param1:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§8!J§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr119:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     addr111:
                     while(true)
                     {
                        this.§8!J§ = param1;
                        addr115:
                        while(true)
                        {
                           this.§&=§();
                           continue loop0;
                        }
                     }
                     addr111:
                  }
               }
            }
         }
         §§goto(addr120);
      }
      
      public function §"!M§() : uint
      {
         return this.§8!J§;
      }
      
      public function §-!!§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(!param1)
            {
               this.§@x§ &= ~b2internal::>!N;
               if(!(_loc3_ || this))
               {
                  addr82:
               }
               return;
            }
            if(!(_loc2_ && _loc3_))
            {
               this.§@x§ |= b2internal::>!N;
            }
         }
         §§goto(addr82);
      }
      
      public function § c§() : Boolean
      {
         return (this.§@x§ & b2internal::>!N) == b2internal::>!N;
      }
      
      public function §8b§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(param1)
            {
               if(!(_loc2_ && _loc3_))
               {
                  this.§@x§ |= b2internal::&!?;
               }
            }
            else
            {
               this.§@x§ &= ~b2internal::&!?;
               do
               {
                  if(_loc3_ || _loc3_)
                  {
                     continue;
                  }
               }
               while(this.SetAwake(true), _loc2_ && this);
               
               §§goto(addr25);
            }
            addr25:
            return;
         }
         §§goto(addr50);
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1)
            {
               this.§@x§ &= ~b2internal::=!;
               loop0:
               while(true)
               {
                  this.§&Q§ = 0;
                  loop1:
                  while(true)
                  {
                     this.§,?§.§3a§();
                     while(true)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           if(_loc3_ && _loc3_)
                           {
                              addr132:
                              this.§@x§ |= b2internal::=!;
                              break;
                           }
                           this.m_angularVelocity = 0;
                           loop3:
                           while(true)
                           {
                              this.§1!1§.§3a§();
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop1;
                                 addr74:
                                 this.§3!S§ = 0;
                                 if(!_loc3_)
                                 {
                                    continue loop3;
                                 }
                              }
                              §§goto(addr19);
                           }
                        }
                        break;
                        if(_loc3_ && param1)
                        {
                           continue;
                        }
                        §§goto(addr19);
                     }
                     this.§&Q§ = 0;
                     addr119:
                     addr19:
                     return;
                  }
               }
            }
         }
         §§goto(addr132);
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§@x§ & b2internal::=!) == b2internal::=!;
      }
      
      public function §3P§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(param1)
            {
               if(!(_loc2_ && _loc3_))
               {
                  this.§@x§ |= b2internal::%!0;
               }
               while(true)
               {
                  §§goto(addr29);
               }
               addr83:
            }
            else
            {
               this.§@x§ &= ~b2internal::%!0;
            }
            while(true)
            {
               if(_loc3_)
               {
                  §§goto(addr57);
               }
               else
               {
                  §§goto(addr83);
               }
               return;
            }
         }
         §§goto(addr57);
      }
      
      public function §&X§() : Boolean
      {
         return (this.§@x§ & b2internal::%!0) == b2internal::%!0;
      }
      
      public function §0>§(param1:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§>![§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(_loc7_ || this)
         {
            §§push(param1);
            if(_loc7_)
            {
               if(§§pop() == this.§+B§())
               {
                  if(_loc7_ || this)
                  {
                     return;
                  }
                  addr61:
                  this.§@x§ |= b2internal::&!N;
                  addr67:
                  _loc2_ = this.m_world.§7-§.§;!=§;
                  _loc3_ = this.§#j§;
                  while(_loc3_)
                  {
                     _loc3_.§case§(_loc2_,this.m_xf);
                     if(!_loc7_)
                     {
                        break;
                     }
                     _loc3_ = _loc3_.§#!&§;
                  }
               }
               else
               {
                  addr58:
                  if(param1)
                  {
                     if(!_loc6_)
                     {
                        §§goto(addr61);
                     }
                     §§goto(addr67);
                  }
                  else
                  {
                     this.§@x§ &= ~b2internal::&!N;
                     _loc2_ = this.m_world.§7-§.§;!=§;
                     _loc3_ = this.§#j§;
                     if(_loc7_ || _loc2_)
                     {
                        loop1:
                        while(_loc3_)
                        {
                           _loc3_.§^<§(_loc2_);
                           if(_loc6_)
                           {
                              break;
                           }
                           while(true)
                           {
                              _loc3_ = _loc3_.§#!&§;
                              continue loop1;
                           }
                        }
                        _loc4_ = this.§=-§;
                        if(!(_loc6_ && param1))
                        {
                           while(_loc4_)
                           {
                              _loc5_ = _loc4_;
                              _loc4_ = _loc4_.§%Y§;
                              if(_loc7_)
                              {
                                 this.m_world.§7-§.§;@§(_loc5_.§"!$§);
                              }
                           }
                           if(_loc7_)
                           {
                              this.§=-§ = null;
                           }
                        }
                        §§goto(addr185);
                     }
                     §§goto(addr134);
                  }
               }
               addr185:
               return;
            }
         }
         §§goto(addr58);
      }
      
      public function §+B§() : Boolean
      {
         return (this.§@x§ & b2internal::&!N) == b2internal::&!N;
      }
      
      public function §1j§() : Boolean
      {
         return (this.§@x§ & b2internal::&!?) == b2internal::&!?;
      }
      
      public function §?!8§() : b2Fixture
      {
         return this.§#j§;
      }
      
      public function §=7§() : b2JointEdge
      {
         return this.§1v§;
      }
      
      public function §=!T§() : b2ControllerEdge
      {
         return this.§6V§;
      }
      
      public function §6q§() : b2ContactEdge
      {
         return this.§=-§;
      }
      
      public function §[;§() : b2Body
      {
         return this.§#!&§;
      }
      
      public function GetUserData() : *
      {
         return this.§'8§;
      }
      
      public function §,!-§(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§'8§ = param1;
         }
      }
      
      public function §`!5§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §%a§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §6z§;
         if(_loc6_ || this)
         {
            §§push(_loc1_.R);
            if(!_loc7_)
            {
               §§pop().Set(this.m_sweep.a0);
               addr37:
               §§push(_loc1_.R);
            }
            var _loc2_:b2Mat22 = §§pop();
            var _loc3_:b2Vec2 = this.m_sweep.localCenter;
            if(!(_loc7_ && _loc3_))
            {
               §§push(_loc1_.position);
               if(!(_loc7_ && this))
               {
                  §§push(this.m_sweep);
                  if(_loc6_)
                  {
                     §§push(§§pop().c0);
                     if(_loc6_)
                     {
                        §§push(§§pop().x);
                        if(_loc6_)
                        {
                           §§push(_loc2_.col1);
                           if(!(_loc7_ && _loc2_))
                           {
                              §§push(§§pop().x);
                              if(_loc6_)
                              {
                                 §§push(_loc3_.x);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc6_)
                                    {
                                       §§push(_loc2_.col2);
                                       if(!(_loc7_ && _loc1_))
                                       {
                                          §§push(§§pop().x);
                                          if(_loc6_ || _loc2_)
                                          {
                                             §§push(_loc3_.y);
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc6_ || _loc1_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc7_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc7_)
                                                      {
                                                         §§pop().x = §§pop();
                                                         if(_loc6_)
                                                         {
                                                            addr149:
                                                            addr148:
                                                            addr146:
                                                            addr144:
                                                            §§push(_loc1_.position);
                                                            §§push(this.m_sweep.c0.y);
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               addr157:
                                                               §§push(_loc2_.col1.y);
                                                               if(!(_loc7_ && this))
                                                               {
                                                                  §§push(_loc3_.x);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        addr179:
                                                                        §§push(_loc2_.col2.y);
                                                                        if(!_loc7_)
                                                                        {
                                                                           addr187:
                                                                           §§push(§§pop() - (§§pop() + §§pop() * _loc3_.y));
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr187);
                                                            }
                                                            §§pop().y = §§pop();
                                                         }
                                                         var _loc5_:§>![§ = this.m_world.§7-§.§;!=§;
                                                         _loc4_ = this.§#j§;
                                                         while(_loc4_)
                                                         {
                                                            _loc4_.§=!P§(_loc5_,_loc1_,this.m_xf);
                                                            if(!(_loc6_ || _loc1_))
                                                            {
                                                               break;
                                                            }
                                                            _loc4_ = _loc4_.§#!&§;
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr157);
                                                   }
                                                   §§goto(addr179);
                                                }
                                             }
                                          }
                                          §§goto(addr187);
                                       }
                                       §§goto(addr179);
                                    }
                                 }
                              }
                              §§goto(addr187);
                           }
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr148);
               }
               §§goto(addr146);
            }
            §§goto(addr144);
         }
         §§goto(addr37);
      }
      
      b2internal function §=!Y§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc1_))
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
               if(_loc4_ || _loc2_)
               {
                  §§push(this.m_xf);
                  loop0:
                  while(true)
                  {
                     §§push(§§pop().position);
                     addr192:
                     while(true)
                     {
                        §§push(this.m_sweep);
                        addr194:
                        while(true)
                        {
                           §§push(§§pop().c);
                           addr195:
                           while(true)
                           {
                              §§push(§§pop().x);
                              if(!_loc3_)
                              {
                                 §§push(_loc1_.col1);
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    if(!_loc3_)
                                    {
                                       §§push(_loc2_.x);
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          addr159:
                                          if(_loc3_ && this)
                                          {
                                             continue;
                                          }
                                          §§push(_loc2_.y);
                                          if(_loc4_)
                                          {
                                             addr171:
                                             §§push(§§pop() - (§§pop() + §§pop() * §§pop()));
                                             if(_loc4_ || _loc1_)
                                             {
                                                §§pop().y = §§pop();
                                                if(_loc4_ || _loc1_)
                                                {
                                                   return;
                                                   addr188:
                                                }
                                                continue loop0;
                                             }
                                          }
                                          else
                                          {
                                             addr221:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                addr222:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   addr223:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                   }
                                                }
                                             }
                                             addr221:
                                          }
                                          while(true)
                                          {
                                             §§pop().x = §§pop();
                                             continue loop0;
                                          }
                                       }
                                    }
                                    addr206:
                                    addr90:
                                    while(true)
                                    {
                                       §§push(_loc1_.col2);
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr219:
                                          addr138:
                                          while(true)
                                          {
                                             §§goto(addr221);
                                          }
                                          §§push(_loc1_.col2);
                                          if(!(_loc4_ || _loc3_))
                                          {
                                             continue;
                                          }
                                          §§push(§§pop().y);
                                          if(!_loc3_)
                                          {
                                             addr150:
                                             if(_loc4_)
                                             {
                                                if(_loc4_ || this)
                                                {
                                                   §§goto(addr159);
                                                }
                                                else
                                                {
                                                   §§goto(addr219);
                                                }
                                             }
                                             §§goto(addr222);
                                          }
                                          §§goto(addr171);
                                       }
                                    }
                                    §§push(_loc1_.col1);
                                    if(_loc3_ && _loc1_)
                                    {
                                       continue;
                                    }
                                    §§push(§§pop().y);
                                    if(!(_loc3_ && this))
                                    {
                                       if(_loc4_)
                                       {
                                          if(_loc4_)
                                          {
                                             §§push(_loc2_.x);
                                             if(_loc4_ || _loc2_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc3_ && this))
                                                {
                                                   §§goto(addr138);
                                                }
                                                §§goto(addr171);
                                             }
                                             §§goto(addr150);
                                          }
                                          §§goto(addr206);
                                       }
                                       §§goto(addr223);
                                    }
                                    §§goto(addr171);
                                 }
                              }
                              §§goto(addr224);
                           }
                        }
                     }
                  }
               }
               §§goto(addr188);
            }
         }
         §§goto(addr37);
      }
      
      b2internal function §`V§(param1:b2Body) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this.§8!J§);
            if(!(_loc4_ && _loc3_))
            {
               §§push(b2_dynamicBody);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc4_)
                  {
                     §§push(!§§pop());
                     if(!_loc4_)
                     {
                        if(§§pop())
                        {
                           if(_loc3_ || param1)
                           {
                              §§pop();
                              if(_loc3_ || this)
                              {
                                 addr66:
                                 addr65:
                                 §§push(param1.§8!J§ == b2_dynamicBody);
                                 if(_loc4_ && this)
                                 {
                                 }
                                 addr92:
                                 if(§§pop())
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       addr101:
                                       return false;
                                       addr100:
                                    }
                                 }
                                 var _loc2_:b2JointEdge = this.§1v§;
                                 for(; _loc2_; _loc2_ = _loc2_.§%Y§)
                                 {
                                    if(_loc2_.§3!>§ == param1)
                                    {
                                       if(_loc3_)
                                       {
                                          §§push(_loc2_.§%;§.§5&§);
                                          if(_loc3_)
                                          {
                                             if(§§pop() != false)
                                             {
                                                continue;
                                             }
                                             if(!(_loc3_ || _loc2_))
                                             {
                                                continue;
                                             }
                                             §§push(false);
                                             if(!(_loc3_ || param1))
                                             {
                                                §§goto(addr161);
                                             }
                                          }
                                          return §§pop();
                                       }
                                       break;
                                    }
                                 }
                                 addr161:
                                 return §§pop();
                                 §§push(true);
                              }
                              §§goto(addr100);
                           }
                           §§push(!§§pop());
                           if(_loc3_ || this)
                           {
                           }
                           §§goto(addr101);
                        }
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr101);
               }
               §§goto(addr66);
            }
            §§goto(addr65);
         }
         §§goto(addr101);
      }
      
      b2internal function §1m§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.m_sweep);
            while(true)
            {
               §§push(param1);
               addr94:
               while(true)
               {
                  §§pop().§1m§(§§pop());
                  addr95:
                  loop2:
                  while(true)
                  {
                     §§push(this.m_sweep);
                     addr73:
                     loop3:
                     while(true)
                     {
                        §§pop().c.SetV(this.m_sweep.c0);
                        while(!_loc3_)
                        {
                           continue loop3;
                           §§pop().a = §§pop();
                           do
                           {
                              this.§=!Y§();
                           }
                           while(!_loc2_);
                           
                           if(_loc2_ || _loc2_)
                           {
                              return;
                              addr50:
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
            addr93:
         }
         while(true)
         {
            §§push(this.m_sweep);
            if(!(_loc3_ && param1))
            {
               if(!_loc3_)
               {
                  §§push(this.m_sweep.a0);
                  if(!_loc3_)
                  {
                     §§goto(addr68);
                  }
                  else
                  {
                     §§goto(addr94);
                  }
               }
               else
               {
                  §§goto(addr93);
               }
               §§goto(addr94);
            }
            §§goto(addr73);
         }
         §§goto(addr50);
      }
   }
}

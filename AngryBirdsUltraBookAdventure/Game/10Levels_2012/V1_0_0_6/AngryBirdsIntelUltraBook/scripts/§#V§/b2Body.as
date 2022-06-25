package §#V§
{
   import §&a§.b2JointEdge;
   import §,C§.b2EdgeShape;
   import §,C§.b2MassData;
   import §,C§.b2Shape;
   import §,G§.b2Contact;
   import §,G§.b2ContactEdge;
   import §0<§.b2ControllerEdge;
   import §3!m§.b2Settings;
   import §3!m§.b2internal;
   import §8w§.§2U§;
   import §;%§.b2Mat22;
   import §;%§.b2Math;
   import §;%§.b2Sweep;
   import §;%§.b2Transform;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §#g§:b2Transform;
      
      b2internal static var §6!I§:uint = 1;
      
      b2internal static var §4!-§:uint = 2;
      
      b2internal static var §<!O§:uint = 4;
      
      b2internal static var §7!y§:uint = 8;
      
      b2internal static var §[J§:uint = 16;
      
      b2internal static var §`4§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §#g§ = new b2Transform();
            while(true)
            {
               §6!I§ = 1;
            }
            addr141:
         }
         loop1:
         while(true)
         {
            §4!-§ = 2;
            loop2:
            while(true)
            {
               §<!O§ = 4;
               loop3:
               while(true)
               {
                  §7!y§ = 8;
                  while(true)
                  {
                     §[J§ = 16;
                     continue loop1;
                     loop7:
                     while(_loc2_ || _loc2_)
                     {
                        b2_kinematicBody = 1;
                        while(true)
                        {
                           if(!(_loc2_ || b2Body))
                           {
                              continue loop7;
                           }
                           if(!_loc1_)
                           {
                              continue loop3;
                           }
                           addr94:
                           while(true)
                           {
                              b2_staticBody = 0;
                              continue loop7;
                           }
                           addr77:
                           b2_dynamicBody = 2;
                           if(_loc2_ || _loc2_)
                           {
                              if(!_loc1_)
                              {
                                 continue loop2;
                              }
                              continue loop1;
                           }
                        }
                        continue loop3;
                     }
                  }
               }
            }
         }
      }
      
      b2internal var §]!p§:uint;
      
      b2internal var §"_§:int;
      
      b2internal var §"R§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §%!V§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §^!L§:b2Vec2;
      
      b2internal var §%&§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §[2§:b2Body;
      
      b2internal var §@o§:b2Body;
      
      b2internal var §6!s§:b2Fixture;
      
      b2internal var §!H§:int;
      
      b2internal var §+!f§:b2ControllerEdge;
      
      b2internal var §2&§:int;
      
      b2internal var §,!K§:b2JointEdge;
      
      b2internal var §<!7§:b2ContactEdge;
      
      b2internal var § ,§:Number;
      
      b2internal var §-7§:Number;
      
      b2internal var §-!j§:Number;
      
      b2internal var §,!o§:Number;
      
      b2internal var §?!,§:Number;
      
      b2internal var §-!G§:Number;
      
      b2internal var §7!1§:Number;
      
      b2internal var §3!T§:Number;
      
      private var §,h§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param2))
         {
            this.m_xf = new b2Transform();
            loop0:
            while(true)
            {
               this.m_sweep = new b2Sweep();
               loop1:
               while(true)
               {
                  this.§%!V§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§^!L§ = new b2Vec2();
                     loop20:
                     while(true)
                     {
                        if(!(_loc6_ || param2))
                        {
                           continue loop2;
                        }
                        this.§]!p§ |= b2internal::`4;
                        loop21:
                        while(true)
                        {
                           if(_loc7_ && this)
                           {
                              loop17:
                              while(true)
                              {
                                 if(!(_loc7_ && param2))
                                 {
                                    addr168:
                                    if(_loc6_ || _loc3_)
                                    {
                                       this.§]!p§ |= b2internal::4!-;
                                       while(true)
                                       {
                                          if(_loc6_ || param2)
                                          {
                                             if(!_loc6_)
                                             {
                                                continue loop1;
                                             }
                                             loop19:
                                             while(true)
                                             {
                                                §§push(param1.§2!8§);
                                                if(_loc6_)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      continue loop20;
                                                   }
                                                   addr114:
                                                   while(true)
                                                   {
                                                      this.m_world = param2;
                                                      if(_loc6_)
                                                      {
                                                         §§push(this.m_xf);
                                                         if(!_loc7_)
                                                         {
                                                            §§pop().position.SetV(param1.position);
                                                            continue loop20;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr297:
                                                         §§push(this.m_xf);
                                                      }
                                                      addr300:
                                                      var _loc3_:b2Mat22 = §§pop().R;
                                                      var _loc4_:b2Vec2 = this.m_sweep.localCenter;
                                                      if(!_loc7_)
                                                      {
                                                         addr771:
                                                         addr772:
                                                         addr792:
                                                         addr774:
                                                         §§push(this.m_sweep.c);
                                                         §§push(_loc3_.col1.x);
                                                         if(!(_loc7_ && _loc3_))
                                                         {
                                                            addr785:
                                                            §§push(§§pop() * _loc4_.x + _loc3_.col2.x * _loc4_.y);
                                                         }
                                                         §§pop().x = §§pop();
                                                         addr793:
                                                         §§push(this.m_sweep.c);
                                                         §§push(_loc3_.col1);
                                                         if(_loc6_)
                                                         {
                                                            addr727:
                                                            §§push(§§pop().y);
                                                            §§push(_loc4_.x);
                                                            if(!_loc7_)
                                                            {
                                                               addr730:
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc6_ || param1)
                                                               {
                                                                  §§push(_loc3_.col2);
                                                                  if(_loc6_)
                                                                  {
                                                                     addr742:
                                                                     §§push(§§pop().y);
                                                                     §§push(_loc4_.y);
                                                                     if(_loc6_)
                                                                     {
                                                                        addr747:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc6_ || param2)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              addr767:
                                                                              §§pop().y = §§pop() + §§pop();
                                                                              addr768:
                                                                              §§push(this.m_sweep);
                                                                              if(_loc6_)
                                                                              {
                                                                                 addr678:
                                                                                 §§push(§§pop().c);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(!(_loc7_ && _loc3_))
                                                                                    {
                                                                                       addr690:
                                                                                       §§push(this.m_sweep.c.x);
                                                                                       if(_loc6_ || this)
                                                                                       {
                                                                                          if(_loc6_ || _loc3_)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                addr711:
                                                                                                §§push(this.m_xf.position.x);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   addr714:
                                                                                                   §§pop().x = §§pop() + §§pop();
                                                                                                   addr715:
                                                                                                   §§push(this.m_sweep);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§push(§§pop().c);
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         §§push(this.m_sweep);
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            §§push(§§pop().c);
                                                                                                            if(_loc6_ || param2)
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  if(_loc6_ || this)
                                                                                                                  {
                                                                                                                     §§push(this.m_xf);
                                                                                                                     if(_loc6_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().position);
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().y);
                                                                                                                           if(!(_loc7_ && param1))
                                                                                                                           {
                                                                                                                              if(_loc6_ || param1)
                                                                                                                              {
                                                                                                                                 if(!(_loc7_ && param2))
                                                                                                                                 {
                                                                                                                                    addr661:
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc7_ && this))
                                                                                                                                       {
                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                          addr671:
                                                                                                                                          §§push(this.m_sweep);
                                                                                                                                          if(_loc6_ || param2)
                                                                                                                                          {
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                §§pop().c0.SetV(this.m_sweep.c);
                                                                                                                                                this.§,!K§ = null;
                                                                                                                                                this.§+!f§ = null;
                                                                                                                                                this.§<!7§ = null;
                                                                                                                                                this.§2&§ = 0;
                                                                                                                                                this.§[2§ = null;
                                                                                                                                                addr577:
                                                                                                                                                addr595:
                                                                                                                                                addr567:
                                                                                                                                                addr562:
                                                                                                                                                if(!_loc7_)
                                                                                                                                                {
                                                                                                                                                   this.§@o§ = null;
                                                                                                                                                   addr543:
                                                                                                                                                   if(_loc6_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      this.§%!V§.SetV(param1.§9!e§);
                                                                                                                                                      this.m_angularVelocity = param1.§+!o§;
                                                                                                                                                      this.§-!G§ = param1.§5!L§;
                                                                                                                                                      this.§7!1§ = param1.§&!G§;
                                                                                                                                                      addr510:
                                                                                                                                                      addr538:
                                                                                                                                                      addr531:
                                                                                                                                                      if(_loc6_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc6_ || param2)
                                                                                                                                                         {
                                                                                                                                                            this.§^!L§.Set(0,0);
                                                                                                                                                            this.§%&§ = 0;
                                                                                                                                                            addr493:
                                                                                                                                                            if(!_loc7_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  this.§3!T§ = 0;
                                                                                                                                                                  this.§"_§ = param1.type;
                                                                                                                                                                  addr476:
                                                                                                                                                                  if(!(_loc7_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     if(this.§"_§ == b2_dynamicBody)
                                                                                                                                                                     {
                                                                                                                                                                        addr451:
                                                                                                                                                                        this.§ ,§ = 1;
                                                                                                                                                                        if(_loc6_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc6_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 this.§-7§ = 1;
                                                                                                                                                                                 addr414:
                                                                                                                                                                                 this.§-!j§ = 0;
                                                                                                                                                                                 addr418:
                                                                                                                                                                                 addr445:
                                                                                                                                                                                 if(!_loc7_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§,!o§ = 0;
                                                                                                                                                                                       this.§?!,§ = param1.§=!m§;
                                                                                                                                                                                       addr395:
                                                                                                                                                                                       if(_loc6_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc7_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc7_ && param2))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc7_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§,h§ = param1.§#+§;
                                                                                                                                                                                                   addr377:
                                                                                                                                                                                                   if(!_loc7_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.§6!s§ = null;
                                                                                                                                                                                                      addr332:
                                                                                                                                                                                                      if(_loc6_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc7_ && param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc7_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc7_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc6_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc6_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           this.§!H§ = 0;
                                                                                                                                                                                                                           if(_loc6_ || this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr418);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              return;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr332);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr493);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr476);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr451);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr445);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr427:
                                                                                                                                                                                                         if(_loc6_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr414);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr577);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr377);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr395);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr595);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr510);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr436:
                                                                                                                                                                                          if(!_loc7_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc6_)
                                                                                                                                                                                             {
                                                                                                                                                                                                this.§-7§ = 0;
                                                                                                                                                                                                §§goto(addr427);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr715);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr567);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr413:
                                                                                                                                                                                       §§goto(addr413);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr577);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr538);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr793);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr768);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr543);
                                                                                                                                                                     }
                                                                                                                                                                     this.§ ,§ = 0;
                                                                                                                                                                     §§goto(addr436);
                                                                                                                                                                  }
                                                                                                                                                                  addr488:
                                                                                                                                                                  §§goto(addr488);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr531);
                                                                                                                                                            }
                                                                                                                                                            addr504:
                                                                                                                                                            §§goto(addr504);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr562);
                                                                                                                                                      }
                                                                                                                                                      addr525:
                                                                                                                                                      §§goto(addr525);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr671);
                                                                                                                                                }
                                                                                                                                                addr572:
                                                                                                                                                §§goto(addr572);
                                                                                                                                             }
                                                                                                                                             §§goto(addr771);
                                                                                                                                          }
                                                                                                                                          §§goto(addr715);
                                                                                                                                       }
                                                                                                                                       §§goto(addr785);
                                                                                                                                    }
                                                                                                                                    §§goto(addr767);
                                                                                                                                 }
                                                                                                                                 §§goto(addr727);
                                                                                                                              }
                                                                                                                              §§goto(addr747);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr711);
                                                                                                                  }
                                                                                                                  §§goto(addr714);
                                                                                                               }
                                                                                                               §§goto(addr661);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr690);
                                                                                                      }
                                                                                                      §§goto(addr678);
                                                                                                   }
                                                                                                   §§goto(addr767);
                                                                                                }
                                                                                                §§goto(addr742);
                                                                                             }
                                                                                             §§goto(addr727);
                                                                                          }
                                                                                          §§goto(addr730);
                                                                                       }
                                                                                       §§goto(addr714);
                                                                                    }
                                                                                    §§goto(addr772);
                                                                                 }
                                                                              }
                                                                              §§goto(addr771);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr785);
                                                               }
                                                               §§goto(addr792);
                                                            }
                                                            §§goto(addr785);
                                                         }
                                                         §§goto(addr774);
                                                      }
                                                      §§goto(addr510);
                                                   }
                                                }
                                                addr153:
                                                while(_loc6_ || _loc3_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      continue loop17;
                                                   }
                                                   continue loop19;
                                                }
                                                loop10:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop11:
                                                      while(true)
                                                      {
                                                         if(_loc6_ || this)
                                                         {
                                                            this.§]!p§ |= b2internal::[J;
                                                            if(!_loc7_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(param1.§ !U§);
                                                                  break loop19;
                                                               }
                                                               addr191:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr297);
                                                            }
                                                         }
                                                         addr246:
                                                         while(true)
                                                         {
                                                            this.§]!p§ |= b2internal::7!y;
                                                            break loop11;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         addr222:
                                                         while(true)
                                                         {
                                                            continue loop10;
                                                         }
                                                      }
                                                      addr226:
                                                      addr252:
                                                   }
                                                   §§goto(addr191);
                                                }
                                             }
                                             loop13:
                                             while(!(_loc7_ && _loc3_))
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc6_ || param2)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      this.§]!p§ |= b2internal::<!O;
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr153);
                                                         }
                                                      }
                                                      §§goto(addr226);
                                                   }
                                                   while(true)
                                                   {
                                                      this.§]!p§ = 0;
                                                      addr257:
                                                      while(true)
                                                      {
                                                         §§push(param1.§6!b§);
                                                         break loop13;
                                                      }
                                                   }
                                                   addr261:
                                                   addr217:
                                                }
                                                §§goto(addr150);
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   §§goto(addr246);
                                                }
                                                §§goto(addr222);
                                                §§goto(addr194);
                                             }
                                             addr194:
                                          }
                                          §§goto(addr257);
                                          addr50:
                                          if(!(_loc6_ || this))
                                          {
                                             continue;
                                          }
                                          if(false)
                                          {
                                             while(true)
                                             {
                                                §§push(this.m_sweep);
                                                if(_loc6_)
                                                {
                                                   §§pop().localCenter.§&!K§();
                                                   if(!(_loc7_ && this))
                                                   {
                                                      §§push(this.m_sweep);
                                                      if(!(_loc6_ || this))
                                                      {
                                                         break;
                                                      }
                                                      §§pop().§!%§ = 1;
                                                      if(_loc6_ || this)
                                                      {
                                                         continue loop21;
                                                      }
                                                   }
                                                   §§goto(addr297);
                                                }
                                                break;
                                             }
                                             addr59:
                                          }
                                          else
                                          {
                                             §§push(this.m_sweep);
                                          }
                                          §§pop().a0 = this.m_sweep.a = param1.angle;
                                          §§goto(addr297);
                                       }
                                       continue loop2;
                                    }
                                    addr267:
                                    while(true)
                                    {
                                       super();
                                       §§goto(addr168);
                                    }
                                    §§goto(addr261);
                                 }
                                 §§goto(addr252);
                              }
                           }
                           §§goto(addr114);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr267);
      }
      
      private function §%!k§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Number = Math.atan2(param2.§,S§().y,param2.§,S§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§4%§(_loc5_,param2.§,S§());
         _loc6_ = b2Math.§9!<§(_loc6_,param2.§4!9§());
         _loc6_ = b2Math.§4%§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§5I§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§5I§(param1.§,S§(),param2.§,S§())).Normalize();
         var _loc8_:* = b2Math.§+!1§(param1.§,S§(),param2.§4!9§()) > 0;
         if(!_loc10_)
         {
            param1.§<!p§(param2,_loc6_,_loc7_,_loc8_);
            do
            {
               param2.§5;§(param1,_loc6_,_loc7_,_loc8_);
            }
            while(!(_loc9_ || param3));
            
         }
         return _loc4_;
      }
      
      public function §[8§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§2U§ = null;
         if(_loc7_ || this)
         {
            if(this.m_world.§+!#§() == true)
            {
               if(_loc7_)
               {
                  §§goto(addr34);
               }
            }
            var _loc2_:b2Fixture = new b2Fixture();
            if(_loc7_)
            {
               _loc2_.§1#§(this,this.m_xf,param1);
               if(!(_loc6_ && this))
               {
                  if(this.§]!p§ & b2internal::`4)
                  {
                     if(_loc7_)
                     {
                        §§push(this.m_world);
                        if(_loc7_)
                        {
                           _loc3_ = §§pop().§`N§.§0!f§;
                           if(_loc7_ || param1)
                           {
                              _loc2_.§1!@§(_loc3_,this.m_xf);
                              addr92:
                              _loc2_.§@o§ = this.§6!s§;
                              if(!_loc6_)
                              {
                                 this.§6!s§ = _loc2_;
                                 if(_loc7_ || _loc3_)
                                 {
                                    var _loc4_:*;
                                    §§push((_loc4_ = this).§!H§);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc5_:* = §§pop();
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       _loc4_.§!H§ = _loc5_;
                                    }
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       _loc2_.m_body = this;
                                       addr191:
                                       loop5:
                                       while(true)
                                       {
                                          if(_loc2_.§?!T§ > 0)
                                          {
                                             loop1:
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   continue loop5;
                                                }
                                                while(true)
                                                {
                                                   this.§!m§();
                                                   addr187:
                                                   while(true)
                                                   {
                                                      break loop1;
                                                   }
                                                }
                                                continue loop5;
                                             }
                                             addr183:
                                          }
                                          loop4:
                                          while(true)
                                          {
                                             §§push(this.m_world);
                                             addr144:
                                             while(true)
                                             {
                                                §§push(this.m_world.§]!p§);
                                                if(_loc7_ || param1)
                                                {
                                                   §§push(§§pop() | b2World.§&`§);
                                                }
                                                §§pop().§]!p§ = §§pop();
                                                if(!_loc6_)
                                                {
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr183);
                                                }
                                                §§goto(addr187);
                                                continue loop4;
                                             }
                                          }
                                       }
                                       addr191:
                                       addr135:
                                    }
                                 }
                                 return _loc2_;
                              }
                              §§goto(addr185);
                           }
                           §§goto(addr92);
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr191);
                  }
                  §§goto(addr92);
               }
               §§goto(addr135);
            }
            §§goto(addr191);
         }
         addr34:
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
         
         return this.§[8§(_loc3_);
      }
      
      public function §"l§(param1:b2Fixture) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§2U§ = null;
         if(!(_loc12_ && param1))
         {
            if(this.m_world.§+!#§() == true)
            {
               if(_loc13_ || this)
               {
                  return;
               }
            }
         }
         var _loc2_:b2Fixture = this.§6!s§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         loop0:
         for(; _loc2_ != null; _loc3_ = _loc2_,_loc2_ = _loc2_.§@o§)
         {
            if(_loc2_ != param1)
            {
               continue;
            }
            if(_loc13_)
            {
               if(!_loc3_)
               {
                  this.§6!s§ = param1.§@o§;
                  if(_loc13_ || _loc2_)
                  {
                  }
                  break;
               }
               if(_loc13_ || _loc3_)
               {
                  addr104:
                  _loc3_.§@o§ = param1.§@o§;
               }
               while(true)
               {
                  addr73:
                  while(true)
                  {
                  }
               }
               addr108:
               while(true)
               {
                  _loc4_ = true;
                  if(_loc13_ || this)
                  {
                     if(_loc13_)
                     {
                        if(true)
                        {
                           break loop0;
                        }
                        continue;
                     }
                     §§goto(addr108);
                  }
                  break loop0;
               }
            }
            §§goto(addr104);
         }
         var _loc5_:b2ContactEdge = this.§<!7§;
         if(_loc13_ || _loc2_)
         {
            while(_loc5_)
            {
               _loc6_ = _loc5_.§80§;
               _loc5_ = _loc5_.§#!R§;
               _loc7_ = _loc6_.§68§();
               _loc8_ = _loc6_.§[t§();
               if(_loc13_ || _loc2_)
               {
                  §§push(param1 == _loc7_);
                  if(_loc13_ || _loc2_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc12_ && this))
                        {
                           §§pop();
                           if(_loc12_ && param1)
                           {
                              continue;
                           }
                           addr193:
                           §§push(param1 == _loc8_);
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(!(_loc12_ && this))
                     {
                        this.m_world.§`N§.§,!W§(_loc6_);
                     }
                  }
                  continue;
               }
               §§goto(addr193);
            }
            if(!_loc12_)
            {
               if(this.§]!p§ & b2internal::`4)
               {
                  if(_loc13_)
                  {
                     addr220:
                     _loc9_ = this.m_world.§`N§.§0!f§;
                     if(!(_loc12_ && _loc2_))
                     {
                        param1.§for §(_loc9_);
                        addr236:
                        param1.§,!W§();
                        if(!(_loc12_ && this))
                        {
                           param1.m_body = null;
                           if(_loc13_)
                           {
                              §§goto(addr250);
                           }
                        }
                        §§goto(addr297);
                     }
                     §§goto(addr236);
                  }
                  §§goto(addr260);
               }
               §§goto(addr236);
            }
            addr250:
            param1.§@o§ = null;
            if(_loc13_ || _loc3_)
            {
               addr260:
               var _loc10_:*;
               §§push((_loc10_ = this).§!H§);
               if(!(_loc12_ && param1))
               {
                  §§push(§§pop() - 1);
               }
               var _loc11_:* = §§pop();
               if(!_loc12_)
               {
                  _loc10_.§!H§ = _loc11_;
               }
               if(!(_loc12_ && param1))
               {
                  addr297:
                  this.§!m§();
               }
            }
            return;
         }
         §§goto(addr220);
      }
      
      public function §%!t§(param1:b2Vec2, param2:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:b2Fixture = null;
         if(_loc9_ || this)
         {
            if(this.m_world.§+!#§() == true)
            {
               if(!(_loc8_ && param2))
               {
                  return;
               }
               while(true)
               {
                  loop2:
                  for(; !(_loc8_ && param1); §§pop().position.SetV(param1),if(_loc8_ && _loc3_)
                  {
                     continue;
                  },if(false)
                  {
                     while(true)
                     {
                        §§push(this.m_xf);
                        if(_loc8_)
                        {
                           break;
                        }
                        §§push(§§pop().R);
                        if(_loc9_)
                        {
                           §§pop().Set(param2);
                           continue loop2;
                        }
                        §§goto(addr85);
                     }
                     addr50:
                  }
                  else
                  {
                     §§push(this.m_xf);
                  },§§goto(addr85))
                  {
                     while(true)
                     {
                        §§push(this.m_xf);
                        if(_loc9_ || param1)
                        {
                           continue loop2;
                        }
                        addr85:
                        var _loc4_:b2Mat22 = §§pop().R;
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
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(_loc5_.x);
                                       if(!_loc8_)
                                       {
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
                                             loop19:
                                             while(!(_loc8_ && param1))
                                             {
                                                §§pop().y = §§pop();
                                                loop20:
                                                while(true)
                                                {
                                                   §§push(this.m_sweep);
                                                   loop21:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().c);
                                                      addr220:
                                                      while(true)
                                                      {
                                                         §§push(this.m_sweep);
                                                         addr222:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().c);
                                                            addr223:
                                                            loop24:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(_loc9_ || param2)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     §§push(this.m_xf);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().position);
                                                                        addr236:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           addr237:
                                                                           loop27:
                                                                           while(true)
                                                                           {
                                                                              if(_loc9_ || this)
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       addr249:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       while(!_loc8_)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          §§pop().x = §§pop();
                                                                                          if(!(_loc9_ || param1))
                                                                                          {
                                                                                             §§goto(addr355);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.m_sweep);
                                                                                             continue loop21;
                                                                                          }
                                                                                          if(!(_loc9_ || _loc3_))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             continue loop19;
                                                                                          }
                                                                                          §§pop().y = §§pop();
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             continue loop20;
                                                                                          }
                                                                                          §§goto(addr355);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc5_.x);
                                                                                          break loop27;
                                                                                       }
                                                                                       addr249:
                                                                                       addr280:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       addr342:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().x = §§pop();
                                                                                          addr343:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.m_sweep);
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop3;
                                                                                          }
                                                                                          addr346:
                                                                                          §§pop().a0 = this.m_sweep.a = param2;
                                                                                          addr355:
                                                                                          var _loc6_:§2U§ = this.m_world.§`N§.§0!f§;
                                                                                          _loc3_ = this.§6!s§;
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                if(_loc9_ || param2)
                                                                                                {
                                                                                                   this.m_world.§`N§.§,K§();
                                                                                                   break;
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             _loc3_.§^!7§(_loc6_,this.m_xf,this.m_xf);
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             _loc3_ = _loc3_.§@o§;
                                                                                          }
                                                                                          return;
                                                                                       }
                                                                                    }
                                                                                    addr341:
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              addr314:
                                                                              while(true)
                                                                              {
                                                                                 continue loop19;
                                                                              }
                                                                           }
                                                                           while(!_loc8_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              break loop24;
                                                                           }
                                                                           §§goto(addr338);
                                                                        }
                                                                     }
                                                                     addr235:
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr249);
                                                            }
                                                            while(true)
                                                            {
                                                               if(!(_loc8_ && this))
                                                               {
                                                                  §§push(_loc4_.col2);
                                                                  if(!(_loc9_ || _loc3_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§§pop().y);
                                                                  if(_loc9_ || param2)
                                                                  {
                                                                     §§push(_loc5_.y);
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr340);
                                                                     }
                                                                  }
                                                                  §§goto(addr314);
                                                               }
                                                               §§goto(addr342);
                                                            }
                                                            §§goto(addr337);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr341);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr215);
                     }
                  }
               }
            }
            §§goto(addr50);
         }
         §§goto(addr67);
      }
      
      public function §9E§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§%!t§(param1.position,param1.GetAngle());
         }
      }
      
      public function §7§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §>!Y§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§%!t§(param1,this.GetAngle());
         }
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §=!y§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§%!t§(this.GetPosition(),param1);
         }
      }
      
      public function §64§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §0Z§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.§"_§ == b2_staticBody)
            {
               if(!(_loc2_ && this))
               {
                  return;
               }
               addr59:
               while(true)
               {
               }
               addr59:
            }
            while(true)
            {
               this.§%!V§.SetV(param1);
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr59);
            }
            return;
         }
         §§goto(addr59);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§%!V§;
      }
      
      public function §^j§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(this.§"_§ == b2_staticBody)
            {
               if(_loc2_)
               {
                  return;
               }
               while(true)
               {
                  §§goto(addr38);
               }
            }
            addr38:
            §§goto(addr49);
         }
         addr49:
         while(true)
         {
            this.m_angularVelocity = param1;
            if(!(_loc3_ && _loc3_))
            {
               break;
            }
            continue loop0;
         }
      }
      
      public function §8!G§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §9Q§() : b2BodyDef
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2BodyDef = new b2BodyDef();
         if(_loc2_ || _loc2_)
         {
            _loc1_.type = this.§'!_§();
            loop0:
            while(true)
            {
               _loc1_.§ !U§ = (this.§]!p§ & b2internal::<!O) == b2internal::<!O;
               loop1:
               while(true)
               {
                  _loc1_.angle = this.GetAngle();
                  loop2:
                  while(true)
                  {
                     _loc1_.§&!G§ = this.§7!1§;
                     loop3:
                     while(true)
                     {
                        _loc1_.§+!o§ = this.m_angularVelocity;
                        loop4:
                        while(true)
                        {
                           _loc1_.§2M§ = (this.§]!p§ & b2internal::[J) == b2internal::[J;
                           continue loop3;
                           addr57:
                           if(_loc3_ && this)
                           {
                              continue;
                           }
                           _loc1_.§#+§ = this.GetUserData();
                           addr64:
                           if(!_loc3_)
                           {
                              addr40:
                              if(_loc3_ && _loc2_)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       if(_loc3_)
                                       {
                                          continue loop2;
                                       }
                                       _loc1_.§9!e§.SetV(this.GetLinearVelocity());
                                       loop10:
                                       while(true)
                                       {
                                          _loc1_.position = this.GetPosition();
                                          addr55:
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                continue loop10;
                                             }
                                             §§goto(addr57);
                                             §§goto(addr64);
                                          }
                                          continue loop4;
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             _loc1_.§5!L§ = this.§-!G§;
                                             continue loop9;
                                          }
                                          continue loop0;
                                       }
                                       addr103:
                                    }
                                 }
                                 continue loop1;
                              }
                              if(_loc2_)
                              {
                                 return _loc1_;
                              }
                              continue loop3;
                           }
                           §§goto(addr55);
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            _loc1_.§6!b§ = (this.§]!p§ & b2internal::7!y) == b2internal::7!y;
            §§goto(addr115);
         }
      }
      
      public function §,^§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.§"_§ == b2_dynamicBody)
            {
               loop0:
               while(this.IsAwake() == false)
               {
                  if(_loc3_ || param1)
                  {
                     if(_loc4_)
                     {
                        continue;
                     }
                     this.SetAwake(true);
                  }
                  while(_loc3_)
                  {
                     while(true)
                     {
                        break loop0;
                     }
                     loop9:
                     for(; _loc3_ || _loc3_; §§pop().§%&§ = §§pop(),if(_loc4_ && this)
                     {
                        continue;
                     },if(!_loc4_)
                     {
                        return;
                     },addr176:,loop8:
                     while(true)
                     {
                        §§push(this.§^!L§);
                        if(_loc4_)
                        {
                           break;
                        }
                        §§push(this.§^!L§);
                        if(_loc3_ || this)
                        {
                           §§push(§§pop().y);
                           if(!(_loc4_ && param1))
                           {
                              if(_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    addr154:
                                    §§push(param1.y);
                                    if(_loc3_ || param1)
                                    {
                                       addr164:
                                       §§pop().y = §§pop() + §§pop();
                                       continue loop9;
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(param1.x);
                                    }
                                    addr179:
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    §§goto(addr154);
                                 }
                              }
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 continue loop8;
                              }
                           }
                           §§goto(addr164);
                        }
                        else
                        {
                           while(true)
                           {
                           }
                           addr178:
                        }
                        §§goto(addr179);
                     },while(true)
                     {
                        §§goto(addr178);
                        §§goto(addr193);
                     },addr193:)
                     {
                        §§push(this);
                        §§push(this.§%&§);
                        if(_loc4_ && param2)
                        {
                           continue;
                        }
                        §§push(param2.x);
                        if(!(_loc4_ && param2))
                        {
                           §§push(this.m_sweep.c.x);
                           if(!(_loc4_ && _loc3_))
                           {
                              §§push(§§pop() - §§pop());
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(param1.y);
                                 if(_loc3_ || param2)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc4_)
                                    {
                                       addr74:
                                       §§push(param2.y);
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          addr83:
                                          §§push(this.m_sweep.c.y);
                                          if(_loc3_ || this)
                                          {
                                             addr115:
                                             §§push(§§pop() - §§pop());
                                             if(_loc3_ || this)
                                             {
                                                §§push(param1.x);
                                             }
                                             §§push(§§pop() + (§§pop() - §§pop()));
                                             continue;
                                          }
                                          §§goto(addr115);
                                          §§push(§§pop() * §§pop());
                                       }
                                    }
                                 }
                                 §§goto(addr115);
                              }
                              §§goto(addr74);
                           }
                           §§goto(addr83);
                        }
                        §§goto(addr74);
                     }
                  }
                  return;
               }
               while(true)
               {
                  §§goto(addr176);
               }
            }
            §§goto(addr218);
         }
         §§goto(addr213);
      }
      
      public function §6!j§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(this.§"_§ == b2_dynamicBody)
            {
               loop0:
               do
               {
                  if(this.IsAwake() == false)
                  {
                     if(_loc3_)
                     {
                        if(!(_loc3_ || _loc2_))
                        {
                           §§goto(addr95);
                        }
                        this.SetAwake(true);
                     }
                     loop1:
                     while(true)
                     {
                        addr29:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§%&§);
                           if(!_loc2_)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§%&§ = §§pop();
                           if(_loc3_ || this)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr29);
               }
               while(!(_loc3_ || _loc3_));
               
               return;
               addr72:
            }
            addr95:
            return;
         }
         §§goto(addr72);
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.§"_§ == b2_dynamicBody)
            {
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     while(true)
                     {
                        this.SetAwake(true);
                        addr208:
                        §§goto(addr220);
                     }
                     addr205:
                  }
                  while(true)
                  {
                     §§push(this.§%!V§);
                     loop4:
                     while(true)
                     {
                        §§push(this.§%!V§);
                        addr179:
                        while(true)
                        {
                           §§push(§§pop().x);
                           addr180:
                           while(true)
                           {
                              §§push(this.§-7§);
                              if(!_loc4_)
                              {
                                 addr196:
                                 §§push(param1.x);
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                 }
                                 addr196:
                              }
                              addr197:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr198:
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
            addr220:
            while(_loc3_ || param2)
            {
               while(true)
               {
               }
            }
            return;
         }
         §§goto(addr215);
      }
      
      public function §@!B§(param1:Function) : b2Body
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         §§push(this.§8!G§());
         if(!_loc16_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:b2Vec2 = this.§64§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§!!$§(this.§9Q§());
         var _loc8_:b2Fixture = _loc5_.§6!s§;
         while(true)
         {
            if(!_loc8_)
            {
               if(_loc17_ || param1)
               {
                  _loc5_.§!m§();
                  if(!(_loc16_ && _loc3_))
                  {
                     break;
                  }
                  addr211:
                  var _loc9_:b2Vec2 = _loc5_.§64§();
                  var _loc10_:b2Vec2 = _loc6_.§64§();
                  var _loc11_:b2Vec2 = b2Math.§5I§(_loc2_,b2Math.§8!Z§(_loc3_,b2Math.§9!<§(_loc9_,_loc4_)));
                  var _loc12_:b2Vec2 = b2Math.§5I§(_loc2_,b2Math.§8!Z§(_loc3_,b2Math.§9!<§(_loc10_,_loc4_)));
                  if(!(_loc16_ && _loc3_))
                  {
                     _loc5_.SetLinearVelocity(_loc11_);
                     loop1:
                     while(true)
                     {
                        _loc6_.SetLinearVelocity(_loc12_);
                        while(true)
                        {
                           _loc5_.§^j§(_loc3_);
                           continue loop1;
                           addr289:
                           if(_loc17_ || _loc3_)
                           {
                              _loc5_.§9%§();
                              addr272:
                              while(!_loc16_)
                              {
                                 _loc6_.§9%§();
                                 if(_loc17_)
                                 {
                                    return _loc6_;
                                 }
                              }
                              while(!(_loc16_ && this))
                              {
                                 §§goto(addr289);
                              }
                              continue loop1;
                              addr272:
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     _loc6_.§^j§(_loc3_);
                     §§goto(addr272);
                  }
               }
               break;
            }
            if(!param1(_loc8_))
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§@o§;
               continue;
            }
            if(!(_loc17_ || _loc3_))
            {
               break;
            }
            _loc13_ = _loc8_.§@o§;
            if(_loc17_)
            {
               if(_loc7_)
               {
                  if(!(_loc16_ && _loc2_))
                  {
                     _loc7_.§@o§ = _loc13_;
                     if(!_loc16_)
                     {
                        addr92:
                        var _loc14_:*;
                        §§push((_loc14_ = _loc5_).§!H§);
                        if(!_loc16_)
                        {
                           §§push(§§pop() - 1);
                        }
                        var _loc15_:* = §§pop();
                        if(_loc17_ || _loc2_)
                        {
                           _loc14_.§!H§ = _loc15_;
                        }
                        if(_loc17_ || _loc2_)
                        {
                           _loc8_.§@o§ = _loc6_.§6!s§;
                           if(!(_loc16_ && _loc2_))
                           {
                              _loc6_.§6!s§ = _loc8_;
                              if(_loc17_ || _loc3_)
                              {
                                 addr140:
                                 §§push((_loc14_ = _loc6_).§!H§);
                                 if(!(_loc16_ && _loc2_))
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 _loc15_ = §§pop();
                                 if(!_loc16_)
                                 {
                                    _loc14_.§!H§ = _loc15_;
                                 }
                                 if(!(_loc16_ && _loc3_))
                                 {
                                    addr177:
                                    _loc8_.m_body = _loc6_;
                                 }
                              }
                              _loc8_ = _loc13_;
                              continue;
                           }
                        }
                        addr86:
                     }
                     §§goto(addr140);
                  }
                  §§goto(addr177);
               }
               else
               {
                  _loc5_.§6!s§ = _loc13_;
                  if(_loc17_)
                  {
                     §§goto(addr92);
                  }
               }
               §§goto(addr140);
            }
            §§goto(addr86);
         }
         _loc6_.§!m§();
         §§goto(addr211);
      }
      
      public function § _§(param1:b2Body) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§6!s§;
         for(; _loc2_; _loc2_ = _loc11_)
         {
            _loc11_ = _loc2_.§@o§;
            if(!_loc15_)
            {
               var _loc12_:*;
               §§push((_loc12_ = param1).§!H§);
               if(_loc14_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc13_:* = §§pop();
               if(_loc14_)
               {
                  _loc12_.§!H§ = _loc13_;
               }
               if(!_loc15_)
               {
                  _loc2_.§@o§ = this.§6!s§;
                  if(_loc14_ || param1)
                  {
                     this.§6!s§ = _loc2_;
                     if(_loc14_ || _loc2_)
                     {
                        §§push((_loc12_ = this).§!H§);
                        if(_loc14_)
                        {
                           §§push(§§pop() + 1);
                        }
                        _loc13_ = §§pop();
                        if(_loc14_ || this)
                        {
                           _loc12_.§!H§ = _loc13_;
                        }
                        if(!_loc14_)
                        {
                           continue;
                        }
                     }
                  }
                  _loc2_.m_body = _loc4_;
               }
            }
         }
         if(_loc14_)
         {
            _loc3_.§!H§ = 0;
         }
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§64§();
         var _loc6_:b2Vec2 = _loc4_.§64§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         §§push(_loc3_.§8!G§());
         if(_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§8!G§());
         if(!(_loc15_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         if(_loc14_ || _loc2_)
         {
            _loc3_.§!m§();
            do
            {
               this.§9%§();
            }
            while(_loc15_ && _loc2_);
            
         }
      }
      
      public function GetMass() : Number
      {
         return this.§ ,§;
      }
      
      public function §1U§() : Number
      {
         return this.§-!j§;
      }
      
      public function §-!`§(param1:b2MassData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            param1.§]J§ = this.§ ,§;
            while(true)
            {
               param1.§93§ = this.§-!j§;
               loop1:
               while(_loc3_)
               {
                  while(true)
                  {
                     param1.center.SetV(this.m_sweep.localCenter);
                     if(_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
      }
      
      public function §+!?§(param1:b2MassData) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            §§push(b2Settings);
            §§push(this.m_world.§+!#§());
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() == false);
            }
            §§pop().b2Assert(§§pop());
            loop0:
            while(true)
            {
               §§push(this.m_world.§+!#§());
               addr272:
               loop1:
               while(true)
               {
                  §§push(true);
                  addr273:
                  while(§§pop() != §§pop())
                  {
                     while(true)
                     {
                        §§push(this.§"_§);
                        addr257:
                        while(true)
                        {
                           if(§§pop() == b2_dynamicBody)
                           {
                              while(true)
                              {
                                 this.§-7§ = 0;
                                 addr253:
                                 while(true)
                                 {
                                    this.§-!j§ = 0;
                                    loop7:
                                    while(true)
                                    {
                                       this.§,!o§ = 0;
                                       addr226:
                                       while(!(_loc4_ && param1))
                                       {
                                          while(true)
                                          {
                                             this.§ ,§ = param1.§]J§;
                                             addr221:
                                             while(true)
                                             {
                                                §§push(this.§ ,§);
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr204:
                                                   while(true)
                                                   {
                                                      if(§§pop() <= §§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            this.§ ,§ = 1;
                                                            continue loop0;
                                                         }
                                                         addr205:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            this.§-7§ = 1 / this.§ ,§;
                                                            addr197:
                                                            while(!_loc4_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            continue loop7;
                                                         }
                                                         addr190:
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              addr249:
                           }
                           §§goto(addr259);
                        }
                     }
                  }
                  addr274:
                  return;
                  loop17:
                  while(true)
                  {
                     if(_loc4_ && param1)
                     {
                        continue loop1;
                     }
                     §§push(§§pop());
                     if(_loc3_)
                     {
                        if(!§§pop())
                        {
                           loop21:
                           while(§§pop())
                           {
                              loop22:
                              for(; !(_loc4_ && param1); if(!(_loc3_ || this))
                              {
                                 continue;
                              },if(!(_loc4_ && param1))
                              {
                                 if(!_loc4_)
                                 {
                                    if(_loc4_)
                                    {
                                       break loop17;
                                    }
                                    if(true)
                                    {
                                       break loop21;
                                    }
                                    loop20:
                                    while(true)
                                    {
                                       §§push(this.§]!p§ & b2internal::[J);
                                       if(_loc3_ || _loc3_)
                                       {
                                          addr70:
                                          §§push(§§pop() == 0);
                                          if(_loc3_ || _loc2_)
                                          {
                                             continue loop17;
                                          }
                                          addr182:
                                          while(true)
                                          {
                                             §§pop();
                                             addr183:
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      continue loop20;
                                                   }
                                                   §§goto(addr274);
                                                }
                                                §§goto(addr221);
                                             }
                                             §§goto(addr253);
                                             §§goto(addr70);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr257);
                                       }
                                       addr259:
                                       return;
                                    }
                                    continue loop17;
                                 }
                                 §§goto(addr205);
                              },§§goto(addr183))
                              {
                                 if(_loc3_)
                                 {
                                    §§push(this);
                                    §§push(param1.§93§);
                                    if(_loc3_ || param1)
                                    {
                                       §§push(this.§ ,§);
                                       if(_loc3_ || this)
                                       {
                                          §§push(param1.center.x);
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§push(param1.center);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop().x);
                                                if(!_loc4_)
                                                {
                                                   addr147:
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc4_)
                                                   {
                                                      addr138:
                                                      §§push(param1.center.y);
                                                      if(!_loc4_)
                                                      {
                                                         addr141:
                                                         §§push(§§pop() * param1.center.y);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§pop().§-!j§ = §§pop() - §§pop() * §§pop();
                                                   while(_loc3_)
                                                   {
                                                      this.§,!o§ = 1 / this.§-!j§;
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         continue loop22;
                                                      }
                                                   }
                                                   §§goto(addr197);
                                                }
                                                §§goto(addr141);
                                             }
                                          }
                                          §§goto(addr138);
                                       }
                                    }
                                    §§goto(addr147);
                                 }
                                 §§goto(addr226);
                              }
                              continue loop0;
                           }
                           var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
                           if(!_loc4_)
                           {
                              addr487:
                              this.m_sweep.localCenter.SetV(param1.center);
                              addr491:
                              §§push(this.m_sweep);
                              if(!_loc4_)
                              {
                                 §§pop().c0.SetV(b2Math.§#!<§(this.m_xf,this.m_sweep.localCenter));
                                 addr484:
                                 §§push(this.m_sweep);
                                 if(!(_loc4_ && param1))
                                 {
                                    §§pop().c.SetV(this.m_sweep.c0);
                                    addr445:
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       if(!(_loc4_ && this))
                                       {
                                          addr428:
                                          this.§%!V§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
                                          addr429:
                                          addr427:
                                          addr425:
                                          addr426:
                                          addr424:
                                          addr422:
                                          addr421:
                                          addr420:
                                          addr418:
                                          addr416:
                                          addr415:
                                          §§push(this.§%!V§);
                                          if(!_loc4_)
                                          {
                                             §§push(this.§%!V§);
                                             if(!(_loc4_ && param1))
                                             {
                                                §§push(§§pop().y);
                                                if(!_loc4_)
                                                {
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      §§push(this.m_angularVelocity);
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            §§push(this.m_sweep);
                                                            if(_loc3_ || this)
                                                            {
                                                               §§push(§§pop().c);
                                                               if(_loc3_ || this)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(_loc3_)
                                                                  {
                                                                     if(!(_loc4_ && _loc2_))
                                                                     {
                                                                        §§push(_loc2_.x);
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc3_)
                                                                           {
                                                                              if(_loc3_ || param1)
                                                                              {
                                                                                 addr386:
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!(_loc4_ && _loc2_))
                                                                                 {
                                                                                    addr394:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr397:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§pop().y = §§pop();
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             if(!(_loc3_ || this))
                                                                                             {
                                                                                                §§goto(addr445);
                                                                                             }
                                                                                             return;
                                                                                          }
                                                                                          §§goto(addr429);
                                                                                       }
                                                                                       §§goto(addr428);
                                                                                    }
                                                                                    §§goto(addr427);
                                                                                 }
                                                                                 §§goto(addr425);
                                                                              }
                                                                              §§goto(addr426);
                                                                           }
                                                                           §§goto(addr386);
                                                                        }
                                                                        §§goto(addr424);
                                                                     }
                                                                     §§goto(addr422);
                                                                  }
                                                                  §§goto(addr386);
                                                               }
                                                               §§goto(addr421);
                                                            }
                                                            §§goto(addr420);
                                                         }
                                                         §§goto(addr418);
                                                      }
                                                      §§goto(addr394);
                                                   }
                                                   §§goto(addr416);
                                                }
                                                §§goto(addr397);
                                             }
                                             §§goto(addr415);
                                          }
                                          addr413:
                                          §§goto(addr413);
                                       }
                                       §§goto(addr491);
                                    }
                                    §§goto(addr484);
                                 }
                                 §§goto(addr491);
                              }
                              §§goto(addr487);
                           }
                           §§goto(addr428);
                           addr86:
                        }
                        §§goto(addr182);
                     }
                     else
                     {
                        §§goto(addr273);
                     }
                     §§goto(addr86);
                  }
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr249);
                  }
                  §§goto(addr254);
               }
            }
         }
         §§goto(addr243);
      }
      
      public function §!m§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2MassData = null;
         if(_loc5_)
         {
            this.§ ,§ = 0;
            loop0:
            while(true)
            {
               this.§-7§ = 0;
               while(true)
               {
                  this.§-!j§ = 0;
                  loop2:
                  while(!(_loc6_ && _loc3_))
                  {
                     this.§,!o§ = 0;
                     loop3:
                     while(true)
                     {
                        this.m_sweep.localCenter.§&!K§();
                        while(!_loc6_)
                        {
                           continue loop0;
                           loop10:
                           for(; !(_loc6_ && this); while(true)
                           {
                              §§pop();
                              continue loop10;
                           })
                           {
                              if(!_loc5_)
                              {
                                 continue loop3;
                              }
                              §§push(this.§"_§);
                              if(_loc5_ || _loc2_)
                              {
                                 §§push(b2_kinematicBody);
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!_loc5_)
                                    {
                                       continue;
                                    }
                                    loop9:
                                    while(§§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          if(!(_loc6_ && this))
                                          {
                                             return;
                                          }
                                          continue loop10;
                                       }
                                       if(true)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          §§push(this.§"_§);
                                          addr60:
                                          while(true)
                                          {
                                             §§push(b2_staticBody);
                                             addr61:
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(!(_loc6_ && _loc1_))
                                                {
                                                   if(!§§pop())
                                                   {
                                                      continue loop10;
                                                   }
                                                   continue loop9;
                                                }
                                                continue loop10;
                                             }
                                          }
                                       }
                                    }
                                    var _loc1_:b2Vec2 = b2Vec2.§9!h§(0,0);
                                    var _loc2_:b2Fixture = this.§6!s§;
                                    addr254:
                                    if(_loc2_)
                                    {
                                       §§push(_loc2_.§?!T§);
                                       if(!_loc6_)
                                       {
                                          §§push(0);
                                          if(!_loc6_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc5_ || _loc2_)
                                                {
                                                   addr250:
                                                   _loc2_ = _loc2_.§@o§;
                                                   §§goto(addr254);
                                                }
                                                addr447:
                                                §§push((this.§]!p§ & b2internal::[J) == 0);
                                                if(_loc5_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      addr393:
                                                      if(!§§pop())
                                                      {
                                                         this.§-!j§ = 0;
                                                         addr314:
                                                         if(!(_loc6_ && this))
                                                         {
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               if(_loc5_ || this)
                                                               {
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     this.§,!o§ = 0;
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(!(_loc6_ && _loc1_))
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(_loc1_);
                                                                                    §§push(_loc1_.y);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(§§pop() * this.§-7§);
                                                                                    }
                                                                                    §§pop().y = §§pop();
                                                                                    addr469:
                                                                                    §§push(this.§-!j§ > 0);
                                                                                    if(this.§-!j§ > 0)
                                                                                    {
                                                                                       addr444:
                                                                                       §§pop();
                                                                                       addr445:
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§goto(addr447);
                                                                                       }
                                                                                       §§goto(addr469);
                                                                                    }
                                                                                    §§goto(addr393);
                                                                                    addr484:
                                                                                 }
                                                                                 if(false)
                                                                                 {
                                                                                    addr308:
                                                                                 }
                                                                                 var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
                                                                                 if(_loc5_ || this)
                                                                                 {
                                                                                    addr701:
                                                                                    this.m_sweep.localCenter.SetV(_loc1_);
                                                                                    addr704:
                                                                                    §§push(this.m_sweep);
                                                                                    if(!(_loc6_ && _loc2_))
                                                                                    {
                                                                                       §§pop().c0.SetV(b2Math.§#!<§(this.m_xf,this.m_sweep.localCenter));
                                                                                       addr698:
                                                                                       §§push(this.m_sweep);
                                                                                       if(!(_loc6_ && _loc2_))
                                                                                       {
                                                                                          §§pop().c.SetV(this.m_sweep.c0);
                                                                                          addr661:
                                                                                          if(!(_loc6_ && _loc3_))
                                                                                          {
                                                                                             addr616:
                                                                                             addr637:
                                                                                             addr636:
                                                                                             addr615:
                                                                                             addr613:
                                                                                             §§push(this.§%!V§);
                                                                                             §§push(this.§%!V§.x);
                                                                                             §§push(this.m_angularVelocity);
                                                                                             if(!(_loc6_ && _loc3_))
                                                                                             {
                                                                                                addr635:
                                                                                                §§push(this.m_sweep.c.y);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   addr634:
                                                                                                   §§push(-(§§pop() - _loc3_.y));
                                                                                                }
                                                                                                §§push(§§pop() * §§pop());
                                                                                             }
                                                                                             §§pop().x = §§pop() + §§pop();
                                                                                             addr638:
                                                                                             if(_loc5_ || this)
                                                                                             {
                                                                                                §§push(this.§%!V§);
                                                                                                if(!(_loc6_ && _loc3_))
                                                                                                {
                                                                                                   §§push(this.§%!V§);
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      if(!(_loc6_ && this))
                                                                                                      {
                                                                                                         §§push(this.m_angularVelocity);
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            §§push(this.m_sweep);
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               §§push(§§pop().c);
                                                                                                               if(_loc5_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  if(_loc5_ || _loc1_)
                                                                                                                  {
                                                                                                                     if(!(_loc6_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(_loc3_.x);
                                                                                                                        if(_loc5_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 addr571:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc5_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    addr580:
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!(_loc6_ && this))
                                                                                                                                    {
                                                                                                                                       if(_loc5_ || _loc1_)
                                                                                                                                       {
                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                          if(!(_loc6_ && this))
                                                                                                                                          {
                                                                                                                                             if(_loc6_ && this)
                                                                                                                                             {
                                                                                                                                                §§goto(addr661);
                                                                                                                                             }
                                                                                                                                             return;
                                                                                                                                          }
                                                                                                                                          §§goto(addr638);
                                                                                                                                       }
                                                                                                                                       §§goto(addr616);
                                                                                                                                    }
                                                                                                                                    §§goto(addr637);
                                                                                                                                 }
                                                                                                                                 §§goto(addr636);
                                                                                                                              }
                                                                                                                              §§goto(addr634);
                                                                                                                           }
                                                                                                                           §§goto(addr571);
                                                                                                                        }
                                                                                                                        §§goto(addr634);
                                                                                                                     }
                                                                                                                     §§goto(addr635);
                                                                                                                  }
                                                                                                                  §§goto(addr571);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr635);
                                                                                                         }
                                                                                                         §§goto(addr571);
                                                                                                      }
                                                                                                      §§goto(addr580);
                                                                                                   }
                                                                                                   §§goto(addr615);
                                                                                                }
                                                                                                §§goto(addr613);
                                                                                             }
                                                                                             §§goto(addr704);
                                                                                          }
                                                                                          §§goto(addr698);
                                                                                       }
                                                                                       §§goto(addr704);
                                                                                    }
                                                                                    §§goto(addr701);
                                                                                 }
                                                                                 §§goto(addr698);
                                                                              }
                                                                              this.§-7§ = 1;
                                                                              addr452:
                                                                              §§goto(addr469);
                                                                              addr458:
                                                                           }
                                                                           this.§,!o§ = 1 / this.§-!j§;
                                                                           addr368:
                                                                        }
                                                                        §§goto(addr308);
                                                                     }
                                                                     §§goto(addr314);
                                                                  }
                                                                  §§goto(addr452);
                                                               }
                                                               §§goto(addr445);
                                                            }
                                                            addr395:
                                                            §§push(this);
                                                            §§push(this.§-!j§);
                                                            if(!_loc6_)
                                                            {
                                                               §§push(this.§ ,§);
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(_loc1_.x);
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     §§push(_loc1_.x);
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr433:
                                                                        addr434:
                                                                        addr435:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(_loc1_.y);
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop() * _loc1_.y);
                                                                           }
                                                                        }
                                                                        §§pop().§-!j§ = §§pop() - §§pop() * §§pop();
                                                                        §§push(this);
                                                                        §§push(this.§-!j§);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(§§pop() * this.§?!,§);
                                                                        }
                                                                        §§pop().§-!j§ = §§pop();
                                                                        addr436:
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§goto(addr436);
                                                                        }
                                                                        b2Settings.b2Assert(this.§-!j§ > 0);
                                                                        §§goto(addr368);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  §§goto(addr433);
                                                               }
                                                               §§goto(addr434);
                                                            }
                                                            §§goto(addr435);
                                                         }
                                                         §§goto(addr436);
                                                      }
                                                      §§goto(addr395);
                                                   }
                                                   §§goto(addr469);
                                                }
                                                §§goto(addr444);
                                             }
                                             _loc4_ = _loc2_.§-!`§();
                                             if(!_loc6_)
                                             {
                                                §§push(this);
                                                §§push(this.§ ,§);
                                                if(!(_loc6_ && this))
                                                {
                                                   §§push(§§pop() + _loc4_.§]J§);
                                                }
                                                §§pop().§ ,§ = §§pop();
                                                §§push(_loc1_);
                                                §§push(_loc1_.x);
                                                if(_loc5_)
                                                {
                                                   §§push(_loc4_.center.x);
                                                   if(!(_loc6_ && this))
                                                   {
                                                      §§push(§§pop() * _loc4_.§]J§);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§pop().x = §§pop();
                                                addr232:
                                                if(!_loc6_)
                                                {
                                                   addr184:
                                                   §§push(_loc1_);
                                                   §§push(_loc1_.y);
                                                   if(!(_loc6_ && _loc1_))
                                                   {
                                                      §§push(_loc4_.center.y);
                                                      if(!(_loc6_ && _loc1_))
                                                      {
                                                         §§push(§§pop() * _loc4_.§]J§);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§pop().y = §§pop();
                                                   §§push(this);
                                                   §§push(this.§-!j§);
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§pop() + _loc4_.§93§);
                                                   }
                                                   §§pop().§-!j§ = §§pop();
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      if(_loc5_ || _loc1_)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr184);
                                                         }
                                                         §§goto(addr250);
                                                      }
                                                      §§goto(addr232);
                                                   }
                                                   addr210:
                                                   §§goto(addr210);
                                                   addr234:
                                                }
                                                addr249:
                                                §§goto(addr249);
                                             }
                                             §§goto(addr234);
                                          }
                                          §§goto(addr469);
                                       }
                                       addr267:
                                       §§push(0);
                                       if(!(_loc6_ && this))
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                this.§-7§ = 1 / this.§ ,§;
                                                if(!_loc6_)
                                                {
                                                   §§push(_loc1_);
                                                   §§push(_loc1_.x);
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      §§push(§§pop() * this.§-7§);
                                                   }
                                                   §§pop().x = §§pop();
                                                }
                                                §§goto(addr484);
                                             }
                                             §§goto(addr368);
                                          }
                                          else
                                          {
                                             this.§ ,§ = 1;
                                          }
                                          §§goto(addr458);
                                       }
                                       §§goto(addr469);
                                    }
                                    if(_loc5_ || _loc1_)
                                    {
                                       §§push(this.§ ,§);
                                       if(_loc5_)
                                       {
                                          §§goto(addr267);
                                       }
                                       §§goto(addr469);
                                    }
                                    §§goto(addr395);
                                 }
                                 §§goto(addr61);
                              }
                              §§goto(addr60);
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr57);
         }
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(!_loc4_)
         {
            §§push(param1.x);
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop() * §§pop());
               if(!(_loc4_ && param1))
               {
                  §§push(_loc2_.col2.x);
                  if(!(_loc4_ && this))
                  {
                     §§push(param1.y);
                     if(_loc5_ || param1)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc4_ && this))
                        {
                           addr83:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(!(_loc4_ && _loc2_))
                           {
                              addr93:
                              §§push(param1.x);
                              if(_loc5_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc5_ || _loc2_)
                                 {
                                    addr105:
                                    §§push(_loc2_.col2.y);
                                    if(!_loc4_)
                                    {
                                       addr113:
                                       §§push(§§pop() + §§pop() * param1.y);
                                    }
                                    §§goto(addr113);
                                 }
                                 var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                 if(!(_loc4_ && param1))
                                 {
                                    §§push(_loc3_);
                                    §§push(_loc3_.x);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop() + this.m_xf.position.x);
                                    }
                                    §§pop().x = §§pop();
                                 }
                                 do
                                 {
                                    §§push(_loc3_);
                                    §§push(_loc3_.y);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§push(§§pop() + this.m_xf.position.y);
                                    }
                                    §§pop().y = §§pop();
                                 }
                                 while(!(_loc5_ || _loc3_));
                                 
                                 return _loc3_;
                              }
                              §§goto(addr113);
                           }
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr93);
               }
               §§goto(addr83);
            }
            §§goto(addr105);
         }
         §§goto(addr83);
      }
      
      public function §4!1§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§&!Q§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§6L§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§[Z§(this.m_xf.R,param1);
      }
      
      public function §%!n§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§%!V§.x);
         if(_loc3_)
         {
            §§push(this.m_angularVelocity);
            if(_loc3_ || _loc3_)
            {
               §§push(param1.y);
               if(_loc3_ || _loc3_)
               {
                  §§push(this.m_sweep.c.y);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc3_ || param1)
                     {
                        §§goto(addr70);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr102);
               }
               addr70:
               §§push(§§pop() * §§pop());
               if(_loc3_)
               {
                  addr83:
                  §§push(§§pop() - §§pop());
                  §§push(this.§%!V§.y);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(this.m_angularVelocity);
                     if(!_loc2_)
                     {
                        addr98:
                        §§push(param1.x);
                        if(_loc3_)
                        {
                           addr102:
                           §§push(§§pop() - this.m_sweep.c.x);
                        }
                        §§push(§§pop() * §§pop());
                     }
                     §§push(§§pop() + §§pop());
                  }
               }
               return new §§pop().b2Vec2(§§pop(),§§pop());
            }
         }
         §§goto(addr83);
      }
      
      public function §@A§(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(_loc5_ || this)
         {
            §§push(param1.x);
            if(_loc5_ || param1)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc4_ && param1))
               {
                  addr50:
                  §§push(_loc2_.col2.x);
                  if(!(_loc4_ && param1))
                  {
                     §§push(param1.y);
                     if(!_loc4_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc5_)
                        {
                           addr67:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(_loc5_)
                           {
                              §§push(param1.x);
                              if(_loc5_ || param1)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc5_)
                                 {
                                 }
                                 addr104:
                                 var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                 if(!_loc4_)
                                 {
                                    §§push(_loc3_);
                                    §§push(_loc3_.x);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop() + this.m_xf.position.x);
                                    }
                                    §§pop().x = §§pop();
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
                                    while(_loc4_);
                                    
                                 }
                                 §§push(§§findproperty(b2Vec2));
                                 §§push(this.§%!V§.x);
                                 if(_loc5_ || _loc2_)
                                 {
                                    §§push(this.m_angularVelocity);
                                    if(_loc5_ || param1)
                                    {
                                       §§push(_loc3_.y);
                                       if(_loc5_ || _loc3_)
                                       {
                                          §§push(this.m_sweep.c.y);
                                          if(_loc5_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(_loc5_)
                                             {
                                                §§goto(addr149);
                                             }
                                          }
                                          §§goto(addr171);
                                       }
                                       addr149:
                                       §§push(§§pop() * §§pop());
                                       if(_loc5_)
                                       {
                                          addr152:
                                          §§push(§§pop() - §§pop());
                                          §§push(this.§%!V§.y);
                                          if(!_loc4_)
                                          {
                                             §§push(this.m_angularVelocity);
                                             if(_loc5_)
                                             {
                                                §§push(_loc3_.x);
                                                if(!_loc4_)
                                                {
                                                   addr171:
                                                   §§push(§§pop() + §§pop() * (§§pop() - this.m_sweep.c.x));
                                                }
                                             }
                                             §§goto(addr171);
                                          }
                                       }
                                       return new §§pop().b2Vec2(§§pop(),§§pop());
                                    }
                                 }
                                 §§goto(addr152);
                              }
                              addr103:
                              §§goto(addr104);
                              §§push(§§pop() + §§pop());
                           }
                           §§push(_loc2_.col2.y);
                           if(_loc5_)
                           {
                              §§push(§§pop() * param1.y);
                           }
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr103);
                  }
               }
               §§goto(addr67);
            }
            §§goto(addr104);
         }
         §§goto(addr50);
      }
      
      public function §7!=§() : Number
      {
         return this.§-!G§;
      }
      
      public function §;!s§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§-!G§ = param1;
         }
      }
      
      public function §5'§() : Number
      {
         return this.§7!1§;
      }
      
      public function §]!>§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§7!1§ = param1;
         }
      }
      
      public function §2Q§(param1:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(this.§"_§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr144:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     addr145:
                     return;
                  }
                  while(true)
                  {
                     this.§"_§ = param1;
                     while(!_loc3_)
                     {
                        this.§!m§();
                        while(_loc4_ || param1)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      public function §'!_§() : uint
      {
         return this.§"_§;
      }
      
      public function §'?§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1)
            {
               this.§]!p§ &= ~b2internal::7!y;
               if(_loc2_)
               {
                  if(_loc3_ && param1)
                  {
                     addr55:
                     this.§]!p§ |= b2internal::7!y;
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
      
      public function §'a§() : Boolean
      {
         return (this.§]!p§ & b2internal::7!y) == b2internal::7!y;
      }
      
      public function §4!e§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1)
            {
               if(_loc3_)
               {
                  this.§]!p§ |= b2internal::<!O;
               }
            }
            else
            {
               this.§]!p§ &= ~b2internal::<!O;
               do
               {
                  if(!_loc2_)
                  {
                     continue;
                  }
               }
               while(this.SetAwake(true), !(_loc3_ || _loc2_));
               
               §§goto(addr20);
            }
         }
         addr20:
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(!param1)
            {
               this.§]!p§ &= ~b2internal::4!-;
               loop0:
               for(; _loc3_ || param1; if(_loc2_ && this)
               {
                  continue;
               },while(true)
               {
                  this.m_angularVelocity = 0;
                  while(true)
                  {
                     this.§^!L§.§&!K§();
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           continue;
                        }
                        §§goto(addr76);
                     }
                  }
               },addr85:)
               {
                  this.§3!T§ = 0;
                  while(true)
                  {
                     this.§%!V§.§&!K§();
                     addr76:
                     while(_loc3_)
                     {
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  this.§3!T§ = 0;
                  §§goto(addr123);
                  §§goto(addr128);
               }
               §§goto(addr125);
            }
            §§goto(addr128);
         }
         §§goto(addr85);
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§]!p§ & b2internal::4!-) == b2internal::4!-;
      }
      
      public function §3!?§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1)
            {
               this.§]!p§ &= ~b2internal::[J;
               loop0:
               while(true)
               {
                  if(_loc2_ || this)
                  {
                     if(!(_loc3_ && this))
                     {
                        continue;
                     }
                  }
                  addr82:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               return;
            }
            while(true)
            {
               this.§]!p§ |= b2internal::[J;
            }
         }
         §§goto(addr82);
      }
      
      public function §@1§() : Boolean
      {
         return (this.§]!p§ & b2internal::[J) == b2internal::[J;
      }
      
      public function §-!8§(param1:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§2U§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(!(_loc6_ && this))
         {
            §§push(param1);
            if(_loc7_)
            {
               if(§§pop() == this.§89§())
               {
                  if(_loc7_ || _loc2_)
                  {
                     return;
                  }
                  addr61:
                  this.§]!p§ |= b2internal::`4;
                  addr67:
                  _loc2_ = this.m_world.§`N§.§0!f§;
                  _loc3_ = this.§6!s§;
                  while(_loc3_)
                  {
                     _loc3_.§1!@§(_loc2_,this.m_xf);
                     if(!_loc7_)
                     {
                        break;
                     }
                     _loc3_ = _loc3_.§@o§;
                  }
               }
               else
               {
                  addr53:
                  if(param1)
                  {
                     if(!(_loc6_ && param1))
                     {
                        §§goto(addr61);
                     }
                     §§goto(addr67);
                  }
                  else
                  {
                     this.§]!p§ &= ~b2internal::`4;
                     _loc2_ = this.m_world.§`N§.§0!f§;
                     _loc3_ = this.§6!s§;
                     if(!(_loc6_ && _loc2_))
                     {
                        while(_loc3_)
                        {
                           _loc3_.§for §(_loc2_);
                           if(!(_loc7_ || param1))
                           {
                              break;
                           }
                           _loc3_ = _loc3_.§@o§;
                        }
                     }
                     _loc4_ = this.§<!7§;
                     if(_loc7_)
                     {
                        while(_loc4_)
                        {
                           _loc5_ = _loc4_;
                           _loc4_ = _loc4_.§#!R§;
                           if(_loc7_ || this)
                           {
                              this.m_world.§`N§.§,!W§(_loc5_.§80§);
                           }
                        }
                        if(!(_loc6_ && _loc3_))
                        {
                           this.§<!7§ = null;
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr53);
         }
         §§goto(addr61);
      }
      
      public function §89§() : Boolean
      {
         return (this.§]!p§ & b2internal::`4) == b2internal::`4;
      }
      
      public function §&!C§() : Boolean
      {
         return (this.§]!p§ & b2internal::<!O) == b2internal::<!O;
      }
      
      public function §,!H§() : b2Fixture
      {
         return this.§6!s§;
      }
      
      public function §%[§() : b2JointEdge
      {
         return this.§,!K§;
      }
      
      public function §5j§() : b2ControllerEdge
      {
         return this.§+!f§;
      }
      
      public function § !S§() : b2ContactEdge
      {
         return this.§<!7§;
      }
      
      public function §>H§() : b2Body
      {
         return this.§@o§;
      }
      
      public function GetUserData() : *
      {
         return this.§,h§;
      }
      
      public function §2[§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,h§ = param1;
         }
      }
      
      public function §@!"§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §9%§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §#g§;
         if(!(_loc6_ && this))
         {
            §§push(_loc1_.R);
            if(!_loc6_)
            {
               §§pop().Set(this.m_sweep.a0);
               addr38:
               §§push(_loc1_.R);
            }
            var _loc2_:b2Mat22 = §§pop();
            var _loc3_:b2Vec2 = this.m_sweep.localCenter;
            if(!(_loc6_ && _loc1_))
            {
               §§push(_loc1_.position);
               if(_loc7_)
               {
                  §§push(this.m_sweep);
                  if(_loc7_ || this)
                  {
                     §§push(§§pop().c0);
                     if(_loc7_ || _loc2_)
                     {
                        §§push(§§pop().x);
                        if(_loc7_)
                        {
                           §§push(_loc2_.col1);
                           if(_loc7_)
                           {
                              §§push(§§pop().x);
                              if(_loc7_ || _loc3_)
                              {
                                 §§push(_loc3_.x);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc6_)
                                    {
                                       §§push(_loc2_.col2);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc7_)
                                          {
                                             §§push(_loc3_.y);
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc6_)
                                                {
                                                   addr121:
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc7_)
                                                   {
                                                      addr124:
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc6_ && _loc1_))
                                                      {
                                                         §§pop().x = §§pop();
                                                         if(!_loc6_)
                                                         {
                                                            addr140:
                                                            §§push(_loc1_.position);
                                                            §§push(this.m_sweep.c0.y);
                                                            if(!(_loc6_ && _loc1_))
                                                            {
                                                               addr150:
                                                               §§push(_loc2_.col1.y);
                                                               if(_loc7_ || _loc1_)
                                                               {
                                                                  §§push(_loc3_.x);
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     addr167:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc7_ || _loc3_)
                                                                     {
                                                                        addr175:
                                                                        §§push(_loc2_.col2.y);
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr185:
                                                                           §§pop().y = §§pop() - (§§pop() + §§pop() * _loc3_.y);
                                                                           addr183:
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr183);
                                                               }
                                                               §§goto(addr175);
                                                            }
                                                            §§goto(addr185);
                                                         }
                                                         var _loc5_:§2U§ = this.m_world.§`N§.§0!f§;
                                                         _loc4_ = this.§6!s§;
                                                         while(_loc4_)
                                                         {
                                                            _loc4_.§^!7§(_loc5_,_loc1_,this.m_xf);
                                                            if(_loc6_ && _loc1_)
                                                            {
                                                               break;
                                                            }
                                                            _loc4_ = _loc4_.§@o§;
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr185);
                                                   }
                                                   §§goto(addr175);
                                                }
                                                §§goto(addr167);
                                             }
                                             §§goto(addr185);
                                          }
                                          §§goto(addr121);
                                       }
                                       §§goto(addr175);
                                    }
                                 }
                                 §§goto(addr185);
                              }
                              §§goto(addr124);
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr185);
                     }
                  }
               }
            }
            §§goto(addr140);
         }
         §§goto(addr38);
      }
      
      b2internal function §#3§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.m_xf);
            if(_loc4_ || _loc2_)
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
                     addr180:
                     while(true)
                     {
                        §§push(this.m_sweep);
                        addr192:
                        while(true)
                        {
                           §§push(§§pop().c);
                           addr193:
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr194:
                              while(true)
                              {
                                 §§push(_loc1_.col1);
                                 addr196:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    addr197:
                                    while(true)
                                    {
                                       §§push(_loc2_.x);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc4_ || _loc2_)
                                          {
                                             §§push(_loc1_.col2);
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                if(!_loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.y);
                                                      addr216:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                   }
                                                   addr214:
                                                }
                                                addr217:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                }
                                             }
                                             addr211:
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                             addr219:
                                             while(true)
                                             {
                                                §§pop().x = §§pop();
                                                continue loop0;
                                             }
                                          }
                                          addr218:
                                       }
                                       §§goto(addr214);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr176);
            }
         }
         §§goto(addr37);
      }
      
      b2internal function §'!3§(param1:b2Body) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§"_§);
            if(_loc3_ || _loc3_)
            {
               §§push(b2_dynamicBody);
               if(_loc3_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc3_)
                  {
                     §§push(!§§pop());
                     if(!(_loc4_ && param1))
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              §§pop();
                              if(_loc3_ || this)
                              {
                                 addr66:
                                 §§push(param1.§"_§ == b2_dynamicBody);
                                 if(!(_loc4_ && this))
                                 {
                                    addr74:
                                    §§push(!§§pop());
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr82:
                                       if(§§pop())
                                       {
                                          if(!_loc4_)
                                          {
                                             §§goto(addr86);
                                          }
                                       }
                                       var _loc2_:b2JointEdge = this.§,!K§;
                                       for(; _loc2_; _loc2_ = _loc2_.§#!R§)
                                       {
                                          if(_loc2_.§9"§ == param1)
                                          {
                                             if(!_loc4_)
                                             {
                                                §§push(_loc2_.§!!d§.§ "§);
                                                if(_loc3_ || _loc3_)
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
                                                   if(!_loc3_)
                                                   {
                                                      §§goto(addr141);
                                                   }
                                                }
                                                return §§pop();
                                             }
                                             break;
                                          }
                                       }
                                       addr141:
                                       return §§pop();
                                       §§push(true);
                                    }
                                    §§goto(addr86);
                                 }
                                 §§goto(addr82);
                              }
                              addr86:
                              return false;
                           }
                           §§goto(addr74);
                        }
                     }
                  }
                  §§goto(addr82);
               }
            }
         }
         §§goto(addr66);
      }
      
      b2internal function §#B§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.m_sweep);
            while(true)
            {
               §§push(param1);
               addr95:
               while(true)
               {
                  §§pop().§#B§(§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(this.m_sweep);
                     loop3:
                     while(true)
                     {
                        §§pop().c.SetV(this.m_sweep.c0);
                        addr84:
                        while(!(_loc2_ && this))
                        {
                           continue loop3;
                        }
                        continue loop2;
                     }
                  }
               }
               if(_loc2_)
               {
                  continue;
               }
               §§push(this.m_sweep.a0);
               if(!_loc2_)
               {
                  §§pop().a = §§pop();
                  while(true)
                  {
                     this.§#3§();
                     if(_loc2_)
                     {
                        continue;
                     }
                     if(!(_loc2_ && _loc3_))
                     {
                        break;
                     }
                     §§goto(addr84);
                  }
                  return;
                  addr75:
               }
               §§goto(addr95);
            }
         }
         §§goto(addr75);
      }
   }
}

package §'!&§
{
   import §,Z§.b2EdgeShape;
   import §,Z§.b2MassData;
   import §,Z§.b2Shape;
   import §3c§.§>!e§;
   import §6-§.b2ControllerEdge;
   import §9t§.b2Mat22;
   import §9t§.b2Math;
   import §9t§.b2Sweep;
   import §9t§.b2Transform;
   import §9t§.b2Vec2;
   import §=!n§.b2Contact;
   import §=!n§.b2ContactEdge;
   import §@!'§.b2Settings;
   import §@!'§.b2internal;
   import §`X§.b2JointEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §&O§:b2Transform;
      
      b2internal static var §]9§:uint = 1;
      
      b2internal static var §6k§:uint = 2;
      
      b2internal static var §!"B§:uint = 4;
      
      b2internal static var §,i§:uint = 8;
      
      b2internal static var §^]§:uint = 16;
      
      b2internal static var §%!@§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §&O§ = new b2Transform();
         }
         while(true)
         {
            §]9§ = 1;
            loop1:
            while(true)
            {
               §6k§ = 2;
               do
               {
                  §!"B§ = 4;
                  continue loop1;
               }
               while(!(_loc2_ || _loc2_));
               
               return;
            }
         }
      }
      
      b2internal var §0" §:uint;
      
      b2internal var §0w§:int;
      
      b2internal var §7V§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §?o§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §#!u§:b2Vec2;
      
      b2internal var §8<§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §20§:b2Body;
      
      b2internal var §+!o§:b2Body;
      
      b2internal var §&?§:b2Fixture;
      
      b2internal var §^!r§:int;
      
      b2internal var § <§:b2ControllerEdge;
      
      b2internal var §@!R§:int;
      
      b2internal var §5G§:b2JointEdge;
      
      b2internal var §1!Z§:b2ContactEdge;
      
      b2internal var §""$§:Number;
      
      b2internal var §6!W§:Number;
      
      b2internal var §!-§:Number;
      
      b2internal var §<!%§:Number;
      
      b2internal var §3;§:Number;
      
      b2internal var §[5§:Number;
      
      b2internal var §=!y§:Number;
      
      b2internal var §;",§:Number;
      
      private var §7R§;
      
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
               addr270:
               while(true)
               {
                  this.§?o§ = new b2Vec2();
                  addr264:
                  while(true)
                  {
                     this.§#!u§ = new b2Vec2();
                  }
               }
               addr117:
               if(!(_loc7_ || _loc3_))
               {
                  continue;
               }
               §§push(this.m_xf);
               loop24:
               while(true)
               {
                  §§pop().position.SetV(param1.position);
                  loop25:
                  while(true)
                  {
                     if(_loc7_)
                     {
                        addr92:
                        if(_loc7_ || param2)
                        {
                           if(_loc7_)
                           {
                              if(!_loc6_)
                              {
                                 §§push(this.m_xf);
                                 if(_loc7_)
                                 {
                                    if(!_loc7_)
                                    {
                                       continue loop24;
                                    }
                                    §§push(§§pop().R);
                                    if(!_loc6_)
                                    {
                                       §§pop().Set(param1.angle);
                                       loop26:
                                       while(true)
                                       {
                                          addr59:
                                          while(true)
                                          {
                                             §§push(this.m_sweep);
                                             if(!_loc6_)
                                             {
                                                §§pop().localCenter.§@!d§();
                                                for(; _loc7_; if(_loc7_ || param2)
                                                {
                                                   continue loop26;
                                                })
                                                {
                                                   §§push(this.m_sweep);
                                                   if(!_loc7_)
                                                   {
                                                      break;
                                                   }
                                                   §§pop().§8!L§ = 1;
                                                   if(_loc7_)
                                                   {
                                                      continue;
                                                   }
                                                }
                                                break loop25;
                                             }
                                             addr278:
                                             §§pop().a0 = this.m_sweep.a = param1.angle;
                                             §§goto(addr288);
                                          }
                                          continue loop25;
                                          if(_loc6_ && _loc3_)
                                          {
                                             continue;
                                          }
                                          if(!(_loc7_ || param1))
                                          {
                                             continue loop25;
                                          }
                                          addr50:
                                          if(!(_loc6_ && param1))
                                          {
                                             if(false)
                                             {
                                                §§goto(addr59);
                                             }
                                             §§goto(addr278);
                                             §§push(this.m_sweep);
                                          }
                                          loop21:
                                          while(true)
                                          {
                                             if(!(_loc6_ && param1))
                                             {
                                                this.§0" § |= b2internal::%!@;
                                                if(!(_loc6_ && this))
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         while(true)
                                                         {
                                                            this.m_world = param2;
                                                            addr108:
                                                            while(_loc7_)
                                                            {
                                                               if(_loc6_ && param1)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr117);
                                                            }
                                                            break loop21;
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(param1.§'!H§);
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§0" § |= b2internal::^];
                                                                           break loop21;
                                                                        }
                                                                        addr219:
                                                                     }
                                                                     addr204:
                                                                     while(true)
                                                                     {
                                                                        §§push(param1.§#6§);
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§0" § |= b2internal::!"B;
                                                                                 addr214:
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              addr208:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(param1.§"o§);
                                                                              continue loop13;
                                                                           }
                                                                        }
                                                                     }
                                                                     if(!(_loc7_ || _loc3_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           while(!_loc6_)
                                                                           {
                                                                              this.§0" § |= b2internal::6k;
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    addr196:
                                                                                    if(!(_loc6_ && this))
                                                                                    {
                                                                                       §§goto(addr125);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          super();
                                                                                          addr252:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§0" § = 0;
                                                                                             break loop19;
                                                                                          }
                                                                                          §§goto(addr196);
                                                                                       }
                                                                                       addr258:
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                                 §§goto(addr92);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr229);
                                                                              }
                                                                              continue loop21;
                                                                           }
                                                                           §§goto(addr270);
                                                                           addr186:
                                                                        }
                                                                        §§goto(addr125);
                                                                     }
                                                                     §§goto(addr229);
                                                                  }
                                                               }
                                                               §§goto(addr110);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr219);
                                                   }
                                                   §§goto(addr208);
                                                }
                                                §§goto(addr288);
                                             }
                                             §§goto(addr186);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr204);
                                          }
                                       }
                                    }
                                    var _loc3_:b2Mat22 = §§pop();
                                    var _loc4_:b2Vec2 = this.m_sweep.localCenter;
                                    if(_loc7_)
                                    {
                                       addr757:
                                       addr788:
                                       addr758:
                                       addr787:
                                       addr763:
                                       addr766:
                                       addr761:
                                       addr764:
                                       addr760:
                                       §§push(this.m_sweep.c);
                                       §§push(_loc3_.col1.x * _loc4_.x);
                                       §§push(_loc3_.col2.x);
                                       if(!(_loc6_ && param1))
                                       {
                                          addr786:
                                          §§push(§§pop() * _loc4_.y);
                                       }
                                       §§pop().x = §§pop() + §§pop();
                                       addr789:
                                       §§push(this.m_sweep.c);
                                       §§push(_loc3_.col1);
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          addr716:
                                          §§push(§§pop().y);
                                          if(!_loc6_)
                                          {
                                             addr721:
                                             §§push(§§pop() * _loc4_.x);
                                             if(_loc7_ || param1)
                                             {
                                                §§push(_loc3_.col2);
                                                if(!(_loc6_ && this))
                                                {
                                                   addr738:
                                                   §§push(§§pop().y);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(_loc4_.y);
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         addr750:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc7_)
                                                         {
                                                            addr753:
                                                            §§pop().y = §§pop() + §§pop();
                                                            addr754:
                                                            §§push(this.m_sweep.c);
                                                            if(!_loc6_)
                                                            {
                                                               addr675:
                                                               §§push(this.m_sweep.c.x);
                                                               if(!_loc6_)
                                                               {
                                                                  addr681:
                                                                  §§push(this.m_xf.position.x);
                                                                  if(_loc7_ || this)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr691:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc7_ || _loc3_)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              addr701:
                                                                              §§push(this.m_sweep.c);
                                                                              if(_loc7_)
                                                                              {
                                                                                 if(_loc7_ || param1)
                                                                                 {
                                                                                    §§push(this.m_sweep);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§push(§§pop().c);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             if(_loc7_ || param2)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§push(this.m_xf);
                                                                                                   if(_loc7_ || param2)
                                                                                                   {
                                                                                                      §§push(§§pop().position);
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         §§push(§§pop().y);
                                                                                                         if(_loc7_ || _loc3_)
                                                                                                         {
                                                                                                            if(!(_loc6_ && param1))
                                                                                                            {
                                                                                                               addr656:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc7_ || _loc3_)
                                                                                                               {
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  addr664:
                                                                                                                  §§push(this.m_sweep);
                                                                                                                  if(_loc7_ || param1)
                                                                                                                  {
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              §§pop().c0.SetV(this.m_sweep.c);
                                                                                                                              this.§5G§ = null;
                                                                                                                              this.§ <§ = null;
                                                                                                                              this.§1!Z§ = null;
                                                                                                                              this.§@!R§ = 0;
                                                                                                                              this.§20§ = null;
                                                                                                                              this.§+!o§ = null;
                                                                                                                              this.§?o§.SetV(param1.§&v§);
                                                                                                                              this.m_angularVelocity = param1.§9!I§;
                                                                                                                              addr568:
                                                                                                                              addr543:
                                                                                                                              addr595:
                                                                                                                              addr573:
                                                                                                                              addr558:
                                                                                                                              addr548:
                                                                                                                              addr563:
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 this.§[5§ = param1.§?"'§;
                                                                                                                                 this.§=!y§ = param1.§@0§;
                                                                                                                                 this.§#!u§.Set(0,0);
                                                                                                                                 this.§8<§ = 0;
                                                                                                                                 this.§;",§ = 0;
                                                                                                                                 addr522:
                                                                                                                                 addr509:
                                                                                                                                 addr528:
                                                                                                                                 addr516:
                                                                                                                                 if(!(_loc6_ && param2))
                                                                                                                                 {
                                                                                                                                    this.§0w§ = param1.type;
                                                                                                                                    addr492:
                                                                                                                                    if(this.§0w§ == b2_dynamicBody)
                                                                                                                                    {
                                                                                                                                       addr472:
                                                                                                                                       if(!(_loc6_ && param2))
                                                                                                                                       {
                                                                                                                                          this.§""$§ = 1;
                                                                                                                                          addr482:
                                                                                                                                          if(_loc7_)
                                                                                                                                          {
                                                                                                                                             if(_loc7_)
                                                                                                                                             {
                                                                                                                                                this.§6!W§ = 1;
                                                                                                                                                addr464:
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   addr418:
                                                                                                                                                   this.§!-§ = 0;
                                                                                                                                                   if(_loc7_ || this)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc6_ && param2))
                                                                                                                                                      {
                                                                                                                                                         if(_loc7_)
                                                                                                                                                         {
                                                                                                                                                            this.§<!%§ = 0;
                                                                                                                                                            addr411:
                                                                                                                                                            if(_loc7_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     this.§3;§ = param1.§,!^§;
                                                                                                                                                                     addr399:
                                                                                                                                                                     if(_loc7_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        this.§7R§ = param1.§!!%§;
                                                                                                                                                                        addr360:
                                                                                                                                                                        if(_loc7_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc6_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc7_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§&?§ = null;
                                                                                                                                                                                    addr341:
                                                                                                                                                                                    if(_loc7_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc7_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc6_ && param2))
                                                                                                                                                                                             {
                                                                                                                                                                                                this.§^!r§ = 0;
                                                                                                                                                                                                if(!(_loc6_ && param2))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc7_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc6_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc7_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc7_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr754);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               return;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr568);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr522);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr509);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr360);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr341);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr664);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr492);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr411);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr399);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr701);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr522);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr482);
                                                                                                                                                                        }
                                                                                                                                                                        addr443:
                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr418);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr543);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr464);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr595);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr528);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr418);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr573);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr472);
                                                                                                                                                   }
                                                                                                                                                   addr452:
                                                                                                                                                   if(!(_loc6_ && this))
                                                                                                                                                   {
                                                                                                                                                      this.§6!W§ = 0;
                                                                                                                                                      §§goto(addr443);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr558);
                                                                                                                                                }
                                                                                                                                                §§goto(addr516);
                                                                                                                                             }
                                                                                                                                             §§goto(addr548);
                                                                                                                                          }
                                                                                                                                          §§goto(addr568);
                                                                                                                                       }
                                                                                                                                       §§goto(addr563);
                                                                                                                                    }
                                                                                                                                    this.§""$§ = 0;
                                                                                                                                    §§goto(addr452);
                                                                                                                                 }
                                                                                                                                 §§goto(addr789);
                                                                                                                              }
                                                                                                                              addr553:
                                                                                                                              §§goto(addr553);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr757);
                                                                                                                     }
                                                                                                                     §§goto(addr754);
                                                                                                                  }
                                                                                                                  §§goto(addr701);
                                                                                                               }
                                                                                                               §§goto(addr675);
                                                                                                            }
                                                                                                            §§goto(addr738);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr681);
                                                                                                }
                                                                                                §§goto(addr721);
                                                                                             }
                                                                                             §§goto(addr691);
                                                                                          }
                                                                                          §§goto(addr656);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr675);
                                                                                 }
                                                                                 §§goto(addr757);
                                                                              }
                                                                              §§goto(addr754);
                                                                           }
                                                                           §§goto(addr716);
                                                                        }
                                                                        §§goto(addr753);
                                                                     }
                                                                     §§goto(addr721);
                                                                  }
                                                                  §§goto(addr750);
                                                               }
                                                               §§goto(addr788);
                                                            }
                                                            §§goto(addr758);
                                                         }
                                                         §§goto(addr787);
                                                      }
                                                      §§goto(addr786);
                                                   }
                                                   §§goto(addr763);
                                                }
                                                §§goto(addr766);
                                             }
                                             §§goto(addr761);
                                          }
                                          §§goto(addr764);
                                       }
                                       §§goto(addr760);
                                    }
                                    §§goto(addr701);
                                 }
                                 break;
                              }
                              §§goto(addr252);
                           }
                           §§goto(addr214);
                        }
                        §§goto(addr194);
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr291);
               }
            }
         }
         §§goto(addr258);
      }
      
      private function §7$§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Number = Math.atan2(param2.§!"6§().y,param2.§!"6§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§5!1§(_loc5_,param2.§!"6§());
         _loc6_ = b2Math.§,!`§(_loc6_,param2.§0!V§());
         _loc6_ = b2Math.§5!1§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§6o§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§6o§(param1.§!"6§(),param2.§!"6§())).Normalize();
         var _loc8_:* = b2Math.§<"E§(param1.§!"6§(),param2.§0!V§()) > 0;
         if(!_loc10_)
         {
            param1.§'"-§(param2,_loc6_,_loc7_,_loc8_);
            do
            {
               param2.§`!P§(param1,_loc6_,_loc7_,_loc8_);
            }
            while(_loc10_ && param2);
            
         }
         return _loc4_;
      }
      
      public function CreateFixture(param1:b2FixtureDef) : b2Fixture
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§>!e§ = null;
         if(_loc7_)
         {
            if(this.m_world.§2F§() == true)
            {
               if(!(_loc6_ && _loc3_))
               {
                  §§goto(addr34);
               }
            }
            var _loc2_:b2Fixture = new b2Fixture();
            if(!(_loc6_ && this))
            {
               _loc2_.§]H§(this,this.m_xf,param1);
               if(!(_loc6_ && _loc3_))
               {
                  if(this.§0" § & b2internal::%!@)
                  {
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(this.m_world);
                        if(_loc7_ || param1)
                        {
                           _loc3_ = §§pop().§9>§.§2"$§;
                           if(_loc7_)
                           {
                              _loc2_.§'!C§(_loc3_,this.m_xf);
                              addr102:
                              _loc2_.§+!o§ = this.§&?§;
                              if(_loc7_)
                              {
                                 this.§&?§ = _loc2_;
                                 if(_loc7_ || _loc3_)
                                 {
                                    §§goto(addr118);
                                 }
                                 §§goto(addr196);
                              }
                              §§goto(addr190);
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr192);
                  }
                  §§goto(addr102);
               }
               §§goto(addr140);
            }
            addr118:
            var _loc4_:*;
            §§push((_loc4_ = this).§^!r§);
            if(_loc7_)
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(!_loc6_)
            {
               _loc4_.§^!r§ = _loc5_;
            }
            if(_loc7_ || _loc2_)
            {
               _loc2_.m_body = this;
               loop4:
               while(true)
               {
                  if(_loc2_.§"S§ > 0)
                  {
                     loop1:
                     while(true)
                     {
                        if(!_loc7_)
                        {
                           continue loop4;
                        }
                        while(true)
                        {
                           this.§0!^§();
                           addr192:
                           while(true)
                           {
                              break loop1;
                           }
                        }
                        continue loop4;
                     }
                     addr188:
                  }
                  loop3:
                  while(true)
                  {
                     §§push(this.m_world);
                     addr149:
                     while(true)
                     {
                        §§push(this.m_world.§0" §);
                        if(_loc7_ || _loc3_)
                        {
                           §§push(§§pop() | b2World.§]=§);
                        }
                        §§pop().§0" § = §§pop();
                        if(!(_loc6_ && param1))
                        {
                           if(_loc7_)
                           {
                              break;
                           }
                           §§goto(addr188);
                        }
                        §§goto(addr192);
                        continue loop3;
                     }
                  }
               }
               addr196:
               addr140:
            }
            return _loc2_;
         }
         addr34:
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
         while(!(_loc5_ || this));
         
         return this.CreateFixture(_loc3_);
      }
      
      public function §#![§(param1:b2Fixture) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§>!e§ = null;
         if(_loc12_ || _loc2_)
         {
            if(this.m_world.§2F§() == true)
            {
               if(_loc12_)
               {
                  §§goto(addr42);
               }
            }
            var _loc2_:b2Fixture = this.§&?§;
            var _loc3_:b2Fixture = null;
            var _loc4_:Boolean = false;
            loop0:
            for(; _loc2_ != null; _loc3_ = _loc2_,_loc2_ = _loc2_.§+!o§)
            {
               if(_loc2_ != param1)
               {
                  continue;
               }
               loop1:
               while(true)
               {
                  if(_loc3_)
                  {
                     if(!(_loc13_ && _loc2_))
                     {
                        _loc3_.§+!o§ = param1.§+!o§;
                        while(true)
                        {
                           addr74:
                           while(true)
                           {
                              addr53:
                              while(true)
                              {
                                 _loc4_ = true;
                                 if(_loc13_)
                                 {
                                    break loop0;
                                 }
                                 if(_loc12_ || this)
                                 {
                                    continue loop1;
                                 }
                              }
                           }
                           continue loop1;
                        }
                        addr102:
                     }
                     break loop0;
                  }
                  this.§&?§ = param1.§+!o§;
                  while(true)
                  {
                     if(_loc13_)
                     {
                        §§goto(addr102);
                     }
                     §§goto(addr53);
                  }
               }
            }
            var _loc5_:b2ContactEdge = this.§1!Z§;
            if(_loc12_ || param1)
            {
               while(_loc5_)
               {
                  _loc6_ = _loc5_.§%!b§;
                  _loc5_ = _loc5_.§ X§;
                  _loc7_ = _loc6_.§'J§();
                  _loc8_ = _loc6_.§#"%§();
                  if(_loc12_ || _loc3_)
                  {
                     §§push(param1 == _loc7_);
                     if(!(_loc13_ && this))
                     {
                        if(!§§pop())
                        {
                           if(!(_loc13_ && _loc2_))
                           {
                              addr179:
                              §§pop();
                              if(_loc13_ && _loc3_)
                              {
                                 continue;
                              }
                              §§push(param1 == _loc8_);
                           }
                        }
                        if(§§pop())
                        {
                           if(!(_loc13_ && _loc3_))
                           {
                              addr198:
                              this.m_world.§9>§.§^!a§(_loc6_);
                           }
                        }
                        continue;
                     }
                     §§goto(addr179);
                  }
                  §§goto(addr198);
               }
               if(!_loc13_)
               {
                  if(this.§0" § & b2internal::%!@)
                  {
                     if(!(_loc13_ && this))
                     {
                        _loc9_ = this.m_world.§9>§.§2"$§;
                        if(!_loc13_)
                        {
                           param1.§&1§(_loc9_);
                        }
                     }
                     addr234:
                     param1.m_body = null;
                     if(_loc12_)
                     {
                        param1.§+!o§ = null;
                        if(_loc12_)
                        {
                           §§goto(addr244);
                        }
                     }
                     §§goto(addr276);
                  }
                  param1.§^!a§();
                  if(!_loc12_)
                  {
                  }
                  §§goto(addr244);
               }
               §§goto(addr234);
            }
            addr244:
            var _loc10_:*;
            §§push((_loc10_ = this).§^!r§);
            if(_loc12_)
            {
               §§push(§§pop() - 1);
            }
            var _loc11_:* = §§pop();
            if(_loc12_)
            {
               _loc10_.§^!r§ = _loc11_;
            }
            if(!(_loc13_ && _loc3_))
            {
               addr276:
               this.§0!^§();
            }
            return;
         }
         addr42:
      }
      
      public function §#"&§(param1:b2Vec2, param2:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:b2Fixture = null;
         if(_loc8_ || param1)
         {
            if(this.m_world.§2F§() != true)
            {
               while(true)
               {
                  §§push(this.m_xf);
                  loop1:
                  while(true)
                  {
                     §§push(§§pop().R);
                     if(_loc8_ || param1)
                     {
                        §§pop().Set(param2);
                        while(true)
                        {
                           §§push(this.m_xf);
                           if(_loc9_ && this)
                           {
                              break;
                           }
                           if(_loc8_ || _loc3_)
                           {
                              continue;
                           }
                           continue loop1;
                        }
                        §§push(§§pop().R);
                        break;
                        addr73:
                     }
                     break;
                  }
                  var _loc4_:b2Mat22 = §§pop();
                  var _loc5_:b2Vec2 = this.m_sweep.localCenter;
                  if(_loc8_ || this)
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
                              if(!(_loc9_ && this))
                              {
                                 §§push(_loc5_.x);
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                 }
                                 addr346:
                              }
                              loop6:
                              while(true)
                              {
                                 §§push(_loc4_.col2);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    if(!(_loc9_ && param1))
                                    {
                                       §§push(_loc5_.y);
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          addr311:
                                          §§push(_loc5_.y);
                                          if(!(_loc8_ || _loc3_))
                                          {
                                             continue;
                                          }
                                          §§push(§§pop() * §§pop());
                                          loop17:
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop());
                                             loop18:
                                             while(!(_loc9_ && _loc3_))
                                             {
                                                §§pop().y = §§pop();
                                                loop19:
                                                while(true)
                                                {
                                                   §§push(this.m_sweep);
                                                   addr237:
                                                   loop20:
                                                   while(_loc8_ || this)
                                                   {
                                                      §§push(§§pop().c);
                                                      while(true)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            §§push(this.m_sweep);
                                                            while(true)
                                                            {
                                                               §§push(§§pop().c);
                                                               addr250:
                                                               addr149:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  addr251:
                                                                  addr299:
                                                                  while(!_loc9_)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§push(this.m_xf);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().position);
                                                                           addr258:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              continue loop17;
                                                                           }
                                                                        }
                                                                        addr257:
                                                                     }
                                                                     else
                                                                     {
                                                                        addr361:
                                                                        while(true)
                                                                        {
                                                                           §§pop().x = §§pop();
                                                                           addr362:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.m_sweep);
                                                                              break loop20;
                                                                           }
                                                                        }
                                                                        addr361:
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_.col2);
                                                                     if(!_loc8_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop().y);
                                                                     while(!(_loc9_ && param2))
                                                                     {
                                                                        §§goto(addr311);
                                                                        if(!_loc8_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!_loc9_)
                                                                        {
                                                                           addr218:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc9_ && this))
                                                                           {
                                                                              §§pop().y = §§pop();
                                                                              if(!(_loc9_ && param1))
                                                                              {
                                                                                 §§push(this.m_sweep);
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§pop().c0.SetV(this.m_sweep.c);
                                                                                    if(!(_loc9_ && _loc3_))
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          continue loop19;
                                                                                       }
                                                                                       while(_loc8_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.m_sweep);
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(_loc9_ && this)
                                                                                             {
                                                                                                continue loop20;
                                                                                             }
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             §§goto(addr141);
                                                                                             continue loop20;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr362);
                                                                                       addr275:
                                                                                    }
                                                                                    §§goto(addr374);
                                                                                 }
                                                                                 addr365:
                                                                                 §§pop().a0 = this.m_sweep.a = param2;
                                                                              }
                                                                              addr374:
                                                                              var _loc6_:§>!e§ = this.m_world.§9>§.§2"$§;
                                                                              _loc3_ = this.§&?§;
                                                                              addr414:
                                                                              if(_loc3_)
                                                                              {
                                                                                 _loc3_.§2$§(_loc6_,this.m_xf,this.m_xf);
                                                                                 if(_loc8_ || param1)
                                                                                 {
                                                                                    _loc3_ = _loc3_.§+!o§;
                                                                                    §§goto(addr414);
                                                                                 }
                                                                                 §§goto(addr422);
                                                                              }
                                                                              if(!_loc9_)
                                                                              {
                                                                                 this.m_world.§9>§.§^!A§();
                                                                              }
                                                                              addr422:
                                                                              return;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              §§goto(addr218);
                                                                           }
                                                                           addr274:
                                                                           §§goto(addr275);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr346);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr361);
                                                                     }
                                                                  }
                                                                  continue loop7;
                                                               }
                                                               §§push(this.m_sweep);
                                                               if(!(_loc8_ || param2))
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(§§pop().c);
                                                               if(!(_loc9_ && this))
                                                               {
                                                                  §§push(§§pop().y);
                                                                  if(!(_loc9_ && param2))
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(_loc9_ && param2)
                                                                        {
                                                                           continue loop18;
                                                                        }
                                                                        §§push(this.m_xf);
                                                                        if(_loc8_)
                                                                        {
                                                                           §§push(§§pop().position);
                                                                           if(_loc8_ || param2)
                                                                           {
                                                                              §§push(§§pop().y);
                                                                              if(!(_loc8_ || _loc3_))
                                                                              {
                                                                                 continue loop17;
                                                                              }
                                                                              §§goto(addr203);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr257);
                                                                        }
                                                                        §§goto(addr258);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr251);
                                                                     }
                                                                  }
                                                                  §§goto(addr218);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr250);
                                                               }
                                                            }
                                                         }
                                                         §§push(§§pop().c);
                                                         addr141:
                                                         break;
                                                         if(_loc9_ && param2)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr149);
                                                      }
                                                      while(_loc8_)
                                                      {
                                                         §§push(_loc4_.col1);
                                                         if(!_loc8_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         §§push(§§pop().y);
                                                         if(_loc8_ || this)
                                                         {
                                                            §§push(_loc5_.x);
                                                            while(true)
                                                            {
                                                               addr266:
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc8_ || _loc3_))
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr274);
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                         }
                                                         §§goto(addr299);
                                                      }
                                                      continue loop3;
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr282);
                                                      §§goto(addr237);
                                                   }
                                                }
                                             }
                                             continue loop6;
                                          }
                                       }
                                    }
                                    §§goto(addr360);
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr330);
               }
            }
            §§goto(addr79);
         }
         §§goto(addr73);
      }
      
      public function §#"E§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§#"&§(param1.position,param1.GetAngle());
         }
      }
      
      public function §>u§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function SetPosition(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§#"&§(param1,this.GetAngle());
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
         if(!_loc3_)
         {
            this.§#"&§(this.GetPosition(),param1);
         }
      }
      
      public function §%!;§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §4!p§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§0w§ != b2_staticBody)
            {
               do
               {
                  this.§?o§.SetV(param1);
               }
               while(_loc3_ && param1);
               
               if(!(_loc3_ && this))
               {
                  return;
               }
            }
         }
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§?o§;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§0w§ != b2_staticBody)
            {
               loop0:
               while(true)
               {
                  this.m_angularVelocity = param1;
                  if(_loc3_ || _loc2_)
                  {
                     break;
                  }
                  addr68:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(_loc3_ || _loc2_)
               {
                  return;
               }
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §&r§() : b2BodyDef
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2BodyDef = new b2BodyDef();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.type = this.§@!N§();
         }
         loop0:
         while(true)
         {
            _loc1_.§#6§ = (this.§0" § & b2internal::!"B) == b2internal::!"B;
            loop1:
            while(true)
            {
               _loc1_.angle = this.GetAngle();
               while(true)
               {
                  _loc1_.§@0§ = this.§=!y§;
                  continue loop1;
                  addr43:
                  if(_loc3_ || _loc1_)
                  {
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function ApplyForce(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            if(this.§0w§ == b2_dynamicBody)
            {
               loop0:
               while(this.IsAwake() == false)
               {
                  if(!(_loc3_ && param1))
                  {
                     if(_loc3_)
                     {
                        continue;
                     }
                     if(!_loc4_)
                     {
                        §§goto(addr209);
                     }
                     this.SetAwake(true);
                  }
                  while(true)
                  {
                     break loop0;
                     addr116:
                     if(!(_loc3_ && this))
                     {
                        return;
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§#!u§);
                  loop2:
                  while(true)
                  {
                     §§push(this.§#!u§);
                     addr167:
                     while(true)
                     {
                        §§push(§§pop().x);
                        if(!_loc3_)
                        {
                           §§push(param1.x);
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              addr148:
                              §§push(param1.y);
                              if(!(_loc3_ && param2))
                              {
                                 addr158:
                                 §§pop().y = §§pop() + §§pop();
                                 while(_loc4_)
                                 {
                                    §§push(this);
                                    §§push(this.§8<§);
                                    if(!(_loc3_ && param2))
                                    {
                                       §§push(param2.x);
                                       if(!_loc3_)
                                       {
                                          §§push(this.m_sweep.c.x);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!(_loc3_ && param1))
                                             {
                                                addr63:
                                                §§push(param1.y);
                                                if(_loc4_ || this)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc3_)
                                                   {
                                                      §§push(param2.y);
                                                      if(!(_loc3_ && this))
                                                      {
                                                         addr84:
                                                         §§push(this.m_sweep.c.y);
                                                         if(!(_loc3_ && param1))
                                                         {
                                                            addr111:
                                                            §§push(§§pop() - §§pop());
                                                            if(!_loc3_)
                                                            {
                                                               addr108:
                                                               §§push(param1.x);
                                                            }
                                                            §§pop().§8<§ = §§pop() + (§§pop() - §§pop());
                                                            if(_loc3_)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr116);
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                   }
                                                   §§goto(addr111);
                                                }
                                                §§goto(addr84);
                                             }
                                             §§goto(addr111);
                                          }
                                          §§goto(addr108);
                                       }
                                       §§goto(addr63);
                                    }
                                    §§goto(addr111);
                                 }
                                 continue loop2;
                              }
                           }
                           addr172:
                        }
                        addr173:
                        while(true)
                        {
                           §§pop().x = §§pop();
                           continue loop2;
                        }
                     }
                  }
               }
            }
            addr209:
            return;
         }
         §§goto(addr191);
      }
      
      public function §]!]§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§0w§ == b2_dynamicBody)
            {
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     if(!_loc3_)
                     {
                        while(true)
                        {
                           this.SetAwake(true);
                        }
                        addr67:
                     }
                     loop1:
                     while(!(_loc3_ && _loc2_))
                     {
                        if(_loc3_ && _loc2_)
                        {
                           return;
                        }
                        addr99:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§8<§);
                           if(_loc2_ || _loc3_)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§8<§ = §§pop();
                           if(!(_loc3_ && _loc3_))
                           {
                              break;
                           }
                           continue loop1;
                        }
                        return;
                     }
                     continue;
                  }
                  §§goto(addr28);
               }
            }
            §§goto(addr99);
         }
         §§goto(addr67);
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§0w§ != b2_dynamicBody)
            {
               if(_loc4_ || param1)
               {
                  return;
               }
               while(true)
               {
               }
               addr247:
            }
            loop1:
            while(true)
            {
               if(this.IsAwake() == false)
               {
                  while(true)
                  {
                     this.SetAwake(true);
                     addr224:
                     while(true)
                     {
                     }
                     addr192:
                     if(_loc4_ || _loc3_)
                     {
                        while(true)
                        {
                           §§push(this);
                           §§push(this.m_angularVelocity);
                           if(_loc4_ || _loc3_)
                           {
                              §§push(this.§<!%§);
                              if(!_loc3_)
                              {
                                 §§push(param2.x);
                                 if(_loc4_ || param2)
                                 {
                                    §§push(this.m_sweep.c.x);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc4_ || _loc3_)
                                       {
                                          addr67:
                                          §§push(param1.y);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc4_ || this)
                                             {
                                                addr79:
                                                §§push(param2.y);
                                                if(_loc4_ || param2)
                                                {
                                                   addr88:
                                                   §§push(this.m_sweep.c.y);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      addr106:
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc4_)
                                                      {
                                                         addr104:
                                                         §§push(§§pop() * param1.x);
                                                      }
                                                      §§pop().m_angularVelocity = §§pop() + §§pop() * (§§pop() - §§pop());
                                                      if(!_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      loop13:
                                                      while(true)
                                                      {
                                                         if(_loc4_ || this)
                                                         {
                                                            if(!(_loc4_ || param2))
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr192);
                                                         }
                                                         loop12:
                                                         while(_loc4_)
                                                         {
                                                            addr215:
                                                            §§push(this.§?o§);
                                                            if(_loc4_ || param2)
                                                            {
                                                               §§push(this.§?o§);
                                                               if(!(_loc3_ && param1))
                                                               {
                                                                  §§push(§§pop().y);
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(this.§6!W§);
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(param1.y);
                                                                              if(_loc4_ || param2)
                                                                              {
                                                                                 addr167:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr170:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!(_loc3_ && this))
                                                                                    {
                                                                                       §§pop().y = §§pop();
                                                                                       continue loop13;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1.x);
                                                                                       addr210:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          addr211:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr208:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().x = §§pop();
                                                                                    continue loop12;
                                                                                 }
                                                                              }
                                                                              §§goto(addr210);
                                                                           }
                                                                           §§goto(addr211);
                                                                        }
                                                                        §§goto(addr167);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                        }
                                                                        addr206:
                                                                     }
                                                                     §§goto(addr208);
                                                                  }
                                                                  §§goto(addr170);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  addr205:
                                                               }
                                                               §§goto(addr206);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§goto(addr215);
                                                               }
                                                               addr203:
                                                            }
                                                            §§goto(addr205);
                                                         }
                                                         continue loop1;
                                                      }
                                                      §§goto(addr224);
                                                   }
                                                }
                                                §§goto(addr104);
                                             }
                                             §§goto(addr106);
                                          }
                                          §§goto(addr104);
                                       }
                                       §§goto(addr79);
                                    }
                                    §§goto(addr88);
                                 }
                                 §§goto(addr67);
                              }
                           }
                           §§goto(addr106);
                        }
                        return;
                        addr199:
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr203);
                  §§goto(addr224);
               }
            }
         }
         §§goto(addr199);
      }
      
      public function §^n§(param1:Function) : b2Body
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
         var _loc4_:b2Vec2 = this.§%!;§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.CreateBody(this.§&r§());
         var _loc8_:b2Fixture = _loc5_.§&?§;
         while(true)
         {
            if(!_loc8_)
            {
               if(!_loc17_)
               {
                  _loc5_.§0!^§();
                  if(_loc16_ || param1)
                  {
                     break;
                  }
               }
               addr190:
               var _loc9_:b2Vec2 = _loc5_.§%!;§();
               var _loc10_:b2Vec2 = _loc6_.§%!;§();
               var _loc11_:b2Vec2 = b2Math.§6o§(_loc2_,b2Math.§@N§(_loc3_,b2Math.§,!`§(_loc9_,_loc4_)));
               var _loc12_:b2Vec2 = b2Math.§6o§(_loc2_,b2Math.§@N§(_loc3_,b2Math.§,!`§(_loc10_,_loc4_)));
               if(_loc16_)
               {
                  _loc5_.SetLinearVelocity(_loc11_);
                  while(true)
                  {
                     _loc6_.SetLinearVelocity(_loc12_);
                     loop4:
                     for(; _loc16_ || this; if(!(_loc17_ && param1))
                     {
                        return _loc6_;
                     })
                     {
                        _loc5_.§null§();
                        loop5:
                        for(; !_loc17_; _loc6_.§null§(),if(_loc16_ || _loc2_)
                        {
                           continue loop4;
                        })
                        {
                           if(_loc16_)
                           {
                              continue;
                           }
                           addr287:
                           while(true)
                           {
                              _loc5_.SetAngularVelocity(_loc3_);
                              break loop5;
                           }
                        }
                        while(true)
                        {
                           _loc6_.SetAngularVelocity(_loc3_);
                           continue loop4;
                        }
                     }
                  }
               }
               §§goto(addr287);
            }
            else
            {
               if(!param1(_loc8_))
               {
                  _loc7_ = _loc8_;
                  _loc8_ = _loc8_.§+!o§;
                  continue;
               }
               if(_loc17_ && param1)
               {
                  break;
               }
               _loc13_ = _loc8_.§+!o§;
               if(!_loc17_)
               {
                  if(_loc7_)
                  {
                     if(_loc16_)
                     {
                        _loc7_.§+!o§ = _loc13_;
                        if(_loc16_)
                        {
                           addr91:
                           var _loc14_:*;
                           §§push((_loc14_ = _loc5_).§^!r§);
                           if(_loc16_)
                           {
                              §§push(§§pop() - 1);
                           }
                           var _loc15_:* = §§pop();
                           if(_loc16_)
                           {
                              _loc14_.§^!r§ = _loc15_;
                           }
                           if(_loc16_)
                           {
                              addr108:
                              _loc8_.§+!o§ = _loc6_.§&?§;
                              if(_loc16_)
                              {
                                 _loc6_.§&?§ = _loc8_;
                                 if(_loc16_ || _loc3_)
                                 {
                                 }
                                 addr164:
                                 _loc8_ = _loc13_;
                                 continue;
                              }
                           }
                           §§push((_loc14_ = _loc6_).§^!r§);
                           if(_loc16_)
                           {
                              §§push(§§pop() + 1);
                           }
                           _loc15_ = §§pop();
                           if(!(_loc17_ && param1))
                           {
                              _loc14_.§^!r§ = _loc15_;
                           }
                           if(_loc16_ || _loc2_)
                           {
                              _loc8_.m_body = _loc6_;
                           }
                        }
                        §§goto(addr108);
                     }
                  }
                  else
                  {
                     _loc5_.§&?§ = _loc13_;
                     if(_loc16_ || this)
                     {
                        §§goto(addr91);
                     }
                  }
                  §§goto(addr164);
               }
               §§goto(addr108);
            }
         }
         _loc6_.§0!^§();
         §§goto(addr190);
      }
      
      public function §!h§(param1:b2Body) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§&?§;
         for(; _loc2_; _loc2_ = _loc11_)
         {
            _loc11_ = _loc2_.§+!o§;
            if(_loc15_)
            {
               var _loc12_:*;
               §§push((_loc12_ = param1).§^!r§);
               if(_loc15_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc13_:* = §§pop();
               if(_loc15_ || _loc3_)
               {
                  _loc12_.§^!r§ = _loc13_;
               }
               if(!_loc15_)
               {
                  continue;
               }
            }
            _loc2_.§+!o§ = this.§&?§;
            if(_loc15_ || param1)
            {
               this.§&?§ = _loc2_;
               if(!_loc14_)
               {
                  §§push((_loc12_ = this).§^!r§);
                  if(_loc15_)
                  {
                     §§push(§§pop() + 1);
                  }
                  _loc13_ = §§pop();
                  if(_loc15_ || param1)
                  {
                     _loc12_.§^!r§ = _loc13_;
                  }
                  if(_loc15_)
                  {
                     _loc2_.m_body = _loc4_;
                  }
               }
            }
         }
         if(!_loc14_)
         {
            _loc3_.§^!r§ = 0;
         }
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§%!;§();
         var _loc6_:b2Vec2 = _loc4_.§%!;§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         §§push(_loc3_.GetAngularVelocity());
         if(!_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.GetAngularVelocity());
         if(!(_loc14_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         if(!(_loc14_ && _loc3_))
         {
            _loc3_.§0!^§();
            do
            {
               this.§null§();
            }
            while(!_loc15_);
            
         }
      }
      
      public function GetMass() : Number
      {
         return this.§""$§;
      }
      
      public function §<"3§() : Number
      {
         return this.§!-§;
      }
      
      public function §7r§(param1:b2MassData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            param1.§[]§ = this.§""$§;
         }
         while(true)
         {
            param1.I = this.§!-§;
            while(_loc3_ || _loc3_)
            {
               param1.§`C§.SetV(this.m_sweep.localCenter);
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §2I§(param1:b2MassData) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            §§push(b2Settings);
            §§push(this.m_world.§2F§());
            if(_loc3_)
            {
               §§push(§§pop() == false);
            }
            §§pop().b2Assert(§§pop());
         }
         loop0:
         while(true)
         {
            §§push(this.m_world.§2F§());
            while(true)
            {
               §§push(true);
               addr253:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§push(this.§0w§);
                        while(true)
                        {
                           if(§§pop() == b2_dynamicBody)
                           {
                              loop5:
                              while(true)
                              {
                                 this.§6!W§ = 0;
                                 while(!_loc4_)
                                 {
                                    this.§!-§ = 0;
                                    while(true)
                                    {
                                       this.§<!%§ = 0;
                                       while(_loc3_ || _loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             this.§""$§ = param1.§[]§;
                                             while(_loc3_)
                                             {
                                                §§push(this.§""$§);
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr185:
                                                   while(true)
                                                   {
                                                      if(§§pop() <= §§pop())
                                                      {
                                                         continue loop0;
                                                      }
                                                      addr173:
                                                      while(true)
                                                      {
                                                         this.§6!W§ = 1 / this.§""$§;
                                                         continue loop10;
                                                      }
                                                   }
                                                }
                                                while(_loc3_ || param1)
                                                {
                                                   §§goto(addr172);
                                                }
                                             }
                                             continue;
                                          }
                                       }
                                       continue loop5;
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                           return;
                        }
                     }
                  }
                  §§goto(addr254);
               }
               if(!(_loc3_ || param1))
               {
                  continue;
               }
               §§push(§§pop());
               if(!(_loc4_ && _loc2_))
               {
                  if(§§pop())
                  {
                     §§goto(addr164);
                  }
                  §§goto(addr52);
               }
               §§goto(addr253);
            }
         }
      }
      
      public function §0!^§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2MassData = null;
         if(_loc5_ || _loc1_)
         {
            this.§""$§ = 0;
            loop0:
            while(true)
            {
               this.§6!W§ = 0;
               loop1:
               while(true)
               {
                  this.§!-§ = 0;
                  while(!_loc6_)
                  {
                     this.§<!%§ = 0;
                     addr86:
                     if(!(_loc5_ || _loc2_))
                     {
                        continue;
                     }
                     §§push(this.§0w§);
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(b2_kinematicBody);
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc5_)
                           {
                              loop8:
                              while(§§pop())
                              {
                                 if(_loc5_ || _loc3_)
                                 {
                                    if(_loc5_ || _loc3_)
                                    {
                                       return;
                                    }
                                    addr111:
                                    loop9:
                                    while(_loc5_ || this)
                                    {
                                       §§goto(addr86);
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop9;
                                       }
                                    }
                                    while(true)
                                    {
                                       this.m_sweep.localCenter.§@!d§();
                                       continue loop1;
                                       §§goto(addr79);
                                    }
                                    addr79:
                                 }
                                 else
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop1;
                                    }
                                    if(true)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§push(this.§0w§);
                                       addr72:
                                       while(true)
                                       {
                                          §§push(b2_staticBody);
                                          addr73:
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(_loc5_)
                                             {
                                                if(§§pop())
                                                {
                                                   continue loop8;
                                                }
                                             }
                                             §§goto(addr78);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr72);
                              }
                              var _loc1_:b2Vec2 = b2Vec2.§^!l§(0,0);
                              var _loc2_:b2Fixture = this.§&?§;
                              addr259:
                              if(_loc2_)
                              {
                                 §§push(_loc2_.§"S§);
                                 if(!(_loc6_ && this))
                                 {
                                    §§push(0);
                                    if(_loc5_ || _loc2_)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             addr255:
                                             _loc2_ = _loc2_.§+!o§;
                                             §§goto(addr259);
                                          }
                                          addr445:
                                          §§push(this.§!-§ > 0);
                                          if(this.§!-§ > 0)
                                          {
                                             addr437:
                                             §§pop();
                                             addr438:
                                             if(_loc5_)
                                             {
                                                §§push((this.§0" § & b2internal::^]) == 0);
                                                if(!(_loc6_ && this))
                                                {
                                                   if(_loc5_ || this)
                                                   {
                                                      addr384:
                                                      if(§§pop())
                                                      {
                                                         addr386:
                                                         §§push(this);
                                                         §§push(this.§!-§);
                                                         if(_loc5_)
                                                         {
                                                            §§push(this.§""$§);
                                                            if(!_loc6_)
                                                            {
                                                               §§push(_loc1_.x);
                                                               if(_loc5_ || _loc2_)
                                                               {
                                                                  §§push(_loc1_.x);
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc5_)
                                                                     {
                                                                        addr416:
                                                                        §§push(_loc1_.y);
                                                                        if(_loc5_)
                                                                        {
                                                                           addr423:
                                                                           §§push(§§pop() + §§pop() * _loc1_.y);
                                                                        }
                                                                        §§goto(addr423);
                                                                     }
                                                                     addr426:
                                                                     §§pop().§!-§ = §§pop() - §§pop() * §§pop();
                                                                     addr427:
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§!-§);
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           §§push(§§pop() * this.§3;§);
                                                                        }
                                                                        §§pop().§!-§ = §§pop();
                                                                        b2Settings.b2Assert(this.§!-§ > 0);
                                                                        addr327:
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr451:
                                                                              if(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 this.§6!W§ = 1;
                                                                                 §§goto(addr445);
                                                                                 addr458:
                                                                              }
                                                                              §§goto(addr445);
                                                                              addr469:
                                                                           }
                                                                           this.§<!%§ = 1 / this.§!-§;
                                                                           addr485:
                                                                           var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
                                                                           if(!(_loc6_ && this))
                                                                           {
                                                                              addr676:
                                                                              this.m_sweep.localCenter.SetV(_loc1_);
                                                                           }
                                                                           this.m_sweep.c0.SetV(b2Math.§=&§(this.m_xf,this.m_sweep.localCenter));
                                                                           addr673:
                                                                           addr679:
                                                                           §§push(this.m_sweep);
                                                                           if(_loc5_)
                                                                           {
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 §§pop().c.SetV(this.m_sweep.c0);
                                                                                 addr648:
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    addr603:
                                                                                    addr619:
                                                                                    addr618:
                                                                                    addr606:
                                                                                    addr605:
                                                                                    addr601:
                                                                                    addr620:
                                                                                    addr600:
                                                                                    addr598:
                                                                                    §§push(this.§?o§);
                                                                                    §§push(this.§?o§.x);
                                                                                    §§push(this.m_angularVelocity);
                                                                                    §§push(this.m_sweep.c.y);
                                                                                    if(!(_loc6_ && _loc1_))
                                                                                    {
                                                                                       addr617:
                                                                                       §§push(-(§§pop() - _loc3_.y));
                                                                                    }
                                                                                    §§pop().x = §§pop() + §§pop() * §§pop();
                                                                                    addr621:
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(!(_loc6_ && _loc3_))
                                                                                       {
                                                                                          §§push(this.§?o§);
                                                                                          if(_loc5_ || this)
                                                                                          {
                                                                                             §§push(this.§?o§);
                                                                                             if(!(_loc6_ && this))
                                                                                             {
                                                                                                §§push(§§pop().y);
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   if(!(_loc6_ && _loc2_))
                                                                                                   {
                                                                                                      if(!(_loc6_ && _loc1_))
                                                                                                      {
                                                                                                         §§push(this.m_angularVelocity);
                                                                                                         if(_loc5_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(this.m_sweep);
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               §§push(§§pop().c);
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  if(!(_loc6_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(_loc3_.x);
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        if(!(_loc6_ && this))
                                                                                                                        {
                                                                                                                           addr575:
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              addr578:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 addr581:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    if(_loc5_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr591);
                                                                                                                                    }
                                                                                                                                    §§goto(addr603);
                                                                                                                                 }
                                                                                                                                 §§goto(addr619);
                                                                                                                              }
                                                                                                                              §§goto(addr617);
                                                                                                                           }
                                                                                                                           §§goto(addr618);
                                                                                                                        }
                                                                                                                        §§goto(addr578);
                                                                                                                     }
                                                                                                                     §§goto(addr617);
                                                                                                                  }
                                                                                                                  §§goto(addr575);
                                                                                                               }
                                                                                                               §§goto(addr606);
                                                                                                            }
                                                                                                            §§goto(addr605);
                                                                                                         }
                                                                                                         §§goto(addr581);
                                                                                                      }
                                                                                                      §§goto(addr601);
                                                                                                   }
                                                                                                   §§goto(addr620);
                                                                                                }
                                                                                                addr591:
                                                                                                §§pop().y = §§pop() + §§pop();
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   §§goto(addr621);
                                                                                                }
                                                                                                return;
                                                                                             }
                                                                                             §§goto(addr600);
                                                                                          }
                                                                                          §§goto(addr598);
                                                                                       }
                                                                                       §§goto(addr673);
                                                                                    }
                                                                                    §§goto(addr648);
                                                                                 }
                                                                                 §§goto(addr679);
                                                                              }
                                                                              §§goto(addr676);
                                                                           }
                                                                           addr654:
                                                                           §§goto(addr654);
                                                                           addr301:
                                                                           addr319:
                                                                           addr346:
                                                                        }
                                                                        §§goto(addr427);
                                                                        addr362:
                                                                     }
                                                                     §§goto(addr438);
                                                                     addr425:
                                                                  }
                                                                  §§goto(addr423);
                                                               }
                                                               §§goto(addr416);
                                                            }
                                                            §§goto(addr425);
                                                         }
                                                         §§goto(addr426);
                                                      }
                                                      this.§!-§ = 0;
                                                      addr307:
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            this.§<!%§ = 0;
                                                            if(!_loc6_)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        §§goto(addr386);
                                                                     }
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr301);
                                                                     }
                                                                     §§goto(addr485);
                                                                  }
                                                                  §§goto(addr362);
                                                               }
                                                               §§goto(addr319);
                                                            }
                                                            §§goto(addr307);
                                                         }
                                                         §§goto(addr445);
                                                      }
                                                      §§goto(addr327);
                                                   }
                                                   §§goto(addr445);
                                                }
                                                §§goto(addr437);
                                             }
                                             §§push(_loc1_);
                                             §§push(_loc1_.y);
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop() * this.§6!W§);
                                             }
                                             §§pop().y = §§pop();
                                             §§goto(addr469);
                                             addr484:
                                          }
                                          §§goto(addr384);
                                       }
                                       _loc4_ = _loc2_.§7r§();
                                       if(_loc5_)
                                       {
                                          §§push(this);
                                          §§push(this.§""$§);
                                          if(_loc5_)
                                          {
                                             §§push(§§pop() + _loc4_.§[]§);
                                          }
                                          §§pop().§""$§ = §§pop();
                                          §§push(_loc1_);
                                          §§push(_loc1_.x);
                                          if(!(_loc6_ && _loc1_))
                                          {
                                             §§push(_loc4_.§`C§.x);
                                             if(!(_loc6_ && _loc2_))
                                             {
                                                §§push(§§pop() * _loc4_.§[]§);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§pop().x = §§pop();
                                          addr237:
                                          if(!(_loc6_ && this))
                                          {
                                             addr187:
                                             §§push(_loc1_);
                                             §§push(_loc1_.y);
                                             if(!_loc6_)
                                             {
                                                §§push(_loc4_.§`C§.y);
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop() * _loc4_.§[]§);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§pop().y = §§pop();
                                             if(!(_loc6_ && this))
                                             {
                                                §§push(this);
                                                §§push(this.§!-§);
                                                if(_loc5_ || _loc3_)
                                                {
                                                   §§push(§§pop() + _loc4_.I);
                                                }
                                                §§pop().§!-§ = §§pop();
                                                if(!_loc6_)
                                                {
                                                   if(false)
                                                   {
                                                      §§goto(addr187);
                                                   }
                                                   §§goto(addr255);
                                                }
                                                §§goto(addr187);
                                             }
                                             §§goto(addr237);
                                             addr244:
                                          }
                                          addr254:
                                          §§goto(addr254);
                                       }
                                       §§goto(addr244);
                                    }
                                    addr270:
                                    if(§§pop() > §§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          this.§6!W§ = 1 / this.§""$§;
                                          if(!(_loc6_ && _loc1_))
                                          {
                                             §§push(_loc1_);
                                             §§push(_loc1_.x);
                                             if(_loc5_ || _loc3_)
                                             {
                                                §§push(§§pop() * this.§6!W§);
                                             }
                                             §§pop().x = §§pop();
                                             §§goto(addr484);
                                          }
                                          §§goto(addr458);
                                       }
                                       §§goto(addr346);
                                    }
                                    else
                                    {
                                       this.§""$§ = 1;
                                    }
                                    §§goto(addr451);
                                 }
                                 §§goto(addr445);
                              }
                              if(!_loc6_)
                              {
                                 §§push(this.§""$§);
                                 if(_loc5_)
                                 {
                                    §§push(0);
                                    if(_loc5_)
                                    {
                                       §§goto(addr270);
                                    }
                                 }
                                 §§goto(addr445);
                              }
                              §§goto(addr386);
                           }
                           §§goto(addr78);
                        }
                        §§goto(addr73);
                     }
                     §§goto(addr72);
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr111);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(!_loc5_)
         {
            §§push(param1.x);
            if(!_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(_loc4_)
               {
                  §§goto(addr34);
               }
               §§goto(addr52);
            }
            §§goto(addr39);
         }
         addr34:
         §§push(_loc2_.col2.x);
         if(_loc4_)
         {
            addr39:
            §§push(param1.y);
            if(!_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc5_ && _loc3_))
               {
                  addr52:
                  §§push(§§pop() + §§pop());
                  §§push(_loc2_.col1.y);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(param1.x);
                     if(!(_loc5_ && this))
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc4_ || _loc2_)
                        {
                        }
                        §§goto(addr98);
                     }
                  }
               }
               §§goto(addr98);
            }
            §§goto(addr94);
         }
         addr98:
         §§push(_loc2_.col2.y);
         if(_loc4_)
         {
            addr94:
            §§push(§§pop() * param1.y);
         }
         var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
         if(_loc4_)
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(_loc4_ || param1)
            {
               §§push(§§pop() + this.m_xf.position.x);
            }
            §§pop().x = §§pop();
         }
         do
         {
            §§push(_loc3_);
            §§push(_loc3_.y);
            if(_loc4_)
            {
               §§push(§§pop() + this.m_xf.position.y);
            }
            §§pop().y = §§pop();
         }
         while(_loc5_);
         
         return _loc3_;
      }
      
      public function §+!y§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§,!s§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§4!t§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§7!`§(this.m_xf.R,param1);
      }
      
      public function §7"C§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§?o§.x);
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.m_angularVelocity);
            if(_loc3_ || param1)
            {
               §§push(param1.y);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(this.m_sweep.c.y);
                  if(_loc3_ || param1)
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc3_ || this)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc3_ || param1)
                        {
                           addr84:
                           §§push(§§pop() - §§pop());
                           §§push(this.§?o§.y);
                           if(_loc2_)
                           {
                           }
                           §§goto(addr119);
                        }
                        §§push(this.m_angularVelocity);
                        if(_loc3_ || param1)
                        {
                        }
                        addr118:
                        addr119:
                        return new §§pop().b2Vec2(§§pop(),§§pop());
                        §§push(§§pop() + §§pop());
                     }
                     §§push(param1.x);
                     if(!_loc2_)
                     {
                        addr112:
                        §§push(§§pop() - this.m_sweep.c.x);
                     }
                     §§goto(addr118);
                     §§push(§§pop() * §§pop());
                  }
                  §§goto(addr112);
               }
               §§goto(addr118);
            }
            §§goto(addr119);
         }
         §§goto(addr84);
      }
      
      public function §6F§(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(_loc4_)
         {
            §§push(param1.x);
            if(!(_loc5_ && _loc3_))
            {
               §§push(§§pop() * §§pop());
               if(_loc4_ || _loc3_)
               {
                  addr44:
                  §§push(_loc2_.col2.x);
                  if(!(_loc5_ && param1))
                  {
                     §§push(param1.y);
                     if(_loc4_ || _loc2_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc5_ && this))
                        {
                           addr71:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(!(_loc5_ && _loc2_))
                           {
                              §§push(param1.x);
                              if(_loc4_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc5_)
                                 {
                                    addr89:
                                    §§push(_loc2_.col2.y);
                                    if(!_loc5_)
                                    {
                                       addr97:
                                       §§push(§§pop() + §§pop() * param1.y);
                                    }
                                    §§goto(addr97);
                                 }
                                 var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    §§push(_loc3_);
                                    §§push(_loc3_.x);
                                    if(_loc4_ || param1)
                                    {
                                       §§push(§§pop() + this.m_xf.position.x);
                                    }
                                    §§pop().x = §§pop();
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
                                    
                                 }
                                 §§push(§§findproperty(b2Vec2));
                                 §§push(this.§?o§.x);
                                 if(_loc4_)
                                 {
                                    §§push(this.m_angularVelocity);
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§push(_loc3_.y);
                                       if(_loc4_ || _loc2_)
                                       {
                                          §§push(this.m_sweep.c.y);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc5_ && param1))
                                                {
                                                   addr161:
                                                   §§push(§§pop() - §§pop());
                                                   §§push(this.§?o§.y);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(this.m_angularVelocity);
                                                      if(_loc4_)
                                                      {
                                                         addr186:
                                                         §§push(_loc3_.x);
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            addr180:
                                                            §§push(§§pop() - this.m_sweep.c.x);
                                                         }
                                                         §§push(§§pop() + §§pop() * §§pop());
                                                      }
                                                      §§goto(addr186);
                                                   }
                                                }
                                                return new §§pop().b2Vec2(§§pop(),§§pop());
                                             }
                                             §§goto(addr186);
                                          }
                                          §§goto(addr180);
                                       }
                                       §§goto(addr186);
                                    }
                                 }
                                 §§goto(addr161);
                              }
                              §§goto(addr97);
                           }
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr97);
                  }
               }
            }
            §§goto(addr71);
         }
         §§goto(addr44);
      }
      
      public function §!;§() : Number
      {
         return this.§[5§;
      }
      
      public function SetLinearDamping(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§[5§ = param1;
         }
      }
      
      public function §+!1§() : Number
      {
         return this.§=!y§;
      }
      
      public function §"!l§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§=!y§ = param1;
         }
      }
      
      public function §1!D§(param1:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(this.§0w§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr113:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        this.§0w§ = param1;
                        addr107:
                        addr115:
                        while(_loc3_)
                        {
                           this.§0!^§();
                           while(_loc3_ || _loc2_)
                           {
                              continue loop0;
                           }
                        }
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr115);
      }
      
      public function §@!N§() : uint
      {
         return this.§0w§;
      }
      
      public function §&2§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1)
            {
               this.§0" § &= ~b2internal::,i;
               if(!(_loc3_ && _loc2_))
               {
                  addr50:
               }
               else
               {
                  addr71:
               }
               return;
            }
            if(!_loc3_)
            {
               this.§0" § |= b2internal::,i;
            }
            §§goto(addr71);
         }
         §§goto(addr50);
      }
      
      public function §9!0§() : Boolean
      {
         return (this.§0" § & b2internal::,i) == b2internal::,i;
      }
      
      public function §9x§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1)
            {
               this.§0" § &= ~b2internal::!"B;
               loop0:
               while(_loc2_ || _loc2_)
               {
                  if(_loc3_)
                  {
                     this.§0" § |= b2internal::!"B;
                  }
                  else
                  {
                     addr77:
                  }
                  while(true)
                  {
                     this.SetAwake(true);
                     if(_loc2_ || _loc2_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  return;
               }
               §§goto(addr19);
            }
            §§goto(addr77);
         }
         §§goto(addr64);
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(!param1)
            {
               this.§0" § &= ~b2internal::6k;
               loop0:
               while(true)
               {
                  this.§;",§ = 0;
                  loop1:
                  while(true)
                  {
                     if(!(_loc2_ || param1))
                     {
                        continue loop0;
                     }
                     if(!_loc2_)
                     {
                        addr117:
                        this.§0" § |= b2internal::6k;
                        break;
                     }
                     this.§?o§.§@!d§();
                     while(true)
                     {
                        this.m_angularVelocity = 0;
                        loop3:
                        while(!_loc3_)
                        {
                           if(_loc3_)
                           {
                              continue loop1;
                           }
                           this.§#!u§.§@!d§();
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 if(!(_loc2_ || _loc3_))
                                 {
                                    break loop1;
                                 }
                                 continue;
                              }
                              continue loop3;
                           }
                           §§goto(addr24);
                        }
                     }
                  }
                  this.§;",§ = 0;
                  §§goto(addr104);
               }
            }
            §§goto(addr117);
         }
         §§goto(addr74);
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§0" § & b2internal::6k) == b2internal::6k;
      }
      
      public function §=!@§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(!param1)
            {
               this.§0" § &= ~b2internal::^];
               while(true)
               {
                  if(_loc3_)
                  {
                     continue;
                  }
               }
            }
            while(true)
            {
               this.§0" § |= b2internal::^];
            }
         }
         §§goto(addr88);
      }
      
      public function §]!I§() : Boolean
      {
         return (this.§0" § & b2internal::^]) == b2internal::^];
      }
      
      public function §85§(param1:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§>!e§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(_loc7_ || _loc2_)
         {
            §§push(param1);
            if(!(_loc6_ && _loc2_))
            {
               if(§§pop() == this.§0!h§())
               {
                  if(!(_loc6_ && param1))
                  {
                     return;
                  }
                  addr72:
                  _loc2_ = this.m_world.§9>§.§2"$§;
                  _loc3_ = this.§&?§;
                  while(_loc3_)
                  {
                     _loc3_.§'!C§(_loc2_,this.m_xf);
                     if(_loc6_)
                     {
                        break;
                     }
                     _loc3_ = _loc3_.§+!o§;
                  }
               }
               else
               {
                  addr63:
                  if(param1)
                  {
                     if(!_loc6_)
                     {
                        addr66:
                        this.§0" § |= b2internal::%!@;
                     }
                     §§goto(addr72);
                  }
                  else
                  {
                     this.§0" § &= ~b2internal::%!@;
                     _loc2_ = this.m_world.§9>§.§2"$§;
                     _loc3_ = this.§&?§;
                     if(_loc7_ || _loc3_)
                     {
                        loop1:
                        while(_loc3_)
                        {
                           _loc3_.§&1§(_loc2_);
                           if(_loc6_ && _loc2_)
                           {
                              break;
                           }
                           while(true)
                           {
                              _loc3_ = _loc3_.§+!o§;
                              continue loop1;
                           }
                        }
                        _loc4_ = this.§1!Z§;
                        if(!(_loc6_ && param1))
                        {
                           while(_loc4_)
                           {
                              _loc5_ = _loc4_;
                              _loc4_ = _loc4_.§ X§;
                              if(_loc7_ || _loc3_)
                              {
                                 this.m_world.§9>§.§^!a§(_loc5_.§%!b§);
                              }
                           }
                           if(_loc7_)
                           {
                              this.§1!Z§ = null;
                           }
                        }
                        §§goto(addr200);
                     }
                     §§goto(addr144);
                  }
               }
               addr200:
               return;
            }
            §§goto(addr63);
         }
         §§goto(addr66);
      }
      
      public function §0!h§() : Boolean
      {
         return (this.§0" § & b2internal::%!@) == b2internal::%!@;
      }
      
      public function §^!S§() : Boolean
      {
         return (this.§0" § & b2internal::!"B) == b2internal::!"B;
      }
      
      public function §=s§() : b2Fixture
      {
         return this.§&?§;
      }
      
      public function GetJointList() : b2JointEdge
      {
         return this.§5G§;
      }
      
      public function §+">§() : b2ControllerEdge
      {
         return this.§ <§;
      }
      
      public function §<!r§() : b2ContactEdge
      {
         return this.§1!Z§;
      }
      
      public function §`!y§() : b2Body
      {
         return this.§+!o§;
      }
      
      public function GetUserData() : *
      {
         return this.§7R§;
      }
      
      public function SetUserData(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§7R§ = param1;
         }
      }
      
      public function §3"+§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §null§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §&O§;
         if(_loc7_)
         {
            §§push(_loc1_.R);
            if(_loc7_)
            {
               §§pop().Set(this.m_sweep.a0);
               addr33:
               §§push(_loc1_.R);
            }
            var _loc2_:b2Mat22 = §§pop();
            var _loc3_:b2Vec2 = this.m_sweep.localCenter;
            if(!(_loc6_ && _loc2_))
            {
               §§push(_loc1_.position);
               if(_loc7_)
               {
                  §§push(this.m_sweep);
                  if(_loc7_ || _loc2_)
                  {
                     §§push(§§pop().c0);
                     if(_loc7_)
                     {
                        §§push(§§pop().x);
                        if(!(_loc6_ && _loc1_))
                        {
                           §§push(_loc2_.col1);
                           if(_loc7_ || _loc3_)
                           {
                              §§push(§§pop().x);
                              if(!(_loc6_ && _loc2_))
                              {
                                 §§push(_loc3_.x);
                                 if(_loc7_ || _loc3_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc6_ && this))
                                    {
                                       §§push(_loc2_.col2);
                                       if(_loc7_)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc7_ || _loc1_)
                                          {
                                             §§push(_loc3_.y);
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc7_)
                                                      {
                                                         §§goto(addr152);
                                                      }
                                                      §§goto(addr163);
                                                   }
                                                   §§goto(addr185);
                                                }
                                             }
                                          }
                                          §§goto(addr198);
                                       }
                                    }
                                    §§goto(addr185);
                                 }
                              }
                              §§goto(addr198);
                           }
                           §§goto(addr163);
                        }
                        addr152:
                        §§pop().x = §§pop();
                        if(_loc7_)
                        {
                           addr160:
                           addr159:
                           addr157:
                           addr155:
                           §§push(_loc1_.position);
                           §§push(this.m_sweep.c0.y);
                           if(_loc7_)
                           {
                              addr163:
                              §§push(_loc2_.col1.y);
                              if(_loc7_ || _loc3_)
                              {
                                 §§push(_loc3_.x);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc7_ || _loc2_)
                                    {
                                       addr185:
                                       §§push(_loc2_.col2.y);
                                       if(_loc7_ || _loc3_)
                                       {
                                          addr198:
                                          §§push(§§pop() - (§§pop() + §§pop() * _loc3_.y));
                                       }
                                    }
                                 }
                              }
                              §§goto(addr198);
                           }
                           §§pop().y = §§pop();
                        }
                        var _loc5_:§>!e§ = this.m_world.§9>§.§2"$§;
                        _loc4_ = this.§&?§;
                        while(_loc4_)
                        {
                           _loc4_.§2$§(_loc5_,_loc1_,this.m_xf);
                           if(_loc6_ && this)
                           {
                              break;
                           }
                           _loc4_ = _loc4_.§+!o§;
                        }
                        return;
                     }
                     §§goto(addr160);
                  }
                  §§goto(addr159);
               }
               §§goto(addr157);
            }
            §§goto(addr155);
         }
         §§goto(addr33);
      }
      
      b2internal function §6!+§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.m_xf);
            if(!_loc3_)
            {
               §§push(§§pop().R);
               if(!(_loc3_ && this))
               {
                  §§pop().Set(this.m_sweep.a);
                  addr37:
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
                     addr189:
                     while(true)
                     {
                        §§push(this.m_sweep);
                        addr191:
                        while(true)
                        {
                           §§push(§§pop().c);
                           addr192:
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr193:
                              loop4:
                              while(true)
                              {
                                 §§push(_loc1_.col1);
                                 addr195:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    addr196:
                                    while(true)
                                    {
                                       §§push(_loc2_.x);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          while(true)
                                          {
                                             §§push(_loc1_.col2);
                                             addr213:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr214:
                                                while(true)
                                                {
                                                   §§push(_loc2_.y);
                                                   addr216:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                }
                                             }
                                             addr172:
                                             if(_loc4_ || _loc1_)
                                             {
                                                addr180:
                                                §§push(§§pop() - §§pop());
                                                if(_loc4_)
                                                {
                                                   §§pop().y = §§pop();
                                                   if(_loc4_)
                                                   {
                                                      return;
                                                      addr185:
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop4;
                                             }
                                          }
                                          addr201:
                                       }
                                       addr217:
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          addr218:
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
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr185);
            }
         }
         §§goto(addr37);
      }
      
      b2internal function §!!Z§(param1:b2Body) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§0w§);
            if(!_loc4_)
            {
               §§push(b2_dynamicBody);
               if(_loc3_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc3_ || _loc2_)
                  {
                     §§push(!§§pop());
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           if(_loc3_ || _loc3_)
                           {
                              §§pop();
                              if(_loc3_ || _loc2_)
                              {
                                 addr56:
                                 §§push(param1.§0w§ == b2_dynamicBody);
                                 if(!_loc4_)
                                 {
                                    §§push(!§§pop());
                                    if(!_loc4_)
                                    {
                                       §§goto(addr72);
                                    }
                                 }
                              }
                              §§goto(addr75);
                           }
                           §§goto(addr76);
                        }
                     }
                  }
                  addr72:
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        addr76:
                        return false;
                        addr75:
                     }
                  }
                  var _loc2_:b2JointEdge = this.§5G§;
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        §§push(true);
                        addr136:
                     }
                     if(_loc2_.§1!>§ == param1)
                     {
                        if(_loc3_)
                        {
                           §§push(_loc2_.§7!>§.§46§);
                           if(_loc4_ && _loc3_)
                           {
                              break;
                           }
                           if(§§pop() == false)
                           {
                              if(!(_loc4_ && this))
                              {
                                 §§push(false);
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 §§goto(addr136);
                              }
                           }
                        }
                     }
                     continue;
                     return §§pop();
                  }
                  return §§pop();
               }
            }
            §§goto(addr56);
         }
         §§goto(addr76);
      }
      
      b2internal function §,s§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.m_sweep);
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§pop().§,s§(§§pop());
                  while(true)
                  {
                     §§push(this.m_sweep);
                     while(true)
                     {
                        §§pop().c.SetV(this.m_sweep.c0);
                        while(true)
                        {
                           §§push(this.m_sweep);
                           if(_loc2_ && _loc2_)
                           {
                              break;
                           }
                           if(_loc3_)
                           {
                              §§push(this.m_sweep.a0);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§pop().a = §§pop();
                                 continue;
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
         §§goto(addr77);
      }
   }
}

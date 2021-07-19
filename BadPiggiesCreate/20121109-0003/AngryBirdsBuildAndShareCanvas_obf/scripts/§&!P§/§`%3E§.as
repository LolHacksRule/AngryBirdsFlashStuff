package §&!P§
{
   import §%!0§.§,4§;
   import §+!-§.Sprite;
   import §<i§.§'!e§;
   import §]";§.§4!p§;
   
   public class §`>§ extends §^!!§
   {
       
      
      public function §`>§(param1:§,4§, param2:§'!e§, param3:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            super(param1,param2,param3);
         }
      }
      
      public function §^!e§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §9n§.sort(this.§ "!§);
         }
      }
      
      private function § "!§(param1:§``§, param2:§``§, param3:Array = null) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            §§push(param1.isGround());
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(param2.isGround());
                              if(!(_loc5_ && param3))
                              {
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 §§push(!§§pop());
                              }
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!(_loc4_ || param1))
                                 {
                                    break;
                                 }
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc5_ && param1))
                                          {
                                             break;
                                          }
                                          if(!(_loc5_ && param1))
                                          {
                                             if(_loc5_ && param1)
                                             {
                                                continue loop4;
                                             }
                                          }
                                          §§goto(addr131);
                                       }
                                       §§push(1);
                                       if(!(_loc4_ || param1))
                                       {
                                          break;
                                       }
                                       if(!_loc5_)
                                       {
                                          return §§pop();
                                       }
                                       continue loop0;
                                    }
                                    return §§pop();
                                    addr72:
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    addr131:
                                    while(true)
                                    {
                                       §§push(param1.§@F§);
                                       continue loop6;
                                    }
                                 }
                                 addr130:
                                 while(true)
                                 {
                                    §§push(§§pop() == §4!p§.§ z§);
                                    if(!(_loc5_ && param2))
                                    {
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       continue loop5;
                                    }
                                    §§goto(addr130);
                                 }
                                 if(_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                        }
                     }
                     §§goto(addr72);
                  }
               }
            }
         }
         §§goto(addr131);
      }
      
      public function §,x§(param1:§``§, param2:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:int = §9n§.indexOf(param1);
         var _loc4_:§``§ = §9n§[_loc3_];
         if(_loc6_)
         {
            §§push(param2);
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  if(_loc6_ || param2)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop12:
                           while(true)
                           {
                              §§pop();
                              addr203:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 addr159:
                                 while(true)
                                 {
                                    §§push(§§pop() < §9n§.length);
                                    continue loop12;
                                 }
                                 continue loop12;
                              }
                           }
                           addr202:
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              §§push(param2);
                              loop4:
                              while(true)
                              {
                                 §§push(-1);
                                 addr121:
                                 while(!(_loc5_ && this))
                                 {
                                    §§push(§§pop() == §§pop());
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!_loc6_)
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          while(!(_loc5_ && param2))
                                          {
                                             §§pop();
                                             while(true)
                                             {
                                                if(!(_loc5_ && param1))
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §9n§[_loc3_ + 1] = §9n§[_loc3_];
                                                   }
                                                   else
                                                   {
                                                      addr171:
                                                   }
                                                   continue loop4;
                                                   break;
                                                }
                                                break;
                                                addr48:
                                                if(!(_loc6_ || param1))
                                                {
                                                   continue;
                                                }
                                                if(_loc6_)
                                                {
                                                   §§goto(addr30);
                                                }
                                                §§goto(addr203);
                                             }
                                             §9n§[_loc3_] = _loc4_;
                                             §§push(§§pop() >= §§pop());
                                             if(!(_loc6_ || param2))
                                             {
                                                continue;
                                             }
                                             if(!_loc6_)
                                             {
                                                continue loop6;
                                             }
                                             loop9:
                                             while(§§pop())
                                             {
                                                while(true)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      break loop9;
                                                   }
                                                   addr156:
                                                   §9n§[_loc3_ - 1] = §9n§[_loc3_];
                                                   do
                                                   {
                                                      §9n§[_loc3_] = _loc4_;
                                                   }
                                                   while(_loc5_ && this);
                                                   
                                                   if(!_loc6_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr48);
                                                }
                                             }
                                             addr30:
                                             return;
                                             addr104:
                                          }
                                          §§goto(addr162);
                                       }
                                       else
                                       {
                                          §§goto(addr104);
                                       }
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                           }
                           §§goto(addr171);
                        }
                     }
                  }
                  §§goto(addr202);
               }
               if(_loc5_ && param2)
               {
                  continue;
               }
               §§push(1);
               if(_loc6_ || this)
               {
                  §§goto(addr84);
               }
               §§goto(addr121);
            }
         }
         §§goto(addr203);
      }
   }
}

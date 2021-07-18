package §+!o§
{
   import §"v§.§9"§;
   import §,a§.§]!>§;
   import §5!V§.§!w§;
   import §default§.Sprite;
   
   public class §^!Q§ extends §?"-§
   {
       
      
      public function §^!Q§(param1:§!w§, param2:§9"§, param3:Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(param1,param2,param3);
         }
      }
      
      public function §6!Y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §84§.sort(this.§`!N§);
         }
      }
      
      private function §`!N§(param1:§]"5§, param2:§]"5§, param3:Array = null) : int
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
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(param2.isGround());
                              loop5:
                              for(; _loc4_; if(_loc5_ && param2)
                              {
                                 continue;
                              },§§goto(addr68))
                              {
                                 if(_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(!§§pop());
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(§§pop());
                                    if(!_loc4_)
                                    {
                                       continue loop2;
                                    }
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc4_ || param1)
                                             {
                                                break loop2;
                                             }
                                             if(_loc4_ || param2)
                                             {
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                                continue loop4;
                                             }
                                             addr126:
                                             addr126:
                                             loop8:
                                             while(true)
                                             {
                                                §§push(param1.§,!E§);
                                                if(!(_loc4_ || param2))
                                                {
                                                   return §§pop();
                                                }
                                                addr85:
                                                addr85:
                                                §§push(§§pop() == §]!>§.§&;§);
                                                if(!_loc5_)
                                                {
                                                   continue loop5;
                                                }
                                                addr125:
                                                while(true)
                                                {
                                                   §§pop();
                                                   continue loop8;
                                                }
                                             }
                                          }
                                          break;
                                          addr68:
                                          if(!(_loc5_ && this))
                                          {
                                             continue;
                                          }
                                          continue loop1;
                                       }
                                       §§push(1);
                                       if(!(_loc5_ && param1))
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr85);
                                       addr75:
                                    }
                                    §§goto(addr126);
                                 }
                                 §§goto(addr125);
                              }
                              continue loop3;
                           }
                        }
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr85);
               }
            }
         }
         §§goto(addr126);
      }
      
      public function §!x§(param1:§]"5§, param2:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:int = §84§.indexOf(param1);
         var _loc4_:§]"5§ = §84§[_loc3_];
         if(_loc6_ || _loc3_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(0);
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop8:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 §§push(param2);
                                 loop9:
                                 while(true)
                                 {
                                    §§push(-1);
                                    addr137:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       loop11:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc6_ || param1))
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                addr148:
                                                addr80:
                                                while(true)
                                                {
                                                   if(!(_loc6_ || _loc3_))
                                                   {
                                                      §84§[_loc3_ + 1] = §84§[_loc3_];
                                                   }
                                                   else
                                                   {
                                                      addr183:
                                                   }
                                                   continue loop9;
                                                }
                                                §§push(§§pop() >= §§pop());
                                                if(!(_loc6_ || param1))
                                                {
                                                   continue;
                                                }
                                                if(_loc5_)
                                                {
                                                   continue loop11;
                                                }
                                                addr90:
                                                if(_loc6_ || param1)
                                                {
                                                   if(_loc5_ && param2)
                                                   {
                                                      continue loop2;
                                                   }
                                                   loop14:
                                                   while(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            §84§[_loc3_ - 1] = §84§[_loc3_];
                                                            while(true)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr148);
                                                            }
                                                            break loop14;
                                                            addr161:
                                                         }
                                                         addr201:
                                                         §84§[_loc3_] = _loc4_;
                                                         §§goto(addr161);
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            break loop14;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         continue loop0;
                                                      }
                                                   }
                                                   return;
                                                   addr114:
                                                }
                                                else
                                                {
                                                   while(_loc6_ || _loc3_)
                                                   {
                                                      continue loop8;
                                                      §§goto(addr90);
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop();
                                                   }
                                                   addr207:
                                                   addr174:
                                                }
                                                §§goto(addr208);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr114);
                                          }
                                          §§goto(addr201);
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                              §§goto(addr183);
                           }
                        }
                        §§goto(addr207);
                     }
                  }
               }
            }
         }
         §§goto(addr131);
      }
   }
}

package §'4§
{
   public class §2!;§
   {
      
      private static const §5"3§:Number = 1.0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §5"3§ = 1;
         }
      }
      
      private var §^§:Number = 1.0;
      
      private var §%"8§:Number = 0.0;
      
      private var §'!Z§:Number = 0.0;
      
      private var §6",§:Number = 0.0;
      
      private var §3$§:Number = 0.0;
      
      private var § U§:Number = 1.0;
      
      public function §2!;§(param1:Number = 0.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.§^§ = param4;
               loop1:
               while(!_loc5_)
               {
                  this.§%"8§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§'!Z§ = param1;
                     while(true)
                     {
                        this.§6",§ = param3;
                        addr57:
                        while(_loc6_)
                        {
                           if(_loc6_)
                           {
                              continue;
                           }
                           continue loop1;
                        }
                        continue loop2;
                        addr35:
                        if(!(_loc5_ && this))
                        {
                           return;
                           addr52:
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.update(0);
            if(!(_loc5_ && param3))
            {
               §§goto(addr35);
            }
            §§goto(addr57);
         }
         §§goto(addr52);
      }
      
      public function get speed() : Number
      {
         return this.§ U§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Number = NaN;
         if(_loc3_ || param1)
         {
            §§push(this);
            §§push(this.§3$§);
            if(_loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§3$§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this.§3$§);
               loop1:
               while(true)
               {
                  §§push(this.§'!Z§);
                  loop2:
                  while(§§pop() >= §§pop())
                  {
                     §§push(this.§3$§);
                     loop3:
                     while(true)
                     {
                        §§push(this.§'!Z§);
                        loop4:
                        while(_loc3_ || param1)
                        {
                           §§push(this.§%"8§);
                           loop5:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              while(true)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    §§push(this.§3$§);
                                    if(!_loc4_)
                                    {
                                       §§push(this.§'!Z§);
                                       if(!_loc4_)
                                       {
                                          if(_loc4_ && param1)
                                          {
                                             continue loop4;
                                          }
                                          §§push(this.§%"8§);
                                          if(_loc4_)
                                          {
                                             continue loop5;
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc3_ || _loc2_)
                                          {
                                             §§push(this.§6",§);
                                             if(_loc3_)
                                             {
                                                continue loop5;
                                             }
                                             addr208:
                                             addr209:
                                             §§push(§§pop() - (§§pop() + §§pop()));
                                             if(_loc3_ || _loc2_)
                                             {
                                                break;
                                             }
                                             continue loop1;
                                          }
                                       }
                                       addr176:
                                       if(_loc4_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       if(§§pop() < §§pop())
                                       {
                                          if(!(_loc4_ && this))
                                          {
                                             continue loop0;
                                          }
                                          addr254:
                                          if(_loc4_)
                                          {
                                             break loop2;
                                          }
                                          this.§ U§ = this.§^§;
                                       }
                                       else
                                       {
                                          this.§ U§ = §5"3§;
                                          if(!_loc4_)
                                          {
                                             if(_loc3_ || _loc2_)
                                             {
                                                §§push(false);
                                                addr66:
                                             }
                                             else
                                             {
                                                addr26:
                                                §§push(true);
                                                if(_loc3_ || _loc3_)
                                                {
                                                   return §§pop();
                                                }
                                                addr303:
                                             }
                                             return §§pop();
                                          }
                                          addr109:
                                          if(!(_loc3_ || this))
                                          {
                                             addr228:
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§push(this);
                                                §§push(this.§^§);
                                                if(!_loc4_)
                                                {
                                                   §§push(§5"3§);
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      §§push(this.§^§);
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc3_)
                                                         {
                                                            addr88:
                                                            §§push(_loc2_);
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               addr96:
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  addr106:
                                                                  §§push(§§pop() / this.§6",§);
                                                               }
                                                               §§pop().§ U§ = §§pop() + §§pop();
                                                               §§goto(addr109);
                                                            }
                                                         }
                                                         §§goto(addr106);
                                                      }
                                                      §§goto(addr96);
                                                   }
                                                   §§goto(addr88);
                                                }
                                                §§goto(addr96);
                                             }
                                             §§goto(addr26);
                                             addr260:
                                          }
                                          §§goto(addr26);
                                       }
                                       §§goto(addr260);
                                    }
                                    break;
                                 }
                                 §§goto(addr254);
                              }
                              if(_loc3_)
                              {
                                 §§push(Number(§§pop()));
                                 continue loop1;
                              }
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                  }
                  §§push(this);
                  §§push(§5"3§);
                  if(_loc3_ || param1)
                  {
                     §§push(this.§^§);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(§5"3§);
                        if(_loc3_)
                        {
                           §§push(§§pop() - §§pop());
                           if(!_loc4_)
                           {
                              addr291:
                              §§push(this.§3$§);
                              if(!_loc4_)
                              {
                                 addr295:
                                 §§push(§§pop() * §§pop());
                                 if(!_loc4_)
                                 {
                                    addr300:
                                    §§push(§§pop() / this.§'!Z§);
                                 }
                                 §§pop().§ U§ = §§pop() + §§pop();
                                 §§goto(addr303);
                              }
                           }
                           §§goto(addr300);
                        }
                        §§goto(addr295);
                     }
                     §§goto(addr291);
                  }
                  §§goto(addr295);
               }
            }
         }
         §§goto(addr66);
      }
   }
}

package §_-TG§
{
   import §_-JK§.§_-S2§;
   
   public class §_-06K§
   {
       
      
      public var §_-097§:Number = 0;
      
      public var §_-01G§:Number = 0;
      
      public var §_-DA§:Number;
      
      public var §_-hy§:Number;
      
      public function §_-06K§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§_-DA§ = §_-L8§.§_-0Ca§;
            while(true)
            {
               this.§_-hy§ = §_-L8§.§_-ty§;
            }
            addr99:
         }
         loop1:
         while(true)
         {
            super();
            loop2:
            while(true)
            {
               this.§_-DA§ = param1;
               while(_loc3_)
               {
                  this.§_-hy§ = param2;
                  loop4:
                  do
                  {
                     this.§_-097§ = 0;
                     while(!_loc4_)
                     {
                        continue loop1;
                        this.§_-01G§ = 0;
                        if(!(_loc4_ && param2))
                        {
                           continue loop4;
                        }
                     }
                     continue loop2;
                  }
                  while(_loc4_);
                  
                  if(!_loc4_)
                  {
                     return;
                  }
               }
               §§goto(addr99);
            }
         }
      }
      
      public function §_-JO§(param1:§_-S2§, param2:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(!_loc5_)
         {
            §§push(this.§_-097§);
            loop0:
            while(true)
            {
               §§push(§_-L8§.§_-9G§);
               loop1:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     §§push(false);
                     if(_loc6_ || param2)
                     {
                        return §§pop();
                     }
                     break;
                  }
                  if(_loc6_ || param1)
                  {
                     §§push(this);
                     §§push(this.§_-097§);
                     if(_loc6_ || this)
                     {
                        §§push(§§pop() + param2);
                     }
                     §§pop().§_-097§ = §§pop();
                  }
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§_-01G§);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(§§pop() + this.§_-DA§);
                     }
                     §§pop().§_-01G§ = §§pop();
                     addr290:
                     while(true)
                     {
                        §§push(param2);
                        if(!_loc5_)
                        {
                           §§push(§_-L8§.§_-2j§);
                           if(_loc6_)
                           {
                              §§push(§§pop() / §§pop());
                              if(!_loc5_)
                              {
                                 §§push(this.§_-hy§);
                              }
                              loop7:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 addr264:
                                 loop8:
                                 while(true)
                                 {
                                    §§push(param2);
                                    if(!_loc5_)
                                    {
                                       if(_loc5_)
                                       {
                                          continue loop7;
                                       }
                                       §§push(§_-L8§.§_-2j§);
                                       if(_loc6_)
                                       {
                                          addr175:
                                          if(!(_loc5_ && this))
                                          {
                                             §§push(§§pop() / §§pop());
                                             if(_loc6_ || param1)
                                             {
                                                addr190:
                                                if(!(_loc5_ && param2))
                                                {
                                                   addr199:
                                                   §§push(this.§_-hy§);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc6_ || param1)
                                                      {
                                                         addr209:
                                                         if(_loc5_ && param1)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop() * Math.sin(this.§_-01G§ * 2.1 * Math.PI));
                                                         if(!_loc5_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      _loc4_ = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(this);
                                                         §§push(this.§_-hy§);
                                                         if(!_loc6_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         §§push(param2);
                                                         if(!(_loc5_ && param2))
                                                         {
                                                            §§push(§_-L8§.§_-ty§);
                                                            if(!(_loc5_ && param2))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc6_)
                                                               {
                                                                  addr144:
                                                                  §§push(§§pop() / §_-L8§.§_-9G§);
                                                               }
                                                               §§push(§§pop() - §§pop());
                                                               continue loop2;
                                                            }
                                                         }
                                                         §§goto(addr144);
                                                         addr83:
                                                         param1.§_-S-§();
                                                         if(_loc6_)
                                                         {
                                                            §§push(true);
                                                            break loop1;
                                                         }
                                                      }
                                                      continue loop2;
                                                      addr230:
                                                   }
                                                   continue loop1;
                                                }
                                                while(true)
                                                {
                                                   continue loop7;
                                                   §§goto(addr190);
                                                }
                                                addr262:
                                             }
                                             §§goto(addr209);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                break loop8;
                                                §§goto(addr175);
                                             }
                                             addr244:
                                          }
                                       }
                                       §§goto(addr199);
                                    }
                                    §§goto(addr209);
                                 }
                                 while(_loc6_)
                                 {
                                    §§goto(addr262);
                                    §§push(§§pop() * Math.sin(Math.PI / 4 + this.§_-01G§ * 2 * Math.PI));
                                 }
                                 continue loop0;
                              }
                              addr263:
                           }
                           §§goto(addr244);
                        }
                        §§goto(addr263);
                     }
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr115);
      }
   }
}

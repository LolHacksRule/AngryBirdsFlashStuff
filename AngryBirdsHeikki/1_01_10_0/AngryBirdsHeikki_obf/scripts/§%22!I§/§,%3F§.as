package §"!I§
{
   import §9!4§.§95§;
   
   public class §,?§
   {
       
      
      public var §>!3§:Number = 0;
      
      public var §'!E§:Number = 0;
      
      public var §3! §:Number;
      
      public var §-!T§:Number;
      
      public function §,?§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§3! § = §<!$§.§^x§;
            loop0:
            while(true)
            {
               this.§-!T§ = §<!$§.§'!`§;
               while(true)
               {
                  super();
                  loop2:
                  for(; _loc3_ || param2; if(_loc4_ && param1)
                  {
                     continue;
                  },this.§>!3§ = 0,§§goto(addr46))
                  {
                     while(true)
                     {
                        this.§3! § = param1;
                        loop4:
                        while(true)
                        {
                           this.§-!T§ = param2;
                           while(true)
                           {
                              if(!(_loc4_ && param2))
                              {
                                 continue loop2;
                              }
                              continue loop4;
                              addr46:
                              while(!(_loc4_ && _loc3_))
                              {
                                 this.§'!E§ = 0;
                                 if(!(_loc4_ && param1))
                                 {
                                    continue loop0;
                                 }
                              }
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr98);
      }
      
      public function §3!&§(param1:§95§, param2:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         if(_loc6_ || param2)
         {
            §§push(this.§>!3§);
            loop0:
            while(true)
            {
               §§push(§<!$§.§?!X§);
               loop1:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     §§push(false);
                     if(_loc6_)
                     {
                        return §§pop();
                     }
                     break;
                  }
                  if(!_loc5_)
                  {
                     §§push(this);
                     §§push(this.§>!3§);
                     if(!_loc5_)
                     {
                        §§push(§§pop() + param2);
                     }
                     §§pop().§>!3§ = §§pop();
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§'!E§);
                     if(_loc6_ || this)
                     {
                        §§push(§§pop() + this.§3! §);
                     }
                     §§pop().§'!E§ = §§pop();
                     §§push(param2);
                     loop3:
                     while(true)
                     {
                        §§push(§<!$§.§?R§);
                        loop4:
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           loop5:
                           while(true)
                           {
                              §§push(this.§-!T§);
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop() * Math.sin(Math.PI / 4 + this.§'!E§ * 2 * Math.PI));
                                    loop8:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop9:
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          addr294:
                                          while(true)
                                          {
                                             §§push(param2);
                                             if(_loc6_ || _loc3_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   continue loop3;
                                                }
                                                §§push(§<!$§.§?R§);
                                                if(_loc6_ || param2)
                                                {
                                                   if(_loc6_ || this)
                                                   {
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         if(_loc6_ || this)
                                                         {
                                                            addr197:
                                                            §§push(this.§-!T§);
                                                            if(!(_loc6_ || param2))
                                                            {
                                                               continue loop4;
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               addr212:
                                                               §§push(§§pop() * Math.sin(this.§'!E§ * 2.1 * Math.PI));
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  if(_loc5_ && param2)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                         }
                                                         if(_loc6_ || param2)
                                                         {
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               continue loop0;
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue loop8;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop6;
                                                }
                                                §§goto(addr197);
                                             }
                                             §§goto(addr212);
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
               }
               addr38:
               return §§pop();
            }
         }
         §§goto(addr68);
      }
   }
}

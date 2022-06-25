package §2!H§
{
   import §<!j§.§%!-§;
   
   public class §0K§
   {
       
      
      public var §1f§:Number = 0;
      
      public var §<!M§:Number = 0;
      
      public var §?o§:Number;
      
      public var §^f§:Number;
      
      public function §0K§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§?o§ = §&!U§.§=!§;
         }
         while(true)
         {
            this.§^f§ = §&!U§.§,!I§;
            loop1:
            while(true)
            {
               super();
               while(true)
               {
                  this.§?o§ = param1;
                  addr81:
                  while(_loc4_)
                  {
                     continue loop1;
                  }
               }
            }
            if(_loc3_ && this)
            {
               continue;
            }
            §§goto(addr66);
         }
      }
      
      public function §@?§(param1:§%!-§, param2:Number) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         if(_loc5_ || param2)
         {
            §§push(this.§1f§);
            while(true)
            {
               §§push(§&!U§.§%!,§);
               §§goto(addr325);
            }
            addr322:
         }
         while(true)
         {
            §§push(this);
            §§push(this.§<!M§);
            if(!(_loc6_ && this))
            {
               §§push(§§pop() + this.§?o§);
            }
            §§pop().§<!M§ = §§pop();
            while(!(_loc6_ && param1))
            {
               §§push(param2);
               loop5:
               while(true)
               {
                  §§push(§&!U§.§1!Q§);
                  if(_loc5_ || param1)
                  {
                     if(!(_loc6_ && param2))
                     {
                        §§push(§§pop() / §§pop());
                        loop6:
                        while(true)
                        {
                           §§push(this.§^f§);
                           addr265:
                           loop7:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              loop8:
                              while(true)
                              {
                                 §§push(§§pop() * Math.sin(Math.PI / 4 + this.§<!M§ * 2 * Math.PI));
                                 loop9:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       §§push(param2);
                                       if(_loc5_)
                                       {
                                          if(_loc6_ && param1)
                                          {
                                             continue loop8;
                                          }
                                          §§push(§&!U§.§1!Q§);
                                          if(_loc5_)
                                          {
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop() / §§pop());
                                                if(!_loc6_)
                                                {
                                                   addr193:
                                                   §§push(§§pop() * this.§^f§);
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      continue loop5;
                                                   }
                                                }
                                                else
                                                {
                                                   addr227:
                                                   if(!_loc5_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   if(_loc6_)
                                                   {
                                                      break loop8;
                                                   }
                                                   §§push(Number(§§pop()));
                                                }
                                                addr232:
                                                if(!_loc6_)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             continue loop7;
                                          }
                                       }
                                       §§goto(addr193);
                                    }
                                    continue loop6;
                                 }
                              }
                              §§goto(addr322);
                           }
                        }
                     }
                     break;
                  }
                  §§goto(addr265);
               }
               addr325:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     §§push(false);
                     if(!(_loc6_ && param2))
                     {
                        return §§pop();
                     }
                     break;
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§1f§);
                     if(!(_loc6_ && this))
                     {
                        §§push(§§pop() + param2);
                     }
                     §§pop().§1f§ = §§pop();
                  }
               }
               addr42:
               return §§pop();
            }
            §§goto(addr326);
         }
      }
   }
}

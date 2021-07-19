package §%!0§
{
   import §,!g§.§"!P§;
   
   public class §7;§
   {
       
      
      public var §!'§:Number = 0;
      
      public var §&"?§:Number = 0;
      
      public var §2!§:Number;
      
      public var §<T§:Number;
      
      public function §7;§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§2!§ = §,g§.§-!i§;
            loop0:
            while(true)
            {
               this.§<T§ = §,g§.§+!O§;
               while(true)
               {
                  super();
                  while(_loc4_)
                  {
                     while(_loc4_ || this)
                     {
                        this.§!'§ = 0;
                        loop6:
                        while(!_loc3_)
                        {
                           this.§&"?§ = 0;
                           if(_loc4_ || param1)
                           {
                              addr40:
                              if(_loc3_ && param2)
                              {
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       this.§<T§ = param2;
                                       break loop6;
                                    }
                                    continue loop0;
                                    §§goto(addr40);
                                 }
                                 addr81:
                              }
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§2!§ = param1;
            §§goto(addr81);
         }
      }
      
      public function §5!I§(param1:§"!P§, param2:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         if(!(_loc5_ && param1))
         {
            §§push(this.§!'§);
            loop0:
            while(true)
            {
               §§push(§,g§.§"2§);
               loop1:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§!'§);
                        if(!_loc5_)
                        {
                           §§push(§§pop() + param2);
                        }
                        §§pop().§!'§ = §§pop();
                        addr301:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§&"?§);
                           if(_loc6_ || _loc3_)
                           {
                              §§push(§§pop() + this.§2!§);
                           }
                           §§pop().§&"?§ = §§pop();
                           addr277:
                           while(true)
                           {
                              §§push(param2);
                              loop5:
                              while(true)
                              {
                                 §§push(§,g§.§,!x§);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() / §§pop());
                                    while(true)
                                    {
                                       §§push(this.§<T§);
                                       addr205:
                                       if(!(_loc5_ && param1))
                                       {
                                          continue loop0;
                                       }
                                    }
                                 }
                                 addr234:
                                 while(!_loc5_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    while(true)
                                    {
                                       §§push(§§pop() * Math.sin(Math.PI / 4 + this.§&"?§ * 2 * Math.PI));
                                       addr252:
                                       addr176:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr253:
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             continue loop2;
                                          }
                                       }
                                       if(_loc5_ && param1)
                                       {
                                          continue;
                                       }
                                       if(!_loc6_)
                                       {
                                          continue loop5;
                                       }
                                       §§push(§§pop() * Math.sin(this.§&"?§ * 2.1 * Math.PI));
                                       if(!(_loc5_ && param1))
                                       {
                                          addr202:
                                          §§push(Number(§§pop()));
                                       }
                                       if(_loc6_)
                                       {
                                          §§goto(addr205);
                                       }
                                       else
                                       {
                                          §§goto(addr252);
                                       }
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr43);
            }
         }
         §§push(false);
         if(_loc6_ || param1)
         {
            return §§pop();
         }
         addr43:
         return §§pop();
      }
   }
}

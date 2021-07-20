package §,§
{
   import §,!K§.§[V§;
   
   public class §@!%§
   {
       
      
      public var §[R§:Number = 0;
      
      public var §,7§:Number = 0;
      
      public var §-J§:Number;
      
      public var §6v§:Number;
      
      public function §@!%§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§-J§ = §?9§.§;!d§;
            while(true)
            {
               this.§6v§ = §?9§.§9V§;
               loop1:
               while(_loc4_ || param2)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     this.§-J§ = param1;
                     loop3:
                     while(true)
                     {
                        this.§6v§ = param2;
                        while(true)
                        {
                           if(_loc4_ || param1)
                           {
                              continue loop2;
                           }
                           continue loop3;
                           addr37:
                           while(!(_loc3_ && param2))
                           {
                              this.§,7§ = 0;
                              if(_loc4_)
                              {
                                 if(!_loc3_)
                                 {
                                    break loop2;
                                 }
                                 continue loop1;
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
         §§goto(addr82);
      }
      
      public function §0!S§(param1:§[V§, param2:Number) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(_loc5_)
         {
            §§push(this.§[R§);
            loop0:
            while(true)
            {
               §§push(§?9§.§5=§);
               loop1:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     §§push(false);
                     if(_loc5_)
                     {
                        return §§pop();
                     }
                     break;
                  }
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§[R§);
                     if(_loc5_)
                     {
                        §§push(§§pop() + param2);
                     }
                     §§pop().§[R§ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§,7§);
                        if(_loc5_ || this)
                        {
                           §§push(§§pop() + this.§-J§);
                        }
                        §§pop().§,7§ = §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(param2);
                           while(true)
                           {
                              §§push(§?9§.§'Q§);
                              if(!(_loc6_ && param2))
                              {
                                 addr277:
                                 §§push(§§pop() / §§pop());
                                 if(_loc5_ || this)
                                 {
                                    addr249:
                                    §§push(this.§6v§);
                                    while(_loc5_ || param1)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() * Math.sin(Math.PI / 4 + this.§,7§ * 2 * Math.PI));
                                          if(_loc5_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                    }
                                    continue loop1;
                                    addr249:
                                 }
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    continue loop2;
                                 }
                                 addr277:
                              }
                              §§goto(addr249);
                              addr197:
                              if(_loc6_ && param1)
                              {
                                 continue;
                              }
                              §§push(§§pop() * Math.sin(this.§,7§ * 2.1 * Math.PI));
                              if(_loc5_)
                              {
                                 continue loop0;
                              }
                              addr224:
                              if(_loc5_)
                              {
                                 _loc4_ = §§pop();
                                 loop8:
                                 do
                                 {
                                    §§push(this);
                                    §§push(this.§6v§);
                                    if(!(_loc6_ && this))
                                    {
                                       §§push(param2);
                                       if(!_loc6_)
                                       {
                                          §§push(§?9§.§9V§);
                                          if(_loc5_)
                                          {
                                             addr137:
                                             §§push(§§pop() * §§pop());
                                             if(_loc5_)
                                             {
                                                §§push(§?9§.§5=§);
                                             }
                                             §§pop().§6v§ = §§pop() - §§pop();
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   continue loop3;
                                                }
                                                continue loop2;
                                                addr95:
                                                §§pop().§-J§ = §§pop();
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   continue loop8;
                                                }
                                             }
                                             continue loop3;
                                          }
                                          §§push(§§pop() / §§pop());
                                       }
                                    }
                                    §§goto(addr137);
                                 }
                                 while(_loc6_ && _loc3_);
                                 
                                 if(!_loc6_)
                                 {
                                    param1.§9c§(_loc3_,_loc4_);
                                    do
                                    {
                                       param1.§%!S§();
                                    }
                                    while(!(_loc5_ || this));
                                    
                                    §§push(true);
                                    break loop1;
                                    addr64:
                                 }
                                 continue loop4;
                              }
                              §§goto(addr277);
                           }
                        }
                     }
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr64);
      }
   }
}

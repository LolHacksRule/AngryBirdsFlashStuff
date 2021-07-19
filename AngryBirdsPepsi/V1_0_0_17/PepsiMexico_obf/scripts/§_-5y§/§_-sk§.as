package §_-5y§
{
   public class §_-sk§ implements §_-Bf§
   {
       
      
      private var §_-yF§:Number;
      
      private var §_-s-§:Number;
      
      private var §_-iP§:Number;
      
      public function §_-sk§(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super();
            if(_loc5_ || param3)
            {
               this.§_-iP§ = param1;
               if(_loc5_ || param2)
               {
                  addr47:
                  this.§_-yF§ = param2;
                  if(!(_loc4_ && param2))
                  {
                     addr64:
                     this.§_-s-§ = param3;
                  }
               }
               return;
            }
            §§goto(addr64);
         }
         §§goto(addr47);
      }
      
      public function §_-up§(param1:Number, param2:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && _loc3_))
         {
            §§push(param2);
            if(!(_loc5_ && param2))
            {
               if(§§pop() < 0)
               {
                  addr32:
                  §§push(this.§_-iP§);
                  if(_loc6_ || this)
                  {
                     addr56:
                     §§push(Number(Number(-§§pop())));
                  }
                  else
                  {
                     addr53:
                     §§push(Number(§§pop()));
                     if(!_loc5_)
                     {
                        §§goto(addr56);
                     }
                  }
               }
               else
               {
                  §§push(this.§_-iP§);
                  if(!(_loc5_ && param1))
                  {
                     §§goto(addr53);
                  }
               }
               var _loc3_:* = §§pop();
               if(_loc6_ || _loc3_)
               {
                  if(param2 < 0)
                  {
                     addr69:
                     §§push(this.§_-yF§);
                     if(_loc6_ || param2)
                     {
                        §§push(Number(-§§pop()));
                        if(_loc5_)
                        {
                        }
                        addr100:
                        §§push(Number(§§pop()));
                     }
                  }
                  else
                  {
                     §§push(Number(this.§_-yF§));
                     if(!(_loc5_ && param1))
                     {
                        §§goto(addr100);
                     }
                  }
                  var _loc4_:* = §§pop();
                  §§push(_loc3_);
                  if(!_loc5_)
                  {
                     §§push(-§§pop());
                     if(_loc6_ || param2)
                     {
                        §§push((§§pop() + Math.sqrt(_loc3_ * _loc3_ - 4 * (_loc4_ / 2) * -param2)) / (2 * (_loc4_ / 2)));
                        if(!(_loc5_ && param2))
                        {
                           §§push(§§pop() * (1 / this.§_-s-§));
                        }
                     }
                  }
                  return §§pop();
               }
               §§goto(addr69);
            }
            §§goto(addr56);
         }
         §§goto(addr32);
      }
      
      public function §_-3u§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && this))
         {
            §§push(param3);
            if(!_loc7_)
            {
               if(§§pop() < 0)
               {
                  addr26:
                  §§push(-1);
                  if(_loc6_ || this)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc7_ && param3))
                     {
                        addr47:
                        §§push(Number(§§pop()));
                     }
                     §§goto(addr47);
                  }
                  else
                  {
                     addr44:
                     §§push(Number(§§pop()));
                     if(!_loc7_)
                     {
                        §§goto(addr47);
                     }
                  }
                  var _loc4_:* = §§pop();
                  §§push(param1);
                  if(!_loc7_)
                  {
                     §§push(§§pop() / (1 / this.§_-s-§));
                     if(_loc6_)
                     {
                        addr66:
                        §§push(Number(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     §§push(param2);
                     if(_loc6_)
                     {
                        §§push(_loc4_);
                        §§push(this.§_-iP§);
                        if(_loc6_)
                        {
                           §§push(§§pop() * §§pop());
                           §§push(_loc5_);
                           if(_loc6_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc6_ || this)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc7_ && param2))
                                 {
                                    addr97:
                                    §§push(_loc4_);
                                    §§push(this.§_-yF§);
                                    if(_loc6_)
                                    {
                                       addr101:
                                       §§push(§§pop() * §§pop());
                                       §§push(_loc5_);
                                       if(_loc6_ || param2)
                                       {
                                          addr110:
                                          §§push(§§pop() * §§pop());
                                          if(_loc6_)
                                          {
                                             §§goto(addr114);
                                          }
                                          §§goto(addr129);
                                       }
                                    }
                                    §§goto(addr114);
                                 }
                                 addr114:
                                 §§push(§§pop() * _loc5_);
                                 if(!(_loc7_ && param3))
                                 {
                                    addr129:
                                    §§push(§§pop() / 2);
                                 }
                                 return §§pop() + §§pop();
                              }
                              §§goto(addr97);
                           }
                           §§goto(addr101);
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr66);
               }
               else
               {
                  §§push(1);
               }
               §§goto(addr44);
            }
            §§goto(addr47);
         }
         §§goto(addr26);
      }
   }
}

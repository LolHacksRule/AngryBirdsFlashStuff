package §1"H§
{
   import §"!&§.§"v§;
   import §'4§.§^g§;
   
   public class §>g§
   {
       
      
      protected var §""4§:Number;
      
      protected var §%W§:Number;
      
      private var §`$§:Number;
      
      private var §5>§:Number;
      
      private var §'6§:Number;
      
      private var §%=§:Number;
      
      protected var §"X§:Number;
      
      private var §+!R§:Number;
      
      protected var §=T§:Number;
      
      private var §`"4§:Number;
      
      private var §0! §:Number;
      
      private var §3!4§:Boolean = true;
      
      private var §9S§:Number;
      
      private var §@n§:Number;
      
      public function §>g§(param1:Number, param2:Number, param3:Number, param4:§"v§, param5:Number = 1)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§""4§ = param1;
            while(true)
            {
               this.§%W§ = param2;
               while(!(_loc7_ && param3))
               {
                  if(_loc8_)
                  {
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§!9§(param4.minAngleEmitter,param4.maxAngleEmitter));
                        if(_loc8_)
                        {
                           §§push(§§pop() + param3);
                        }
                        §§pop().§"X§ = §§pop();
                        do
                        {
                           §§push(this);
                           §§push(this.§!9§(param4.minAngleVel,param4.maxAngleVel));
                           if(_loc8_ || this)
                           {
                              §§push(§§pop() / 1000);
                           }
                           §§pop().§+!R§ = §§pop();
                        }
                        while(!(_loc8_ || param1));
                        
                        if(!_loc8_)
                        {
                           break;
                        }
                        if(false)
                        {
                           continue;
                        }
                        §§push(this.§!9§(param4.minVel,param4.maxVel));
                        if(_loc8_ || param1)
                        {
                           §§push(§§pop() / 1000);
                           if(!(_loc7_ && param3))
                           {
                              §§push(§§pop() * §^g§.§5!-§);
                              if(!_loc7_)
                              {
                                 addr112:
                                 §§push(Number(§§pop()));
                              }
                              var _loc6_:* = §§pop();
                              if(_loc8_ || param3)
                              {
                                 this.§`$§ = Math.cos(this.§"X§) * _loc6_;
                                 this.§5>§ = Math.sin(this.§"X§) * _loc6_;
                                 §§push(this);
                                 §§push(this.§!9§(param4.minScaleBegin,param4.maxScaleBegin));
                                 if(_loc8_ || param3)
                                 {
                                    §§push(§§pop() * param5);
                                 }
                                 §§pop().§`"4§ = §§pop();
                                 addr312:
                                 if(_loc8_ || this)
                                 {
                                    §§push(this);
                                    §§push(this.§!9§(param4.minScaleEnd,param4.maxScaleEnd));
                                    if(_loc8_)
                                    {
                                       §§push(§§pop() * param5);
                                    }
                                    §§pop().§0! § = §§pop();
                                    this.§=T§ = this.§`"4§;
                                    addr234:
                                    if(_loc8_)
                                    {
                                       if(_loc8_ || param2)
                                       {
                                          §§push(this);
                                          §§push(this.§!9§(param4.gravityX,param4.gravityX));
                                          if(_loc8_ || param2)
                                          {
                                             §§push(§§pop() / 1000000);
                                             if(!(_loc7_ && this))
                                             {
                                                §§push(§§pop() * §^g§.§5!-§);
                                             }
                                          }
                                          §§pop().§'6§ = §§pop();
                                          §§push(this);
                                          §§push(this.§!9§(param4.gravityY,param4.gravityY));
                                          if(_loc8_)
                                          {
                                             §§push(§§pop() / 1000000);
                                             if(_loc8_)
                                             {
                                                §§push(§§pop() * §^g§.§5!-§);
                                             }
                                          }
                                          §§pop().§%=§ = §§pop();
                                          addr183:
                                          if(!_loc7_)
                                          {
                                             if(_loc8_ || param2)
                                             {
                                                if(!(_loc7_ && this))
                                                {
                                                   §§push(this);
                                                   §§push(param4.lifeTime);
                                                   if(!_loc7_)
                                                   {
                                                      §§push(§§pop() * 1000);
                                                   }
                                                   §§pop().§@n§ = §§pop();
                                                   addr157:
                                                   if(!(_loc7_ && this))
                                                   {
                                                      this.§9S§ = 0;
                                                      if(_loc7_ && param1)
                                                      {
                                                         §§goto(addr157);
                                                      }
                                                      return;
                                                      addr164:
                                                   }
                                                   §§goto(addr183);
                                                }
                                                §§goto(addr312);
                                             }
                                             §§goto(addr234);
                                          }
                                          addr228:
                                          §§goto(addr228);
                                       }
                                       §§goto(addr312);
                                    }
                                    addr257:
                                    §§goto(addr257);
                                 }
                                 addr293:
                                 §§goto(addr293);
                              }
                              §§goto(addr164);
                           }
                        }
                        §§goto(addr112);
                     }
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function get isAlive() : Boolean
      {
         return this.§3!4§;
      }
      
      public function get §=!c§() : Number
      {
         return this.§9S§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this);
            §§push(this.§`$§);
            if(!_loc2_)
            {
               §§push(this.§'6§);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() * param1);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().§`$§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§5>§);
               if(!_loc2_)
               {
                  §§push(this.§%=§);
                  if(_loc3_ || param1)
                  {
                     §§push(§§pop() * param1);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().§5>§ = §§pop();
               loop1:
               while(true)
               {
                  §§push(this);
                  §§push(this.§""4§);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(this.§`$§);
                     if(_loc3_)
                     {
                        §§push(§§pop() * param1);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().§""4§ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§%W§);
                     if(!_loc2_)
                     {
                        §§push(this.§5>§);
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(§§pop() * param1);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§pop().§%W§ = §§pop();
                     continue loop0;
                     loop11:
                     while(true)
                     {
                        if(_loc2_ && _loc2_)
                        {
                           continue loop2;
                        }
                        if(!_loc3_)
                        {
                           break;
                        }
                        addr120:
                        loop8:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§"X§);
                           if(!(_loc2_ && _loc3_))
                           {
                              §§push(this.§+!R§);
                              if(_loc3_)
                              {
                                 §§push(§§pop() * param1);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§pop().§"X§ = §§pop();
                           loop9:
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§9S§);
                              if(!_loc2_)
                              {
                                 §§push(§§pop() + param1);
                              }
                              §§pop().§9S§ = §§pop();
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop11;
                                 }
                                 addr83:
                                 §§push(this.§9S§);
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§push(this.§@n§);
                                    if(!(_loc2_ && param1))
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          if(!(_loc2_ && this))
                                          {
                                             if(!_loc2_)
                                             {
                                                if(_loc3_)
                                                {
                                                   this.§3!4§ = false;
                                                   addr65:
                                                   if(!_loc2_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            addr71:
                                                            break;
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop9;
                                                   }
                                                   continue;
                                                }
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(this.§`"4§);
                                                   if(!_loc2_)
                                                   {
                                                      §§push(this.§0! §);
                                                      if(_loc3_)
                                                      {
                                                         §§push(this.§`"4§);
                                                         if(!(_loc2_ && param1))
                                                         {
                                                            addr172:
                                                            §§push(§§pop() - §§pop());
                                                            if(!(_loc2_ && this))
                                                            {
                                                               addr163:
                                                               §§push(this.§9S§);
                                                               if(!_loc2_)
                                                               {
                                                                  addr167:
                                                                  §§push(§§pop() / this.§@n§);
                                                               }
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                            §§pop().§=T§ = §§pop() + §§pop();
                                                            while(true)
                                                            {
                                                               continue loop8;
                                                            }
                                                            addr173:
                                                         }
                                                         §§goto(addr167);
                                                      }
                                                      §§goto(addr163);
                                                   }
                                                   §§goto(addr172);
                                                }
                                                addr137:
                                             }
                                             §§goto(addr173);
                                          }
                                          §§goto(addr65);
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          this.§=T§ = this.§0! §;
                                          continue loop11;
                                       }
                                    }
                                    addr126:
                                    §§goto(addr137);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§goto(addr83);
                                    }
                                    addr124:
                                 }
                                 §§goto(addr126);
                              }
                              return this.§3!4§;
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      protected function §!9§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            if(isNaN(param1))
            {
               if(!(_loc4_ && param1))
               {
                  addr124:
                  §§push(0);
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     addr126:
                     while(true)
                     {
                        param1 = §§pop();
                     }
                  }
                  addr125:
               }
               while(true)
               {
               }
               addr127:
            }
            loop1:
            while(true)
            {
               if(isNaN(param2))
               {
                  if(!(_loc4_ && param2))
                  {
                     §§push(0);
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr94:
                        addr68:
                        while(true)
                        {
                           param2 = §§pop();
                        }
                        if(_loc4_ && param1)
                        {
                           continue;
                        }
                        if(_loc3_)
                        {
                           break loop1;
                        }
                        §§goto(addr125);
                     }
                  }
                  while(!(_loc4_ && this))
                  {
                     §§goto(addr94);
                  }
                  continue;
               }
               while(true)
               {
                  §§push(param1);
                  if(!_loc4_)
                  {
                     if(!(_loc4_ && this))
                     {
                        addr66:
                        §§push(param2);
                        if(_loc3_ || param2)
                        {
                           §§push(§§pop() - param1);
                           if(!(_loc4_ && _loc3_))
                           {
                              §§push(§§pop() * Math.random());
                           }
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc4_)
                        {
                           §§goto(addr68);
                        }
                        §§goto(addr94);
                     }
                     break;
                  }
                  §§goto(addr66);
               }
               §§goto(addr126);
            }
            return §§pop();
         }
         §§goto(addr124);
      }
   }
}

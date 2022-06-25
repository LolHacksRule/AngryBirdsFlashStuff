package §`M§
{
   import §1n§.§ C§;
   import §=R§.§&W§;
   import flash.display.MovieClip;
   
   public class §"W§ extends §9!#§
   {
       
      
      public var §7O§:int;
      
      public var §<!Y§:int;
      
      public var §8f§:int;
      
      public var §2!q§:int;
      
      public var §0d§:Number;
      
      public var §;V§:Number;
      
      public var §,&§:Number;
      
      public var §[§:Number;
      
      public var §>! §:Number;
      
      public function §"W§(param1:XML, param2:§9!#§, param3:§ C§, param4:MovieClip = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            super(param1,param2,param3,param4);
         }
         do
         {
            §-z§ = true;
         }
         while(_loc6_ && param3);
         
      }
      
      public function §'"§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            this.§8f§ = param6;
            while(true)
            {
               this.§2!q§ = param1 * this.§8f§;
               addr207:
               while(true)
               {
                  this.§>! § = param7;
               }
            }
            addr211:
         }
         loop2:
         while(true)
         {
            this.§,&§ = param2;
            while(_loc8_)
            {
               if(_loc8_)
               {
                  this.§[§ = param3;
                  while(true)
                  {
                     this.§0d§ = param4;
                     loop5:
                     while(true)
                     {
                        this.§;V§ = param5;
                        while(true)
                        {
                           §§push(false);
                           if(!(_loc9_ && param2))
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    loop15:
                                    while(true)
                                    {
                                       §§push(param1 == param7);
                                       if(_loc9_)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             continue loop2;
                                          }
                                          this.§<!Y§ = 1;
                                          loop8:
                                          while(true)
                                          {
                                             if(!(_loc9_ && param1))
                                             {
                                                if(§0!i§.length > this.§2!q§)
                                                {
                                                   continue;
                                                }
                                             }
                                             else
                                             {
                                                addr147:
                                                while(true)
                                                {
                                                }
                                                addr147:
                                             }
                                             addr23:
                                             while(true)
                                             {
                                                this.§=!_§(0);
                                                if(!_loc9_)
                                                {
                                                   addr29:
                                                   if(!(_loc9_ && this))
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop5;
                                                §§goto(addr147);
                                             }
                                             if(!(_loc9_ && param3))
                                             {
                                                return;
                                             }
                                             continue loop15;
                                          }
                                          continue loop15;
                                       }
                                    }
                                 }
                                 addr159:
                              }
                              §§goto(addr126);
                           }
                           §§goto(addr159);
                           if(_loc8_ || this)
                           {
                              this.§<!Y§ += Math.ceil((§0!i§.length - this.§2!q§) / (this.§8f§ * this.§>! §));
                              continue loop5;
                           }
                        }
                     }
                  }
               }
               else
               {
                  §§goto(addr211);
               }
            }
            §§goto(addr207);
         }
      }
      
      public function §=!_§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr89:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc6_ || _loc3_)
                     {
                        §§push(0);
                        while(true)
                        {
                           param1 = §§pop();
                        }
                        addr98:
                     }
                     while(true)
                     {
                     }
                     addr99:
                  }
                  loop4:
                  while(true)
                  {
                     §§push(param1);
                     if(_loc6_ || param1)
                     {
                        continue loop0;
                     }
                     addr83:
                     if(!_loc5_)
                     {
                        param1 = §§pop();
                        addr86:
                        loop6:
                        while(true)
                        {
                           addr25:
                           while(true)
                           {
                              this.§7O§ = param1;
                              if(!_loc5_)
                              {
                                 break;
                              }
                              continue loop6;
                           }
                           if(_loc6_ || this)
                           {
                              if(true)
                              {
                                 break loop4;
                              }
                              continue loop4;
                           }
                        }
                        addr86:
                     }
                     else
                     {
                        §§goto(addr98);
                     }
                     §§goto(addr99);
                  }
                  §§push(this.§7O§);
                  if(!_loc5_)
                  {
                     addr114:
                     §§push(§§pop() * this.§>! §);
                     if(!(_loc5_ && this))
                     {
                        §§push(§§pop() * this.§8f§);
                     }
                     §§push(int(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  §§push(_loc2_);
                  if(_loc6_ || param1)
                  {
                     §§push(int(§§pop() + this.§2!q§));
                  }
                  var _loc3_:* = §§pop();
                  var _loc4_:int = 0;
                  addr170:
                  if(_loc4_ >= §0!i§.length)
                  {
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(§§findproperty(x));
                        §§push(this.§,&§);
                        if(_loc6_)
                        {
                           §§push(§§pop() - this.§7O§ * this.§0d§);
                        }
                        §§pop().x = §§pop();
                     }
                     addr194:
                     if(!_loc5_)
                     {
                        if(!(_loc5_ && param1))
                        {
                           §§push(§§findproperty(y));
                           §§push(this.§[§);
                           if(!_loc5_)
                           {
                              §§push(§§pop() - this.§7O§ * this.§;V§);
                           }
                           §§pop().y = §§pop();
                           if(!(_loc6_ || _loc2_))
                           {
                              §§goto(addr194);
                           }
                           return;
                        }
                        _loc4_++;
                        addr234:
                     }
                     §§goto(addr170);
                  }
                  (§0!i§[_loc4_] as §&W§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
                  §§goto(addr234);
               }
            }
         }
         §§goto(addr86);
      }
   }
}

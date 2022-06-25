package §_-6C§
{
   import §_-MN§.§_-rD§;
   import §_-Yl§.§_-5q§;
   import flash.display.MovieClip;
   
   public class §_-Ny§ extends §_-gt§
   {
       
      
      public var §_-TW§:int;
      
      public var §_-ep§:int;
      
      public var §_-06R§:int;
      
      public var §_-Sw§:int;
      
      public var §_-dk§:Number;
      
      public var §_-083§:Number;
      
      public var §_-HS§:Number;
      
      public var §_-LV§:Number;
      
      public var §_-0DO§:Number;
      
      public function §_-Ny§(param1:XML, param2:§_-gt§, param3:§_-5q§, param4:MovieClip = null)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            super(param1,param2,param3,param4);
         }
         do
         {
            §_-lQ§ = true;
         }
         while(_loc5_ && this);
         
      }
      
      public function §_-Ha§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && this))
         {
            this.§_-06R§ = param6;
            while(true)
            {
               this.§_-Sw§ = param1 * this.§_-06R§;
               loop1:
               while(true)
               {
                  this.§_-0DO§ = param7;
                  loop2:
                  while(true)
                  {
                     this.§_-HS§ = param2;
                     loop3:
                     while(true)
                     {
                        this.§_-LV§ = param3;
                        loop4:
                        while(true)
                        {
                           this.§_-dk§ = param4;
                           loop5:
                           for(; _loc8_; if(_loc8_ || param3)
                           {
                              continue loop1;
                           })
                           {
                              this.§_-083§ = param5;
                              loop6:
                              while(true)
                              {
                                 §§push(false);
                                 loop7:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc9_ && this))
                                             {
                                                continue loop4;
                                             }
                                             continue loop2;
                                          }
                                          addr187:
                                          this.§_-ep§ = 1;
                                          loop14:
                                          while(!(_loc9_ && param2))
                                          {
                                             while(true)
                                             {
                                                if(§_-057§.length <= this.§_-Sw§)
                                                {
                                                   do
                                                   {
                                                      this.§_-1u§(0);
                                                      if(_loc9_)
                                                      {
                                                         addr111:
                                                         continue;
                                                      }
                                                   }
                                                   while(!(_loc8_ || this));
                                                   
                                                   addr41:
                                                   if(!(_loc9_ && param3))
                                                   {
                                                      continue loop6;
                                                   }
                                                   continue loop2;
                                                   addr28:
                                                }
                                                while(_loc9_ && this)
                                                {
                                                   continue loop14;
                                                }
                                                continue loop5;
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(param1 == param7);
                                             if(_loc9_ && this)
                                             {
                                                break;
                                             }
                                             continue loop7;
                                          }
                                       }
                                       continue loop4;
                                       addr144:
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       §§goto(addr187);
                                    }
                                 }
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
                  if(_loc9_ && param3)
                  {
                     continue;
                  }
                  this.§_-ep§ += Math.ceil((§_-057§.length - this.§_-Sw§) / (this.§_-06R§ * this.§_-0DO§));
                  §§goto(addr111);
               }
            }
         }
         §§goto(addr125);
      }
      
      public function §_-1u§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            §§push(param1);
            if(_loc5_ || param1)
            {
               §§push(0);
               loop0:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§push(0);
                        if(_loc5_ || _loc2_)
                        {
                           while(true)
                           {
                              param1 = §§pop();
                              loop6:
                              while(true)
                              {
                                 addr36:
                                 loop2:
                                 while(true)
                                 {
                                    §§push(param1);
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§push(this.§_-ep§);
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       if(§§pop() >= §§pop())
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             if(!(_loc5_ || this))
                                             {
                                                continue loop6;
                                             }
                                             §§push(this.§_-ep§);
                                             if(!(_loc6_ && this))
                                             {
                                                §§push(§§pop() - 1);
                                                if(_loc5_)
                                                {
                                                   §§push(int(§§pop()));
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      addr77:
                                                      param1 = §§pop();
                                                      loop7:
                                                      while(true)
                                                      {
                                                         addr24:
                                                         while(true)
                                                         {
                                                            this.§_-TW§ = param1;
                                                            if(!_loc6_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        §§push(this.§_-TW§);
                                                                        if(!_loc5_)
                                                                        {
                                                                        }
                                                                     }
                                                                     continue loop2;
                                                                     break loop1;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop7;
                                                         }
                                                      }
                                                      addr78:
                                                   }
                                                   §§push(§§pop() * this.§_-0DO§);
                                                   if(!_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   addr121:
                                                   §§push(int(§§pop()));
                                                   break loop1;
                                                }
                                                break;
                                             }
                                             §§goto(addr77);
                                          }
                                          §§goto(addr121);
                                          §§push(§§pop() * this.§_-06R§);
                                       }
                                       §§goto(addr24);
                                    }
                                    break loop1;
                                 }
                                 continue loop0;
                              }
                           }
                           addr107:
                        }
                        break;
                     }
                     var _loc2_:* = §§pop();
                     §§push(_loc2_);
                     if(_loc5_ || _loc2_)
                     {
                        §§push(int(§§pop() + this.§_-Sw§));
                     }
                     var _loc3_:* = §§pop();
                     var _loc4_:int = 0;
                     addr161:
                     if(_loc4_ >= §_-057§.length)
                     {
                        addr166:
                        if(_loc5_ || this)
                        {
                           §§push(§§findproperty(x));
                           §§push(this.§_-HS§);
                           if(_loc5_ || param1)
                           {
                              §§push(§§pop() - this.§_-TW§ * this.§_-dk§);
                           }
                           §§pop().x = §§pop();
                           addr200:
                           if(_loc5_)
                           {
                              §§push(§§findproperty(y));
                              §§push(this.§_-LV§);
                              if(_loc5_)
                              {
                                 §§push(§§pop() - this.§_-TW§ * this.§_-083§);
                              }
                              §§pop().y = §§pop();
                              if(!_loc6_)
                              {
                                 if(!_loc5_)
                                 {
                                    §§goto(addr166);
                                 }
                                 return;
                              }
                              §§goto(addr200);
                           }
                           addr205:
                           §§goto(addr161);
                        }
                        _loc4_++;
                        §§goto(addr205);
                        addr223:
                     }
                     (§_-057§[_loc4_] as §_-rD§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
                     §§goto(addr223);
                  }
                  §§goto(addr36);
               }
            }
            §§goto(addr107);
         }
         §§goto(addr78);
      }
   }
}

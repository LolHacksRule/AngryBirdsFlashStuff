package §2!o§
{
   public class §?r§ extends §-"%§
   {
       
      
      protected var §?!w§:Number = -1;
      
      public function §?r§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      override protected function updatePositions() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§2"3§ = null;
         var _loc3_:* = NaN;
         var _loc4_:§2"3§ = null;
         var _loc1_:* = int(§5C§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc6_)
            {
               if(§§pop() < 0)
               {
                  if(_loc6_)
                  {
                     §§push(0);
                     if(!(_loc5_ && _loc3_))
                     {
                        break;
                     }
                     addr340:
                     if(§§pop() < §+]§.length)
                     {
                        §§push(this.getPositionFromIndex(_loc1_));
                        loop13:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop14:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              if(!(_loc5_ && _loc1_))
                              {
                                 while(true)
                                 {
                                    loop16:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       loop17:
                                       while(true)
                                       {
                                          §§push(this.§#!G§);
                                          if(_loc6_)
                                          {
                                             §§push(-§§pop());
                                          }
                                          §§push(§§pop() > §§pop());
                                          if(_loc6_ || _loc3_)
                                          {
                                             §§push(§§pop());
                                             loop18:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc6_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc5_ && _loc2_))
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  §§pop();
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        addr221:
                                                                        if(true)
                                                                        {
                                                                           §§push(!§2X§(_loc1_));
                                                                        }
                                                                        continue loop16;
                                                                        break;
                                                                     }
                                                                  }
                                                                  break loop14;
                                                               }
                                                               addr240:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc6_ || _loc1_)
                                                                  {
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  continue loop17;
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         break;
                                                      }
                                                      continue loop18;
                                                   }
                                                   addr261:
                                                   if(§§pop())
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         _loc4_ = §5!v§();
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            §?!T§.addChild(_loc4_);
                                                         }
                                                         _loc4_.data = §+]§[_loc1_];
                                                         _loc4_.index = _loc1_;
                                                         addr291:
                                                         _loc4_.y = _loc3_;
                                                         addr331:
                                                         addr335:
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            if(_loc6_ || _loc1_)
                                                            {
                                                               §5C§.push(_loc4_);
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr291);
                                                                     }
                                                                     addr336:
                                                                     _loc1_++;
                                                                     if(!_loc5_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr340);
                                                                        }
                                                                        addr339:
                                                                     }
                                                                     break loop14;
                                                                  }
                                                                  §§goto(addr331);
                                                               }
                                                               §§goto(addr291);
                                                            }
                                                            §§goto(addr335);
                                                         }
                                                         addr324:
                                                         §§goto(addr324);
                                                      }
                                                      break loop14;
                                                   }
                                                   §§goto(addr336);
                                                   addr197:
                                                }
                                             }
                                          }
                                          §§goto(addr240);
                                       }
                                    }
                                 }
                                 addr256:
                              }
                              break;
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr221);
               }
               else
               {
                  _loc2_ = §5C§[_loc1_];
                  if(!(_loc5_ && _loc1_))
                  {
                     _loc2_.y = this.getPositionFromIndex(_loc2_.index);
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_.y >= §,9§);
                        if(!(_loc5_ && this))
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 loop10:
                                 while(true)
                                 {
                                    §§push(_loc2_.y <= -this.§#!G§);
                                    if(_loc5_ && _loc2_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             §?!T§.removeChild(_loc2_);
                                             loop4:
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   §5C§.splice(§5C§.indexOf(_loc2_),1);
                                                   while(!_loc5_)
                                                   {
                                                      while(true)
                                                      {
                                                         §&!N§(_loc2_);
                                                         addr71:
                                                         while(!(_loc5_ && this))
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                         continue loop4;
                                                      }
                                                      if(_loc5_ && _loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      if(true)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§goto(addr67);
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop10;
                                             }
                                             continue loop10;
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          if(_loc6_ || this)
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          _loc1_ = §§pop();
                                          if(_loc6_)
                                          {
                                             §§goto(addr58);
                                          }
                                          §§goto(addr71);
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              addr127:
                           }
                           §§goto(addr105);
                        }
                        §§goto(addr127);
                     }
                  }
                  §§goto(addr80);
               }
            }
            break;
         }
         _loc1_ = §§pop();
         if(_loc6_)
         {
            §§goto(addr339);
         }
         §§goto(addr256);
      }
      
      protected function get §#!G§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§2"3§ = null;
         if(_loc2_)
         {
            §§push(this.§?!w§);
            if(_loc2_)
            {
               if(§§pop() == -1)
               {
                  addr47:
                  _loc1_ = §5!v§();
                  if(!(_loc3_ && _loc1_))
                  {
                     this.§?!w§ = _loc1_.height;
                     if(_loc3_ && _loc1_)
                     {
                     }
                     addr74:
                     return this.§?!w§;
                     addr72:
                  }
                  §&!N§(_loc1_);
               }
               §§goto(addr72);
            }
            §§goto(addr74);
         }
         §§goto(addr47);
      }
      
      override protected function calculateMaxItemsVisible() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §<M§ = Math.floor(§,9§ / (this.§#!G§ + §="-§));
         }
      }
      
      override protected function calculateMargin() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §1^§ = Math.min((§,9§ - §7"A§ * this.§#!G§) / §7"A§,§const§);
         }
      }
      
      public function §""5§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§2"3§ = null;
         if(_loc5_)
         {
            §,9§ = §?!T§.mask.height = param1;
            if(!_loc4_)
            {
               this.calculateMaxItemsVisible();
            }
         }
         loop0:
         while(true)
         {
            addr58:
            addr87:
            while(true)
            {
               §7"A§ = Math.min(§<M§,§+]§.length);
               continue loop0;
            }
            while(§5C§.length > §<M§)
            {
               _loc2_ = §5C§.pop();
               if(_loc5_ || param1)
               {
                  §?!T§.removeChild(_loc2_);
                  if(!_loc4_)
                  {
                     §&!N§(_loc2_);
                  }
               }
            }
            if(_loc5_ || param1)
            {
               §@+§(0);
               if(_loc5_)
               {
                  §&"P§ = §#w§;
                  do
                  {
                     this.updatePositions();
                  }
                  while(_loc4_ && _loc2_);
                  
                  addr134:
               }
               return;
            }
            §§goto(addr134);
         }
      }
      
      override public function setWidth(param1:Number) : void
      {
         throw new Error("This function is for HScroller. Use setHeight() instead.");
      }
      
      override protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(§1^§ / 2 + (param1 + §&"P§) * (this.§#!G§ + §1^§));
      }
   }
}

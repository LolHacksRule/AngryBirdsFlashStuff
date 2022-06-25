package §2!#§
{
   import §-!0§.§'!3§;
   import §?^§.DisplayObject;
   import §?^§.Sprite;
   
   public class §!k§ extends §,1§
   {
       
      
      private var §'!$§:String = "";
      
      private var §#R§:Number = 1.0;
      
      private var §?!"§:Number = 1.0;
      
      public function §!k§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param1))
         {
            super(param1,param2);
            if(!_loc7_)
            {
               this.§'!$§ = param3;
               if(_loc6_ || param3)
               {
                  addr59:
                  this.§#R§ = param4;
                  if(_loc6_ || param3)
                  {
                  }
                  §§goto(addr72);
               }
               this.§?!"§ = param5;
               addr72:
               return;
            }
         }
         §§goto(addr59);
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'!3§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:DisplayObject = null;
         if(!_loc6_)
         {
            §§push(param1);
            if(_loc5_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(!(_loc6_ && param1))
                  {
                     addr36:
                     §§push(Number(this.time + duration));
                     if(_loc5_)
                     {
                        param1 = §§pop();
                        if(!_loc6_)
                        {
                           addr46:
                           §§push(param1);
                           if(_loc5_)
                           {
                              addr49:
                              if(§§pop() > this.time)
                              {
                                 if(_loc5_)
                                 {
                                    addr54:
                                    if(_loc4_ = param2.getChildByName(this.§'!$§))
                                    {
                                       if(_loc5_)
                                       {
                                          §§push(_loc4_);
                                          §§push(this.§#R§);
                                          if(_loc5_)
                                          {
                                             §§push(this.§?!"§);
                                             if(!(_loc6_ && param1))
                                             {
                                                §§push(this.§#R§);
                                                if(_loc5_ || param3)
                                                {
                                                   addr104:
                                                   §§push(§§pop() - §§pop());
                                                   if(!_loc6_)
                                                   {
                                                      §§push(this.§,G§(param1));
                                                   }
                                                   §§pop().scaleX = §§pop() + §§pop();
                                                   if(_loc5_)
                                                   {
                                                      §§push(_loc4_);
                                                      §§push(this.§#R§);
                                                      if(_loc5_)
                                                      {
                                                         §§push(this.§?!"§);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(this.§#R§);
                                                            if(_loc5_ || param2)
                                                            {
                                                               addr149:
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc5_ || param2)
                                                               {
                                                                  addr147:
                                                                  §§push(§§pop() * this.§,G§(param1));
                                                               }
                                                               §§pop().scaleY = §§pop() + §§pop();
                                                               if(param1 >= this.time + duration)
                                                               {
                                                                  if(_loc5_ || param2)
                                                                  {
                                                                     §§push(false);
                                                                     if(_loc5_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr167:
                                                                     §§push(true);
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr167);
                                                            }
                                                         }
                                                         §§goto(addr147);
                                                      }
                                                   }
                                                   §§goto(addr149);
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                          }
                                          §§goto(addr104);
                                       }
                                    }
                                 }
                                 §§goto(addr167);
                              }
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr54);
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr167);
               }
               §§goto(addr46);
            }
            §§goto(addr49);
         }
         §§goto(addr36);
      }
      
      private function §,G§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            if(duration <= 0)
            {
               if(_loc4_ || _loc3_)
               {
                  return 1;
               }
            }
         }
         §§push(param1);
         if(!_loc3_)
         {
            §§push(§§pop() - this.time);
            if(!(_loc3_ && param1))
            {
               §§push(§§pop() / duration);
               if(!(_loc3_ && this))
               {
                  addr58:
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(_loc4_)
               {
                  §§push(_loc2_);
                  if(!(_loc3_ && param1))
                  {
                     §§push(2);
                     if(_loc4_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc4_)
                        {
                           §§push(Number(§§pop()));
                        }
                        _loc2_ = §§pop();
                        if(!_loc3_)
                        {
                           addr90:
                           §§push(_loc2_);
                           if(!(_loc3_ && param1))
                           {
                              §§goto(addr98);
                           }
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr106);
                  }
                  addr98:
                  §§push(1);
                  if(_loc4_ || param1)
                  {
                     addr106:
                     if(§§pop() < §§pop())
                     {
                        if(_loc4_)
                        {
                           return Math.pow(_loc2_,3) / 2;
                        }
                        addr128:
                        §§push(_loc2_);
                        §§push(2);
                     }
                     §§goto(addr128);
                  }
                  §§push(§§pop() - §§pop());
                  if(!_loc3_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc3_ && param1))
                     {
                        _loc2_ = §§pop();
                        §§push((Math.pow(_loc2_,3) + 2) / 2);
                     }
                  }
                  return §§pop();
               }
               §§goto(addr90);
            }
         }
         §§goto(addr58);
      }
      
      override public function clone() : §,1§
      {
         return new §!k§(time,duration,this.§'!$§,this.§#R§,this.§?!"§);
      }
   }
}

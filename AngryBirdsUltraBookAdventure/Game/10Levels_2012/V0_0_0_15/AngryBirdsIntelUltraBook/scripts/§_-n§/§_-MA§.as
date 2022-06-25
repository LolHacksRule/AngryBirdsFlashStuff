package §_-n§
{
   import §_-8d§.§_-0FF§;
   import §_-uY§.DisplayObject;
   import §_-uY§.Sprite;
   
   public class §_-MA§ extends §_-tC§
   {
       
      
      private var §_-ml§:String = "";
      
      private var §_-Uw§:Number = 1.0;
      
      private var §_-0Cd§:Number = 1.0;
      
      public function §_-MA§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param3)
         {
            super(param1,param2);
         }
         do
         {
            this.§_-ml§ = param3;
            do
            {
               this.§_-Uw§ = param4;
               do
               {
                  this.§_-0Cd§ = param5;
               }
               while(!(_loc7_ || this));
               
            }
            while(!_loc7_);
            
         }
         while(_loc6_);
         
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§_-0FF§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:DisplayObject = null;
         if(_loc5_ || this)
         {
            §§push(param1);
            if(_loc5_ || param2)
            {
               if(§§pop() > this.time + duration)
               {
                  if(_loc5_)
                  {
                     §§push(Number(this.time + duration));
                     if(_loc5_)
                     {
                        param1 = §§pop();
                        if(!_loc6_)
                        {
                           addr51:
                           §§push(param1);
                           if(_loc5_ || param2)
                           {
                              addr59:
                              if(§§pop() > this.time)
                              {
                                 if(_loc5_)
                                 {
                                    addr64:
                                    if(_loc4_ = param2.getChildByName(this.§_-ml§))
                                    {
                                       if(_loc5_ || param3)
                                       {
                                          §§push(_loc4_);
                                          §§push(this.§_-Uw§);
                                          if(_loc5_ || param2)
                                          {
                                             §§push(this.§_-0Cd§);
                                             if(!(_loc6_ && param3))
                                             {
                                                §§push(this.§_-Uw§);
                                                if(_loc5_ || param3)
                                                {
                                                   addr130:
                                                   §§push(§§pop() - §§pop());
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      addr128:
                                                      §§push(§§pop() * this.§_-vp§(param1));
                                                   }
                                                   §§pop().scaleX = §§pop() + §§pop();
                                                   if(!(_loc6_ && param3))
                                                   {
                                                      addr138:
                                                      §§push(_loc4_);
                                                      §§push(this.§_-Uw§);
                                                      if(_loc5_)
                                                      {
                                                         §§push(this.§_-0Cd§);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(this.§_-Uw§);
                                                            if(_loc5_ || param2)
                                                            {
                                                               addr179:
                                                               §§push(§§pop() - §§pop());
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  addr177:
                                                                  §§push(§§pop() * this.§_-vp§(param1));
                                                               }
                                                               §§pop().scaleY = §§pop() + §§pop();
                                                               if(param1 >= this.time + duration)
                                                               {
                                                                  if(_loc5_ || param3)
                                                                  {
                                                                     addr193:
                                                                     §§push(false);
                                                                     if(!(_loc6_ && param2))
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr202:
                                                                     return true;
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr202);
                                                            }
                                                         }
                                                         §§goto(addr177);
                                                      }
                                                   }
                                                   §§goto(addr179);
                                                }
                                             }
                                             §§goto(addr128);
                                          }
                                          §§goto(addr130);
                                       }
                                       §§goto(addr138);
                                    }
                                    §§goto(addr179);
                                 }
                                 §§goto(addr193);
                              }
                           }
                           §§goto(addr179);
                        }
                        §§goto(addr64);
                     }
                     §§goto(addr59);
                  }
                  §§goto(addr202);
               }
               §§goto(addr51);
            }
            §§goto(addr179);
         }
         §§goto(addr202);
      }
      
      private function §_-vp§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(duration <= 0)
            {
               if(!_loc4_)
               {
                  §§goto(addr23);
               }
            }
            §§push(param1);
            if(_loc3_ || param1)
            {
               §§push(§§pop() - this.time);
               if(_loc3_)
               {
                  addr38:
                  §§push(§§pop() / duration);
                  if(!_loc4_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc2_:* = §§pop();
               if(!(_loc4_ && param1))
               {
                  §§push(_loc2_);
                  while(true)
                  {
                     §§push(2);
                     addr141:
                     addr130:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        addr142:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr143:
                           while(true)
                           {
                              _loc2_ = §§pop();
                           }
                        }
                     }
                     addr130:
                     if(!(_loc3_ || _loc3_))
                     {
                        continue;
                     }
                     §§goto(addr137);
                  }
               }
               loop4:
               while(true)
               {
                  §§push(_loc2_);
                  loop5:
                  while(true)
                  {
                     §§push(1);
                     loop6:
                     while(§§pop() >= §§pop())
                     {
                        loop7:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc3_)
                           {
                              if(_loc4_)
                              {
                                 continue loop5;
                              }
                              §§push(2);
                              if(!_loc3_)
                              {
                                 continue loop6;
                              }
                              if(!_loc4_)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(!_loc4_)
                                 {
                                    addr97:
                                    if(!_loc4_)
                                    {
                                       §§push(Number(§§pop()));
                                       while(!_loc4_)
                                       {
                                          _loc2_ = §§pop();
                                          if(!_loc4_)
                                          {
                                             if(_loc4_)
                                             {
                                                break loop6;
                                             }
                                             §§push((Math.pow(_loc2_,3) + 2) / 2);
                                             if(!_loc3_)
                                             {
                                                continue;
                                             }
                                             if(!(_loc4_ && param1))
                                             {
                                                return §§pop();
                                             }
                                             §§goto(addr143);
                                             continue;
                                          }
                                          continue loop7;
                                       }
                                       §§goto(addr130);
                                       addr100:
                                    }
                                    break;
                                 }
                                 §§goto(addr100);
                              }
                              §§goto(addr141);
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr142);
                     }
                     if(!_loc3_)
                     {
                        continue loop4;
                     }
                     §§goto(addr130);
                     §§push(Math.pow(_loc2_,3) / 2);
                  }
               }
               addr137:
               return §§pop();
            }
            §§goto(addr38);
         }
         addr23:
         return 1;
      }
      
      override public function clone() : §_-tC§
      {
         return new §_-MA§(time,duration,this.§_-ml§,this.§_-Uw§,this.§_-0Cd§);
      }
   }
}

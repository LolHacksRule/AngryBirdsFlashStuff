package §%%§
{
   import §&"5§.§7!P§;
   import §default§.DisplayObject;
   import §default§.Sprite;
   
   public class §+!5§ extends §#K§
   {
       
      
      private var §3!3§:String = "";
      
      private var §%!"§:Number = 1.0;
      
      private var §]Y§:Number = 1.0;
      
      public function §+!5§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            super(param1,param2);
         }
         do
         {
            this.§3!3§ = param3;
            do
            {
               this.§%!"§ = param4;
               do
               {
                  this.§]Y§ = param5;
               }
               while(!(_loc6_ || this));
               
            }
            while(_loc7_ && this);
            
         }
         while(!_loc6_);
         
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§7!P§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:DisplayObject = null;
         if(!_loc6_)
         {
            §§push(param1);
            if(!_loc6_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(!(_loc6_ && this))
                  {
                     §§push(Number(this.time + duration));
                     if(_loc5_ || this)
                     {
                        addr48:
                        param1 = §§pop();
                        if(_loc5_)
                        {
                           addr51:
                           §§push(param1);
                           if(_loc5_ || param3)
                           {
                              addr59:
                              if(§§pop() > this.time)
                              {
                                 if(_loc5_ || param2)
                                 {
                                    if(_loc4_ = param2.getChildByName(this.§3!3§))
                                    {
                                       if(_loc5_ || this)
                                       {
                                          §§push(_loc4_);
                                          §§push(this.§%!"§);
                                          if(!(_loc6_ && param2))
                                          {
                                             §§push(this.§]Y§);
                                             if(!_loc6_)
                                             {
                                                §§push(this.§%!"§);
                                                if(!(_loc6_ && param3))
                                                {
                                                   addr125:
                                                   §§push(§§pop() - §§pop());
                                                   if(!_loc6_)
                                                   {
                                                      addr123:
                                                      §§push(§§pop() * this.§-""§(param1));
                                                   }
                                                   §§pop().scaleX = §§pop() + §§pop();
                                                   if(!(_loc6_ && this))
                                                   {
                                                      §§push(_loc4_);
                                                      §§push(this.§%!"§);
                                                      if(_loc5_)
                                                      {
                                                         §§push(this.§]Y§);
                                                         if(_loc5_ || param2)
                                                         {
                                                            §§push(this.§%!"§);
                                                            if(_loc5_)
                                                            {
                                                               addr159:
                                                               §§push(§§pop() - §§pop());
                                                               if(!_loc6_)
                                                               {
                                                                  addr157:
                                                                  §§push(§§pop() * this.§-""§(param1));
                                                               }
                                                               §§pop().scaleY = §§pop() + §§pop();
                                                               if(param1 >= this.time + duration)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr168:
                                                                     §§push(false);
                                                                     if(!(_loc6_ && param2))
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr187:
                                                                     return true;
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr187);
                                                            }
                                                         }
                                                         §§goto(addr157);
                                                      }
                                                   }
                                                   §§goto(addr159);
                                                }
                                             }
                                             §§goto(addr123);
                                          }
                                          §§goto(addr125);
                                       }
                                    }
                                 }
                                 §§goto(addr187);
                              }
                           }
                           §§goto(addr159);
                        }
                        §§goto(addr187);
                     }
                     §§goto(addr59);
                  }
                  §§goto(addr168);
               }
               §§goto(addr51);
            }
            §§goto(addr48);
         }
         §§goto(addr51);
      }
      
      private function §-""§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(duration <= 0)
            {
               if(_loc3_ || _loc2_)
               {
                  return 1;
               }
            }
         }
         §§push(param1);
         if(_loc3_ || param1)
         {
            §§push(§§pop() - this.time);
            if(!(_loc4_ && _loc3_))
            {
               §§goto(addr48);
            }
            §§goto(addr52);
         }
         addr48:
         §§push(§§pop() / duration);
         if(_loc3_)
         {
            addr52:
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && this))
         {
            §§push(_loc2_);
            while(true)
            {
               §§push(2);
               addr161:
               addr145:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  addr162:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     addr163:
                     while(true)
                     {
                        _loc2_ = §§pop();
                     }
                  }
               }
               addr145:
               if(!_loc3_)
               {
                  continue;
               }
               §§goto(addr157);
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
                        §§push(2);
                        if(!_loc3_)
                        {
                           break;
                        }
                        if(!_loc4_)
                        {
                           §§push(§§pop() - §§pop());
                           if(!(_loc4_ && this))
                           {
                              if(!_loc3_)
                              {
                                 continue loop5;
                              }
                              if(!(_loc4_ && param1))
                              {
                                 addr113:
                                 §§push(Number(§§pop()));
                                 while(!_loc4_)
                                 {
                                    if(!_loc4_)
                                    {
                                       _loc2_ = §§pop();
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             break loop6;
                                          }
                                          if(_loc3_)
                                          {
                                             §§push((Math.pow(_loc2_,3) + 2) / 2);
                                             if(!_loc4_)
                                             {
                                                return §§pop();
                                             }
                                             continue;
                                          }
                                          continue loop4;
                                       }
                                       continue loop7;
                                    }
                                    §§goto(addr163);
                                 }
                                 §§goto(addr145);
                                 addr113:
                              }
                              §§goto(addr162);
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr113);
                  }
               }
               §§goto(addr145);
            }
         }
         addr157:
         return §§pop();
      }
      
      override public function clone() : §#K§
      {
         return new §+!5§(time,duration,this.§3!3§,this.§%!"§,this.§]Y§);
      }
   }
}

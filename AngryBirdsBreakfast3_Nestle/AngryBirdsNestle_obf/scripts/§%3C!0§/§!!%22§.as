package §<!0§
{
   import §2`§.§%!!§;
   import §3!J§.DisplayObject;
   import §3!J§.Sprite;
   
   public class §!!"§ extends §=!?§
   {
       
      
      private var §`]§:String = "";
      
      private var §43§:Number = 1.0;
      
      private var §?§:Number = 1.0;
      
      public function §!!"§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            super(param1,param2);
            while(true)
            {
               this.§`]§ = param3;
               §§goto(addr74);
            }
         }
         addr74:
         while(true)
         {
            this.§43§ = param4;
            do
            {
               this.§?§ = param5;
            }
            while(!(_loc7_ || this));
            
            if(_loc7_ || this)
            {
               if(_loc7_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§%!!§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:DisplayObject = null;
         if(_loc6_)
         {
            §§push(param1);
            if(!(_loc5_ && this))
            {
               if(§§pop() > this.time + duration)
               {
                  if(!(_loc5_ && param2))
                  {
                     §§push(Number(this.time + duration));
                     if(_loc6_)
                     {
                        param1 = §§pop();
                        if(_loc6_ || param1)
                        {
                           addr57:
                           §§push(param1);
                           if(_loc6_)
                           {
                              addr60:
                              if(§§pop() > this.time)
                              {
                                 if(_loc6_)
                                 {
                                    if(_loc4_ = param2.getChildByName(this.§`]§))
                                    {
                                       if(_loc6_ || this)
                                       {
                                          §§push(_loc4_);
                                          §§push(this.§43§);
                                          if(_loc6_)
                                          {
                                             §§push(this.§?§);
                                             if(_loc6_ || param1)
                                             {
                                                §§push(this.§43§);
                                                if(!_loc5_)
                                                {
                                                   addr115:
                                                   §§push(§§pop() - §§pop());
                                                   if(!_loc5_)
                                                   {
                                                      §§push(this.§56§(param1));
                                                   }
                                                   §§pop().scaleX = §§pop() + §§pop();
                                                   if(_loc6_)
                                                   {
                                                      §§push(_loc4_);
                                                      §§push(this.§43§);
                                                      if(_loc6_ || param2)
                                                      {
                                                         §§push(this.§?§);
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            §§push(this.§43§);
                                                            if(!_loc5_)
                                                            {
                                                               addr154:
                                                               addr155:
                                                               §§push(§§pop() - §§pop());
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  §§push(this.§56§(param1));
                                                               }
                                                               §§pop().scaleY = §§pop() + §§pop();
                                                               if(param1 >= this.time + duration)
                                                               {
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     addr169:
                                                                     §§push(false);
                                                                     if(!(_loc5_ && param2))
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr188:
                                                                     return true;
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr188);
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         §§goto(addr154);
                                                      }
                                                      §§goto(addr155);
                                                   }
                                                   §§goto(addr154);
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                          }
                                          §§goto(addr115);
                                       }
                                    }
                                 }
                                 §§goto(addr188);
                              }
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr169);
                     }
                     §§goto(addr154);
                  }
                  §§goto(addr188);
               }
               §§goto(addr57);
            }
            §§goto(addr60);
         }
         §§goto(addr188);
      }
      
      private function §56§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(duration <= 0)
            {
               if(_loc3_)
               {
                  return 1;
               }
            }
         }
         §§push(param1);
         if(!(_loc4_ && _loc2_))
         {
            §§push(§§pop() - this.time);
            if(_loc3_)
            {
               §§push(§§pop() / duration);
               if(!_loc3_)
               {
               }
               addr43:
               var _loc2_:* = §§pop();
               if(_loc3_)
               {
                  §§push(_loc2_);
                  loop0:
                  while(true)
                  {
                     §§push(2);
                     loop1:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc3_ || _loc3_)
                        {
                           §§push(Number(§§pop()));
                        }
                        loop2:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           addr144:
                           while(true)
                           {
                              §§push(_loc2_);
                              loop4:
                              while(_loc3_)
                              {
                                 §§push(1);
                                 while(§§pop() >= §§pop())
                                 {
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
                                          if(!_loc3_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(§§pop() - §§pop());
                                          if(!(_loc4_ && param1))
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       while(_loc3_)
                                       {
                                          if(!_loc4_)
                                          {
                                             continue loop0;
                                          }
                                          §§push((Math.pow(_loc2_,3) + 2) / 2);
                                          continue loop4;
                                          if(_loc3_)
                                          {
                                             return §§pop();
                                          }
                                       }
                                       §§goto(addr120);
                                    }
                                 }
                                 addr120:
                                 return §§pop();
                                 §§push(Math.pow(_loc2_,3) / 2);
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr61);
               }
            }
            §§push(Number(§§pop()));
         }
         §§goto(addr43);
      }
      
      override public function clone() : §=!?§
      {
         return new §!!"§(time,duration,this.§`]§,this.§43§,this.§?§);
      }
   }
}

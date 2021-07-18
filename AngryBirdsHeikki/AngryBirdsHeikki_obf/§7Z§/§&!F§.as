package §7Z§
{
   import §2Y§.DisplayObject;
   import §2Y§.Sprite;
   import §=!<§.§>a§;
   
   public class §&!F§ extends §^!§
   {
       
      
      private var §,!E§:String = "";
      
      private var §[W§:Number = 1.0;
      
      private var §2!_§:Number = 1.0;
      
      public function §&!F§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || this)
         {
            super(param1,param2);
         }
         loop0:
         while(true)
         {
            this.§,!E§ = param3;
            while(true)
            {
               this.§[W§ = param4;
               while(!_loc7_)
               {
                  continue loop0;
                  this.§2!_§ = param5;
                  if(!_loc7_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§>a§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:DisplayObject = null;
         if(_loc5_ || param1)
         {
            §§push(param1);
            if(_loc5_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(!(_loc6_ && this))
                  {
                     §§push(Number(this.time + duration));
                     if(_loc5_)
                     {
                        param1 = §§pop();
                        if(!_loc6_)
                        {
                           addr51:
                           §§push(param1);
                           if(!(_loc6_ && param1))
                           {
                              if(§§pop() > this.time)
                              {
                                 if(_loc5_)
                                 {
                                    addr64:
                                    if(_loc4_ = param2.getChildByName(this.§,!E§))
                                    {
                                       if(!(_loc6_ && param2))
                                       {
                                          §§push(_loc4_);
                                          §§push(this.§[W§);
                                          if(!(_loc6_ && param3))
                                          {
                                             §§push(this.§2!_§);
                                             if(!(_loc6_ && param2))
                                             {
                                                §§push(this.§[W§);
                                                if(!_loc6_)
                                                {
                                                   addr119:
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc5_)
                                                   {
                                                      §§push(this.§'O§(param1));
                                                   }
                                                   §§pop().scaleX = §§pop() + §§pop();
                                                   if(_loc5_)
                                                   {
                                                      §§push(_loc4_);
                                                      §§push(this.§[W§);
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§push(this.§2!_§);
                                                         if(_loc5_ || param3)
                                                         {
                                                            §§push(this.§[W§);
                                                            if(_loc5_)
                                                            {
                                                               addr159:
                                                               §§push(§§pop() - §§pop());
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  addr157:
                                                                  §§push(§§pop() * this.§'O§(param1));
                                                               }
                                                               §§pop().scaleY = §§pop() + §§pop();
                                                               if(param1 >= this.time + duration)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(false);
                                                                     if(_loc5_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr182:
                                                                     return true;
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr182);
                                                            }
                                                         }
                                                         §§goto(addr157);
                                                      }
                                                   }
                                                   §§goto(addr159);
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                          }
                                          §§goto(addr119);
                                       }
                                    }
                                    §§goto(addr159);
                                 }
                                 §§goto(addr182);
                              }
                           }
                           §§goto(addr159);
                        }
                     }
                     §§goto(addr159);
                  }
                  §§goto(addr64);
               }
               §§goto(addr51);
            }
            §§goto(addr159);
         }
         §§goto(addr51);
      }
      
      private function §'O§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(duration <= 0)
            {
               if(_loc3_ || _loc3_)
               {
                  return 1;
               }
            }
         }
         §§push(param1);
         if(_loc3_)
         {
            §§push(§§pop() - this.time);
            if(_loc3_ || param1)
            {
               addr43:
               §§push(§§pop() / duration);
               if(_loc3_)
               {
                  addr47:
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(_loc3_ || _loc3_)
               {
                  §§push(_loc2_);
                  while(true)
                  {
                     §§push(2);
                     loop1:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(Number(§§pop()));
                        }
                        loop2:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(_loc2_);
                              while(true)
                              {
                                 §§push(1);
                                 loop5:
                                 while(!(_loc4_ && _loc2_))
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if(_loc3_)
                                       {
                                          if(_loc4_ && this)
                                          {
                                             continue loop3;
                                          }
                                          return Math.pow(_loc2_,3) / 2;
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             addr97:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                addr99:
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§push(2);
                                                      if(!(_loc3_ || _loc3_))
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop() - §§pop());
                                                      continue loop2;
                                                   }
                                                }
                                                continue loop5;
                                             }
                                          }
                                          addr156:
                                       }
                                       return §§pop();
                                    }
                                    §§goto(addr97);
                                 }
                                 continue loop1;
                                 addr77:
                                 if(_loc3_ || param1)
                                 {
                                    return §§pop();
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr156);
            }
            §§goto(addr47);
         }
         §§goto(addr43);
      }
      
      override public function clone() : §^!§
      {
         return new §&!F§(time,duration,this.§,!E§,this.§[W§,this.§2!_§);
      }
   }
}

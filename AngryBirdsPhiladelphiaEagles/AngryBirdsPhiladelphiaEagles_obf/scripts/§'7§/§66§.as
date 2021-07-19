package §'7§
{
   import § N§.DisplayObject;
   import § N§.Sprite;
   import §#e§.§'?§;
   
   public class §66§ extends §@!F§
   {
       
      
      private var §4!6§:String = "";
      
      private var §-2§:Number = 1.0;
      
      private var §%q§:Number = 1.0;
      
      public function §66§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super(param1,param2);
            while(true)
            {
               this.§4!6§ = param3;
               §§goto(addr53);
            }
         }
         addr53:
         while(true)
         {
            this.§-2§ = param4;
            do
            {
               this.§%q§ = param5;
            }
            while(_loc7_);
            
            if(_loc6_)
            {
               if(_loc6_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'?§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:DisplayObject = null;
         if(_loc6_)
         {
            §§push(param1);
            if(_loc6_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(!(_loc5_ && this))
                  {
                     §§push(Number(this.time + duration));
                     if(!(_loc5_ && this))
                     {
                        param1 = §§pop();
                        if(_loc6_ || param3)
                        {
                           addr57:
                           §§push(param1);
                           if(!_loc5_)
                           {
                              addr60:
                              if(§§pop() > this.time)
                              {
                                 if(_loc6_)
                                 {
                                    addr65:
                                    if(_loc4_ = param2.getChildByName(this.§4!6§))
                                    {
                                       if(!_loc5_)
                                       {
                                          §§push(_loc4_);
                                          §§push(this.§-2§);
                                          if(!_loc5_)
                                          {
                                             §§push(this.§%q§);
                                             if(_loc6_)
                                             {
                                                §§push(this.§-2§);
                                                if(!(_loc5_ && param3))
                                                {
                                                   addr116:
                                                   §§push(§§pop() - §§pop());
                                                   if(!(_loc5_ && param2))
                                                   {
                                                      addr114:
                                                      §§push(§§pop() * this.§^!8§(param1));
                                                   }
                                                   §§pop().scaleX = §§pop() + §§pop();
                                                   if(_loc6_)
                                                   {
                                                      addr119:
                                                      §§push(_loc4_);
                                                      §§push(this.§-2§);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(this.§%q§);
                                                         if(!_loc5_)
                                                         {
                                                            §§push(this.§-2§);
                                                            if(_loc6_ || param1)
                                                            {
                                                               addr159:
                                                               addr160:
                                                               §§push(§§pop() - §§pop());
                                                               if(!(_loc5_ && param2))
                                                               {
                                                                  §§push(this.§^!8§(param1));
                                                               }
                                                               §§pop().scaleY = §§pop() + §§pop();
                                                               if(param1 >= this.time + duration)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr169:
                                                                     §§push(false);
                                                                     if(_loc6_ || param3)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr178:
                                                                     return true;
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr178);
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         §§goto(addr159);
                                                      }
                                                      §§goto(addr160);
                                                   }
                                                   §§goto(addr159);
                                                }
                                             }
                                             §§goto(addr114);
                                          }
                                          §§goto(addr116);
                                       }
                                       §§goto(addr119);
                                    }
                                    §§goto(addr159);
                                 }
                                 §§goto(addr178);
                              }
                           }
                           §§goto(addr159);
                        }
                        §§goto(addr65);
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr169);
               }
               §§goto(addr57);
            }
            §§goto(addr159);
         }
         §§goto(addr169);
      }
      
      private function §^!8§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(duration <= 0)
            {
               if(_loc4_)
               {
                  return 1;
               }
            }
         }
         §§push(param1);
         if(_loc4_ || _loc2_)
         {
            §§push(§§pop() - this.time);
            if(!_loc3_)
            {
               addr39:
               §§push(§§pop() / duration);
               if(!_loc3_)
               {
                  addr43:
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(!(_loc3_ && param1))
               {
                  §§push(_loc2_);
                  §§push(2);
                  loop0:
                  while(true)
                  {
                     §§push(Number(§§pop() * §§pop()));
                     loop1:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr140:
                        while(true)
                        {
                           §§push(_loc2_);
                           addr114:
                           while(true)
                           {
                              §§push(1);
                              §§push(§§pop() - §§pop());
                              addr82:
                              continue loop0;
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              if(!(_loc3_ && _loc3_))
                              {
                                 _loc2_ = §§pop();
                                 if(!_loc4_)
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       addr77:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          §§push(2);
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          §§goto(addr82);
                                          continue loop5;
                                       }
                                       continue loop0;
                                    }
                                    addr134:
                                 }
                                 while(true)
                                 {
                                    §§push((Math.pow(_loc2_,3) + 2) / 2);
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 return §§pop();
                                 addr111:
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr111);
            }
            §§goto(addr43);
         }
         §§goto(addr39);
      }
      
      override public function clone() : §@!F§
      {
         return new §66§(time,duration,this.§4!6§,this.§-2§,this.§%q§);
      }
   }
}

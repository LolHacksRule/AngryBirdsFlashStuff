package §3!Z§
{
   import §9t§.§=!>§;
   import §^a§.DisplayObject;
   import §^a§.Sprite;
   
   public class §+!G§ extends §!'§
   {
       
      
      private var §#W§:String = "";
      
      private var §2c§:Number = 1.0;
      
      private var §2![§:Number = 1.0;
      
      public function §+!G§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param1)
         {
            super(param1,param2);
            while(true)
            {
               this.§#W§ = param3;
               while(!_loc6_)
               {
                  this.§2c§ = param4;
                  while(_loc7_)
                  {
                     this.§2![§ = param5;
                     if(_loc7_)
                     {
                        return;
                        addr45:
                     }
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§=!>§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:DisplayObject = null;
         if(!(_loc6_ && param1))
         {
            §§push(param1);
            if(!(_loc6_ && this))
            {
               if(§§pop() > this.time + duration)
               {
                  if(!_loc6_)
                  {
                     §§push(Number(this.time + duration));
                     if(!(_loc6_ && param3))
                     {
                        param1 = §§pop();
                        if(!(_loc6_ && this))
                        {
                           addr61:
                           §§push(param1);
                           if(_loc5_ || param2)
                           {
                              addr69:
                              if(§§pop() > this.time)
                              {
                                 if(!_loc6_)
                                 {
                                    if(_loc4_ = param2.getChildByName(this.§#W§))
                                    {
                                       if(_loc5_ || param3)
                                       {
                                          §§push(_loc4_);
                                          §§push(this.§2c§);
                                          if(_loc5_)
                                          {
                                             §§push(this.§2![§);
                                             if(!(_loc6_ && param3))
                                             {
                                                §§push(this.§2c§);
                                                if(_loc5_ || param2)
                                                {
                                                   addr129:
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc5_)
                                                   {
                                                      §§push(this.§<m§(param1));
                                                   }
                                                   §§pop().scaleX = §§pop() + §§pop();
                                                   if(!_loc6_)
                                                   {
                                                      §§push(_loc4_);
                                                      §§push(this.§2c§);
                                                      if(!_loc6_)
                                                      {
                                                         §§push(this.§2![§);
                                                         if(_loc5_)
                                                         {
                                                            §§push(this.§2c§);
                                                            if(!(_loc6_ && param3))
                                                            {
                                                               addr164:
                                                               §§push(§§pop() - §§pop());
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  addr162:
                                                                  §§push(§§pop() * this.§<m§(param1));
                                                               }
                                                               §§pop().scaleY = §§pop() + §§pop();
                                                               if(param1 >= this.time + duration)
                                                               {
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     addr188:
                                                                     §§push(false);
                                                                     if(_loc5_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr192:
                                                                     return true;
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr192);
                                                            }
                                                         }
                                                         §§goto(addr162);
                                                      }
                                                   }
                                                   §§goto(addr164);
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                          }
                                          §§goto(addr129);
                                       }
                                    }
                                 }
                                 §§goto(addr188);
                              }
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr188);
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr192);
               }
               §§goto(addr61);
            }
            §§goto(addr69);
         }
         §§goto(addr61);
      }
      
      private function §<m§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            if(duration <= 0)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§goto(addr33);
               }
            }
            §§push(param1);
            if(!_loc4_)
            {
               §§push(§§pop() - this.time);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() / duration);
                  if(!(_loc4_ && _loc3_))
                  {
                     addr57:
                     §§push(Number(§§pop()));
                  }
               }
               var _loc2_:* = §§pop();
               if(!_loc4_)
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
                        loop2:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop3:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              loop4:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 loop5:
                                 for(; !(_loc4_ && _loc3_); while(_loc3_ || _loc3_)
                                 {
                                    §§goto(addr130);
                                    §§push(Number(§§pop()));
                                    §§goto(addr78);
                                 })
                                 {
                                    §§push(1);
                                    loop6:
                                    while(true)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             if(!(_loc3_ || param1))
                                             {
                                                continue loop4;
                                             }
                                             while(true)
                                             {
                                                §§push(Math.pow(_loc2_,3) / 2);
                                                continue loop0;
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                addr130:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(!(_loc3_ || _loc2_))
                                                   {
                                                      break;
                                                   }
                                                   §§push((Math.pow(_loc2_,3) + 2) / 2);
                                                   if(!(_loc3_ || param1))
                                                   {
                                                      continue;
                                                   }
                                                   if(!(_loc3_ || _loc3_))
                                                   {
                                                      continue loop5;
                                                   }
                                                   addr85:
                                                   if(_loc3_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      continue loop3;
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      continue loop0;
                                                      §§goto(addr85);
                                                   }
                                                   continue loop1;
                                                   addr104:
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr104);
                                       }
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr159);
            }
            §§goto(addr57);
         }
         addr33:
         return 1;
      }
      
      override public function clone() : §!'§
      {
         return new §+!G§(time,duration,this.§#W§,this.§2c§,this.§2![§);
      }
   }
}

package §2"a§
{
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §7!F§.§7§;
   
   public class §3"E§ extends §,^§
   {
       
      
      private var §-!`§:String = "";
      
      private var §6>§:Number = 1.0;
      
      private var §>X§:Number = 1.0;
      
      public function §3"E§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super(param1,param2);
            while(true)
            {
               this.§-!`§ = param3;
               while(_loc6_ || this)
               {
                  this.§6>§ = param4;
                  do
                  {
                     this.§>X§ = param5;
                  }
                  while(!_loc6_);
                  
                  if(!_loc6_)
                  {
                     continue;
                  }
                  return;
                  addr41:
               }
            }
         }
         §§goto(addr41);
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§7#5§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:DisplayObject = null;
         if(_loc5_)
         {
            §§push(param1);
            if(!(_loc6_ && param1))
            {
               if(§§pop() > this.time + duration)
               {
                  if(_loc5_ || this)
                  {
                     §§push(Number(this.time + duration));
                     if(!_loc6_)
                     {
                        addr48:
                        param1 = §§pop();
                        if(!(_loc6_ && param2))
                        {
                           addr56:
                           §§push(param1);
                           if(!_loc6_)
                           {
                              addr59:
                              if(§§pop() > this.time)
                              {
                                 if(!(_loc6_ && param1))
                                 {
                                    if(_loc4_ = param2.getChildByName(this.§-!`§))
                                    {
                                       if(!(_loc6_ && param3))
                                       {
                                          §§push(_loc4_);
                                          §§push(this.§6>§);
                                          if(_loc5_ || param1)
                                          {
                                             §§push(this.§>X§);
                                             if(!(_loc6_ && this))
                                             {
                                                §§push(this.§6>§);
                                                if(!_loc6_)
                                                {
                                                   addr125:
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc5_)
                                                   {
                                                      addr123:
                                                      §§push(§§pop() * this.§="a§(param1));
                                                   }
                                                   §§pop().scaleX = §§pop() + §§pop();
                                                   if(_loc5_)
                                                   {
                                                      §§push(_loc4_);
                                                      §§push(this.§6>§);
                                                      if(!_loc6_)
                                                      {
                                                         §§push(this.§>X§);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(this.§6>§);
                                                            if(_loc5_)
                                                            {
                                                               addr154:
                                                               §§push(§§pop() - §§pop());
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  addr152:
                                                                  §§push(§§pop() * this.§="a§(param1));
                                                               }
                                                               §§pop().scaleY = §§pop() + §§pop();
                                                               if(param1 >= this.time + duration)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr163:
                                                                     §§push(false);
                                                                     if(!(_loc6_ && param2))
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
                                                         §§goto(addr152);
                                                      }
                                                   }
                                                   §§goto(addr154);
                                                }
                                             }
                                             §§goto(addr123);
                                          }
                                          §§goto(addr125);
                                       }
                                    }
                                 }
                                 §§goto(addr182);
                              }
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr182);
                     }
                     §§goto(addr59);
                  }
                  §§goto(addr163);
               }
               §§goto(addr56);
            }
            §§goto(addr48);
         }
         §§goto(addr163);
      }
      
      private function §="a§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(duration <= 0)
            {
               if(!(_loc3_ && this))
               {
                  return 1;
               }
            }
         }
         §§push(param1);
         if(_loc4_ || _loc2_)
         {
            §§push(§§pop() - this.time);
            if(_loc4_ || param1)
            {
               §§push(§§pop() / duration);
               if(!_loc4_)
               {
               }
               addr54:
               var _loc2_:* = §§pop();
               if(_loc4_)
               {
                  §§push(_loc2_);
                  loop0:
                  while(true)
                  {
                     §§push(2);
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
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(!(_loc4_ || _loc2_))
                                    {
                                       break;
                                    }
                                    §§push(1);
                                    loop5:
                                    while(true)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                continue loop5;
                                             }
                                             addr118:
                                             loop7:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   _loc2_ = §§pop();
                                                   if(_loc3_ && _loc2_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      §§push((Math.pow(_loc2_,3) + 2) / 2);
                                                      if(_loc4_ || this)
                                                      {
                                                         continue loop7;
                                                      }
                                                      continue;
                                                   }
                                                }
                                                §§goto(addr173);
                                             }
                                          }
                                          continue loop3;
                                       }
                                       if(_loc3_ && this)
                                       {
                                          continue loop4;
                                       }
                                       §§push(Math.pow(_loc2_,3) / 2);
                                    }
                                 }
                                 addr173:
                                 return §§pop();
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               §§goto(addr157);
            }
            §§push(Number(§§pop()));
         }
         §§goto(addr54);
      }
      
      override public function clone() : §,^§
      {
         return new §3"E§(time,duration,this.§-!`§,this.§6>§,this.§>X§);
      }
   }
}

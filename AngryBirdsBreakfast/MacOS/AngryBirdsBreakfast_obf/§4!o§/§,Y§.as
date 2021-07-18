package §4!o§
{
   import § ! §.§5!x§;
   import §6![§.DisplayObject;
   import §6![§.Sprite;
   
   public class §,Y§ extends §0!c§
   {
       
      
      private var §1!m§:String = "";
      
      private var §=M§:Number = 1.0;
      
      private var §2!D§:Number = 1.0;
      
      public function §,Y§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || this)
         {
            super(param1,param2);
            while(true)
            {
               this.§1!m§ = param3;
               while(!_loc7_)
               {
                  this.§=M§ = param4;
                  do
                  {
                     this.§2!D§ = param5;
                  }
                  while(_loc7_ && param2);
                  
                  if(!_loc7_)
                  {
                     return;
                     addr51:
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5!x§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:DisplayObject = null;
         if(!_loc5_)
         {
            §§push(param1);
            if(!_loc5_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(_loc6_)
                  {
                     §§push(Number(this.time + duration));
                     if(_loc6_)
                     {
                        addr39:
                        param1 = §§pop();
                        if(!(_loc5_ && param1))
                        {
                           addr47:
                           §§push(param1);
                           if(_loc6_)
                           {
                              addr50:
                              if(§§pop() > this.time)
                              {
                                 if(_loc6_)
                                 {
                                    if(_loc4_ = param2.getChildByName(this.§1!m§))
                                    {
                                       if(_loc6_ || param3)
                                       {
                                          §§push(_loc4_);
                                          §§push(this.§=M§);
                                          if(!_loc5_)
                                          {
                                             §§push(this.§2!D§);
                                             if(!_loc5_)
                                             {
                                                §§push(this.§=M§);
                                                if(_loc6_ || this)
                                                {
                                                   addr106:
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc6_)
                                                   {
                                                      addr104:
                                                      §§push(§§pop() * this.§<!1§(param1));
                                                   }
                                                   §§pop().scaleX = §§pop() + §§pop();
                                                   if(!_loc5_)
                                                   {
                                                      §§push(_loc4_);
                                                      §§push(this.§=M§);
                                                      if(!(_loc5_ && this))
                                                      {
                                                         §§push(this.§2!D§);
                                                         if(!_loc5_)
                                                         {
                                                            §§push(this.§=M§);
                                                            if(!(_loc5_ && param3))
                                                            {
                                                               addr139:
                                                               addr140:
                                                               §§push(§§pop() - §§pop());
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(this.§<!1§(param1));
                                                               }
                                                               §§pop().scaleY = §§pop() + §§pop();
                                                               if(param1 >= this.time + duration)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr159:
                                                                     §§push(false);
                                                                     if(_loc6_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr163:
                                                                     return true;
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr163);
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         §§goto(addr139);
                                                      }
                                                      §§goto(addr140);
                                                   }
                                                   §§goto(addr139);
                                                }
                                             }
                                             §§goto(addr104);
                                          }
                                          §§goto(addr106);
                                       }
                                    }
                                 }
                                 §§goto(addr159);
                              }
                           }
                           §§goto(addr139);
                        }
                        §§goto(addr163);
                     }
                     §§goto(addr50);
                  }
                  §§goto(addr159);
               }
               §§goto(addr47);
            }
            §§goto(addr39);
         }
         §§goto(addr163);
      }
      
      private function §<!1§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(duration <= 0)
            {
               if(!_loc3_)
               {
                  §§goto(addr24);
               }
            }
            §§push(param1);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() - this.time);
               if(!(_loc3_ && param1))
               {
                  §§push(§§pop() / duration);
                  if(_loc3_ && _loc3_)
                  {
                  }
                  addr54:
                  var _loc2_:* = §§pop();
                  if(!_loc3_)
                  {
                     §§push(_loc2_);
                     if(_loc4_)
                     {
                        §§push(2);
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                        }
                        addr172:
                     }
                     loop1:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        loop2:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(_loc2_);
                              loop4:
                              while(true)
                              {
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
                                          loop7:
                                          while(_loc4_ || param1)
                                          {
                                             §§push(2);
                                             if(!(_loc4_ || param1))
                                             {
                                                continue loop5;
                                             }
                                             if(_loc4_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc4_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                loop8:
                                                while(_loc4_)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(_loc4_ || param1)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§push(Math.pow(_loc2_,3) / 2);
                                                      }
                                                      else
                                                      {
                                                         addr143:
                                                      }
                                                      if(!_loc3_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push((Math.pow(_loc2_,3) + 2) / 2);
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               if(_loc4_ || this)
                                                               {
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               continue loop7;
                                                            }
                                                            continue loop8;
                                                         }
                                                         return §§pop();
                                                      }
                                                      continue loop3;
                                                      continue;
                                                      break loop7;
                                                   }
                                                   continue loop6;
                                                }
                                                continue loop4;
                                             }
                                             §§goto(addr172);
                                          }
                                          if(_loc4_ || param1)
                                          {
                                             return §§pop();
                                          }
                                          continue loop1;
                                       }
                                    }
                                    §§goto(addr143);
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr138);
               }
               §§push(Number(§§pop()));
            }
            §§goto(addr54);
         }
         addr24:
         return 1;
      }
      
      override public function clone() : §0!c§
      {
         return new §,Y§(time,duration,this.§1!m§,this.§=M§,this.§2!D§);
      }
   }
}

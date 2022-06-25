package §`!i§
{
   import §'!9§.DisplayObject;
   import §'!9§.Sprite;
   import §-w§.§,Q§;
   
   public class §'B§ extends §8d§
   {
       
      
      private var §!0§:String = "";
      
      private var §%!V§:Number = 1.0;
      
      private var §&!u§:Number = 1.0;
      
      public function §'B§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            super(param1,param2);
            while(true)
            {
               this.§!0§ = param3;
               while(_loc7_)
               {
                  this.§%!V§ = param4;
                  while(!(_loc6_ && this))
                  {
                     this.§&!u§ = param5;
                     if(_loc7_ || param2)
                     {
                        return;
                        addr55:
                     }
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§,Q§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:DisplayObject = null;
         if(!(_loc5_ && param2))
         {
            §§push(param1);
            if(!_loc5_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(_loc6_)
                  {
                     §§push(Number(this.time + duration));
                     if(_loc6_ || param3)
                     {
                        addr49:
                        param1 = §§pop();
                        if(!_loc5_)
                        {
                           addr52:
                           §§push(param1);
                           if(_loc6_)
                           {
                              if(§§pop() > this.time)
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    addr65:
                                    if(_loc4_ = param2.getChildByName(this.§!0§))
                                    {
                                       if(_loc6_ || param3)
                                       {
                                          §§push(_loc4_);
                                          §§push(this.§%!V§);
                                          if(!(_loc5_ && param1))
                                          {
                                             §§push(this.§&!u§);
                                             if(!_loc5_)
                                             {
                                                §§push(this.§%!V§);
                                                if(!_loc5_)
                                                {
                                                   addr115:
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc6_)
                                                   {
                                                      §§push(this.§'X§(param1));
                                                   }
                                                   §§pop().scaleX = §§pop() + §§pop();
                                                   if(!_loc5_)
                                                   {
                                                      §§push(_loc4_);
                                                      §§push(this.§%!V§);
                                                      if(_loc6_ || this)
                                                      {
                                                         §§push(this.§&!u§);
                                                         if(_loc6_ || param3)
                                                         {
                                                            §§push(this.§%!V§);
                                                            if(_loc6_)
                                                            {
                                                               addr165:
                                                               §§push(§§pop() - §§pop());
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  addr163:
                                                                  §§push(§§pop() * this.§'X§(param1));
                                                               }
                                                               §§pop().scaleY = §§pop() + §§pop();
                                                               if(param1 >= this.time + duration)
                                                               {
                                                                  if(_loc6_ || param2)
                                                                  {
                                                                     §§push(false);
                                                                     if(!(_loc5_ && param1))
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
                                                         }
                                                         §§goto(addr163);
                                                      }
                                                   }
                                                   §§goto(addr165);
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
                           §§goto(addr165);
                        }
                        §§goto(addr188);
                     }
                     §§goto(addr165);
                  }
                  §§goto(addr65);
               }
               §§goto(addr52);
            }
            §§goto(addr49);
         }
         §§goto(addr65);
      }
      
      private function §'X§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(duration <= 0)
            {
               if(!(_loc4_ && this))
               {
                  §§goto(addr28);
               }
            }
            §§push(param1);
            if(!_loc4_)
            {
               §§push(§§pop() - this.time);
               if(!_loc4_)
               {
                  §§push(§§pop() / duration);
                  if(!_loc4_)
                  {
                     addr42:
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(_loc3_ || param1)
                  {
                     §§push(_loc2_);
                     while(true)
                     {
                        §§push(2);
                        addr146:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           addr147:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr148:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                              }
                           }
                        }
                     }
                     addr145:
                  }
                  loop4:
                  while(true)
                  {
                     §§push(_loc2_);
                     loop5:
                     while(_loc3_)
                     {
                        §§push(1);
                        loop6:
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!_loc4_)
                                 {
                                    §§push(2);
                                    if(!_loc4_)
                                    {
                                       if(!(_loc4_ && param1))
                                       {
                                          §§push(§§pop() - §§pop());
                                          loop8:
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop5;
                                             }
                                             if(!_loc4_)
                                             {
                                                §§push(Number(§§pop()));
                                                while(!_loc4_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      break loop8;
                                                   }
                                                   _loc2_ = §§pop();
                                                   if(_loc3_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         §§push(Math.pow(_loc2_,3) / 2);
                                                         break;
                                                      }
                                                      addr129:
                                                      §§push((Math.pow(_loc2_,3) + 2) / 2);
                                                      if(!_loc4_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      continue;
                                                   }
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      continue loop7;
                                                   }
                                                   continue loop4;
                                                }
                                                return §§pop();
                                                addr103:
                                             }
                                             §§goto(addr145);
                                          }
                                          §§goto(addr147);
                                       }
                                       break loop6;
                                    }
                                    break;
                                 }
                                 §§goto(addr103);
                              }
                              continue;
                           }
                           §§goto(addr129);
                        }
                        §§goto(addr146);
                     }
                     §§goto(addr148);
                  }
               }
            }
            §§goto(addr42);
         }
         addr28:
         return 1;
      }
      
      override public function clone() : §8d§
      {
         return new §'B§(time,duration,this.§!0§,this.§%!V§,this.§&!u§);
      }
   }
}

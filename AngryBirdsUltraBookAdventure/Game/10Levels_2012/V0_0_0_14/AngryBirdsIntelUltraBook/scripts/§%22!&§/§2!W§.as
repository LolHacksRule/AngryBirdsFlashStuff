package §"!&§
{
   import §,6§.§!o§;
   import §9E§.DisplayObject;
   import §9E§.Sprite;
   
   public class §2!W§ extends §!!%§
   {
       
      
      private var §0!T§:String = "";
      
      private var §!"§:Number = 1.0;
      
      private var §8!F§:Number = 1.0;
      
      public function §2!W§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param2))
         {
            super(param1,param2);
            while(true)
            {
               this.§0!T§ = param3;
               while(_loc6_)
               {
                  this.§!"§ = param4;
                  do
                  {
                     this.§8!F§ = param5;
                  }
                  while(!(_loc6_ || param1));
                  
                  if(!_loc7_)
                  {
                     return;
                     addr61:
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§!o§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:DisplayObject = null;
         if(!_loc6_)
         {
            §§push(param1);
            if(_loc5_ || param1)
            {
               if(§§pop() > this.time + duration)
               {
                  if(!(_loc6_ && this))
                  {
                     §§push(Number(this.time + duration));
                     if(!(_loc6_ && param3))
                     {
                        param1 = §§pop();
                        if(!_loc6_)
                        {
                           addr56:
                           §§push(param1);
                           if(_loc5_)
                           {
                              addr59:
                              if(§§pop() > this.time)
                              {
                                 if(!_loc6_)
                                 {
                                    addr64:
                                    if(_loc4_ = param2.getChildByName(this.§0!T§))
                                    {
                                       if(_loc5_)
                                       {
                                          §§push(_loc4_);
                                          §§push(this.§!"§);
                                          if(_loc5_ || this)
                                          {
                                             §§push(this.§8!F§);
                                             if(_loc5_)
                                             {
                                                §§push(this.§!"§);
                                                if(!_loc6_)
                                                {
                                                   addr109:
                                                   §§push(§§pop() - §§pop());
                                                   if(!_loc6_)
                                                   {
                                                      §§push(this.§<!M§(param1));
                                                   }
                                                   §§pop().scaleX = §§pop() + §§pop();
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      addr118:
                                                      §§push(_loc4_);
                                                      §§push(this.§!"§);
                                                      if(!_loc6_)
                                                      {
                                                         §§push(this.§8!F§);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(this.§!"§);
                                                            if(_loc5_ || param1)
                                                            {
                                                               addr154:
                                                               §§push(§§pop() - §§pop());
                                                               if(!_loc6_)
                                                               {
                                                                  addr152:
                                                                  §§push(§§pop() * this.§<!M§(param1));
                                                               }
                                                               §§pop().scaleY = §§pop() + §§pop();
                                                               if(param1 >= this.time + duration)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr163:
                                                                     §§push(false);
                                                                     if(!_loc6_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr167:
                                                                     return true;
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr167);
                                                            }
                                                         }
                                                         §§goto(addr152);
                                                      }
                                                   }
                                                   §§goto(addr154);
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                          }
                                          §§goto(addr109);
                                       }
                                       §§goto(addr118);
                                    }
                                 }
                                 §§goto(addr163);
                              }
                              §§goto(addr154);
                           }
                        }
                        §§goto(addr163);
                     }
                     §§goto(addr154);
                  }
                  §§goto(addr163);
               }
               §§goto(addr56);
            }
            §§goto(addr59);
         }
         §§goto(addr64);
      }
      
      private function §<!M§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(duration <= 0)
            {
               if(!_loc4_)
               {
                  return 1;
               }
            }
         }
         §§push(param1);
         if(_loc3_)
         {
            §§push(§§pop() - this.time);
            if(!(_loc4_ && _loc3_))
            {
               addr38:
               §§push(§§pop() / duration);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               §§push(_loc2_);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(2);
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                  }
                  addr171:
               }
               while(true)
               {
                  §§push(Number(§§pop()));
                  addr173:
                  while(true)
                  {
                     _loc2_ = §§pop();
                  }
               }
               addr172:
            }
            loop3:
            while(true)
            {
               §§push(_loc2_);
               if(_loc3_ || _loc3_)
               {
                  if(!_loc4_)
                  {
                     §§push(1);
                     loop4:
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           do
                           {
                              §§push(_loc2_);
                              if(_loc3_ || param1)
                              {
                                 continue loop4;
                              }
                              addr111:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 if(!(_loc4_ && param1))
                                 {
                                    continue;
                                 }
                              }
                           }
                           while(!(_loc4_ && _loc2_));
                           
                           continue loop3;
                        }
                        addr151:
                        §§push(Math.pow(_loc2_,3) / 2);
                        if(!_loc4_)
                        {
                           break loop3;
                        }
                        §§goto(addr173);
                     }
                     §§goto(addr171);
                  }
                  §§goto(addr172);
               }
               §§goto(addr151);
            }
            return §§pop();
         }
         §§goto(addr38);
      }
      
      override public function clone() : §!!%§
      {
         return new §2!W§(time,duration,this.§0!T§,this.§!"§,this.§8!F§);
      }
   }
}

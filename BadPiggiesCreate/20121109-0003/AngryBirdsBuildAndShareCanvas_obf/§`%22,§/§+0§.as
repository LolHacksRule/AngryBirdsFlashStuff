package §`",§
{
   import §+!-§.DisplayObject;
   import §+!-§.Sprite;
   import §;"7§.§="<§;
   
   public class §+0§ extends §7!s§
   {
       
      
      private var §#^§:String = "";
      
      private var §&u§:Number = 1.0;
      
      private var §3o§:Number = 1.0;
      
      public function §+0§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super(param1,param2);
         }
         while(true)
         {
            this.§#^§ = param3;
            while(!(_loc6_ && param1))
            {
               this.§&u§ = param4;
               while(_loc7_)
               {
                  this.§3o§ = param5;
                  if(_loc7_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§="<§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:DisplayObject = null;
         if(!(_loc5_ && param3))
         {
            §§push(param1);
            if(!(_loc5_ && param3))
            {
               if(§§pop() > this.time + duration)
               {
                  if(_loc6_ || param2)
                  {
                     §§push(Number(this.time + duration));
                     if(_loc6_)
                     {
                        param1 = §§pop();
                        if(_loc6_ || this)
                        {
                           addr62:
                           §§push(param1);
                           if(_loc6_ || param1)
                           {
                              addr70:
                              if(§§pop() > this.time)
                              {
                                 if(_loc6_ || param3)
                                 {
                                    addr80:
                                    if(_loc4_ = param2.getChildByName(this.§#^§))
                                    {
                                       if(!_loc5_)
                                       {
                                          §§push(_loc4_);
                                          §§push(this.§&u§);
                                          if(_loc6_)
                                          {
                                             §§push(this.§3o§);
                                             if(!(_loc5_ && param1))
                                             {
                                                §§push(this.§&u§);
                                                if(_loc6_ || this)
                                                {
                                                   addr130:
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc6_)
                                                   {
                                                      §§push(this.§]"$§(param1));
                                                   }
                                                   §§pop().scaleX = §§pop() + §§pop();
                                                   if(_loc6_ || this)
                                                   {
                                                      addr139:
                                                      §§push(_loc4_);
                                                      §§push(this.§&u§);
                                                      if(_loc6_ || param2)
                                                      {
                                                         §§push(this.§3o§);
                                                         if(_loc6_ || this)
                                                         {
                                                            §§push(this.§&u§);
                                                            if(_loc6_ || param1)
                                                            {
                                                               addr175:
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc6_)
                                                               {
                                                                  addr173:
                                                                  §§push(§§pop() * this.§]"$§(param1));
                                                               }
                                                               §§pop().scaleY = §§pop() + §§pop();
                                                               if(param1 >= this.time + duration)
                                                               {
                                                                  if(!(_loc5_ && param3))
                                                                  {
                                                                     addr199:
                                                                     §§push(false);
                                                                     if(_loc6_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr203:
                                                                     return true;
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr203);
                                                            }
                                                         }
                                                         §§goto(addr173);
                                                      }
                                                   }
                                                   §§goto(addr175);
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                          }
                                          §§goto(addr130);
                                       }
                                       §§goto(addr139);
                                    }
                                    §§goto(addr175);
                                 }
                                 §§goto(addr203);
                              }
                              §§goto(addr175);
                           }
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr175);
                  }
                  §§goto(addr80);
               }
               §§goto(addr62);
            }
            §§goto(addr70);
         }
         §§goto(addr199);
      }
      
      private function §]"$§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(duration <= 0)
            {
               if(!_loc4_)
               {
                  §§goto(addr23);
               }
            }
            §§push(param1);
            if(!(_loc4_ && _loc2_))
            {
               §§push(§§pop() - this.time);
               if(_loc3_)
               {
                  §§push(§§pop() / duration);
                  if(_loc3_)
                  {
                     addr42:
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
                              do
                              {
                                 §§push(_loc2_);
                                 loop5:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop3;
                                    }
                                    §§push(1);
                                    loop6:
                                    while(true)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          if(!_loc4_)
                                          {
                                             break loop5;
                                          }
                                          addr153:
                                          while(true)
                                          {
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                             continue loop6;
                                          }
                                          addr100:
                                          while(!_loc4_)
                                          {
                                             §§push(Number(§§pop()));
                                             while(true)
                                             {
                                                if(_loc4_ && _loc3_)
                                                {
                                                   return §§pop();
                                                }
                                                addr152:
                                                if(!(_loc4_ && this))
                                                {
                                                   _loc2_ = §§pop();
                                                   if(!(_loc3_ || param1))
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                continue loop2;
                                             }
                                          }
                                          continue loop0;
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                              while(!_loc3_);
                              
                              §§goto(addr152);
                           }
                        }
                     }
                  }
               }
               §§goto(addr153);
            }
            §§goto(addr42);
         }
         addr23:
         return 1;
      }
      
      override public function clone() : §7!s§
      {
         return new §+0§(time,duration,this.§#^§,this.§&u§,this.§3o§);
      }
   }
}

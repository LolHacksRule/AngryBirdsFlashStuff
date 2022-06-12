package §`!]§
{
   import §1!$§.DisplayObject;
   import §1!$§.Sprite;
   import §6!D§.§0Y§;
   
   public class §`!G§ extends §>!D§
   {
       
      
      private var §5!s§:String = "";
      
      private var §&`§:Number = 1.0;
      
      private var §@!x§:Number = 1.0;
      
      public function §`!G§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param3))
         {
            super(param1,param2);
            while(true)
            {
               this.§5!s§ = param3;
               addr67:
               while(_loc7_)
               {
               }
            }
         }
         while(true)
         {
            this.§&`§ = param4;
            while(!_loc6_)
            {
               this.§@!x§ = param5;
               if(!_loc6_)
               {
                  return;
               }
            }
            §§goto(addr67);
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§0Y§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:DisplayObject = null;
         if(_loc6_ || param3)
         {
            §§push(param1);
            if(!_loc5_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(_loc6_)
                  {
                     §§push(Number(this.time + duration));
                     if(!_loc5_)
                     {
                        param1 = §§pop();
                        if(!_loc5_)
                        {
                           addr47:
                           §§push(param1);
                           if(_loc6_ || param3)
                           {
                              addr55:
                              if(§§pop() > this.time)
                              {
                                 if(_loc6_ || param1)
                                 {
                                    if(_loc4_ = param2.getChildByName(this.§5!s§))
                                    {
                                       if(!_loc5_)
                                       {
                                          §§push(_loc4_);
                                          §§push(this.§&`§);
                                          if(_loc6_)
                                          {
                                             §§push(this.§@!x§);
                                             if(!_loc5_)
                                             {
                                                §§push(this.§&`§);
                                                if(_loc6_ || param2)
                                                {
                                                   addr115:
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§push(this.§7!<§(param1));
                                                   }
                                                   §§pop().scaleX = §§pop() + §§pop();
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§push(_loc4_);
                                                      §§push(this.§&`§);
                                                      if(_loc6_ || param3)
                                                      {
                                                         §§push(this.§@!x§);
                                                         if(_loc6_ || this)
                                                         {
                                                            §§push(this.§&`§);
                                                            if(!_loc5_)
                                                            {
                                                               addr164:
                                                               addr165:
                                                               §§push(§§pop() - §§pop());
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(this.§7!<§(param1));
                                                               }
                                                               §§pop().scaleY = §§pop() + §§pop();
                                                               if(param1 >= this.time + duration)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr174:
                                                                     §§push(false);
                                                                     if(_loc6_)
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
                                                         §§goto(addr164);
                                                      }
                                                      §§goto(addr165);
                                                   }
                                                   §§goto(addr164);
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                          }
                                          §§goto(addr115);
                                       }
                                    }
                                 }
                                 §§goto(addr174);
                              }
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr174);
                     }
                     §§goto(addr55);
                  }
               }
               §§goto(addr47);
            }
            §§goto(addr164);
         }
         §§goto(addr47);
      }
      
      private function §7!<§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(duration <= 0)
            {
               if(_loc4_ || _loc2_)
               {
                  return 1;
               }
            }
         }
         §§push(param1);
         if(!_loc3_)
         {
            §§push(§§pop() - this.time);
            if(!(_loc3_ && this))
            {
               §§push(§§pop() / duration);
               if(!_loc3_)
               {
                  addr48:
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(!(_loc3_ && _loc3_))
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
                     if(!_loc3_)
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
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    addr156:
                                    if(!(_loc3_ && this))
                                    {
                                       addr169:
                                       §§push(Math.pow(_loc2_,3) / 2);
                                       if(!_loc3_)
                                       {
                                          return §§pop();
                                       }
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                                 addr103:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(!_loc3_)
                                    {
                                       §§push(2);
                                       if(_loc3_ && param1)
                                       {
                                          continue loop5;
                                       }
                                       if(!(_loc4_ || this))
                                       {
                                          break;
                                       }
                                       §§push(§§pop() - §§pop());
                                    }
                                    addr123:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       continue loop0;
                                    }
                                 }
                                 continue loop1;
                              }
                              addr93:
                              if(_loc4_ || _loc3_)
                              {
                                 return §§pop();
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr172);
         }
         §§goto(addr48);
      }
      
      override public function clone() : §>!D§
      {
         return new §`!G§(time,duration,this.§5!s§,this.§&`§,this.§@!x§);
      }
   }
}

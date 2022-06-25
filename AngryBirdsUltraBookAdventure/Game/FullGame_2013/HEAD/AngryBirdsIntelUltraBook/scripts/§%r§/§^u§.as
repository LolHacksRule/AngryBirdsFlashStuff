package §%r§
{
   import §#!,§.DisplayObject;
   import §#!,§.Sprite;
   import §,!7§.TextureManager;
   
   public class §^u§ extends §,!b§
   {
       
      
      private var §&!O§:String = "";
      
      private var §1-§:Number = 1.0;
      
      private var §=!a§:Number = 1.0;
      
      public function §^u§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super(param1,param2);
            while(true)
            {
               this.§&!O§ = param3;
               §§goto(addr68);
            }
         }
         addr68:
         while(true)
         {
            this.§1-§ = param4;
            do
            {
               this.§=!a§ = param5;
            }
            while(_loc7_ && param1);
            
            if(_loc6_)
            {
               if(!_loc7_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:TextureManager) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:DisplayObject = null;
         if(!_loc5_)
         {
            §§push(param1);
            if(_loc6_ || param2)
            {
               if(§§pop() > this.time + duration)
               {
                  if(_loc6_)
                  {
                     §§push(Number(this.time + duration));
                     if(_loc6_ || param2)
                     {
                        addr51:
                        param1 = §§pop();
                        if(!_loc5_)
                        {
                           addr54:
                           §§push(param1);
                           if(!(_loc5_ && this))
                           {
                              addr62:
                              if(§§pop() > this.time)
                              {
                                 if(!_loc5_)
                                 {
                                    addr67:
                                    _loc4_ = param2.getChildByName(this.§&!O§);
                                    if(_loc6_ || param2)
                                    {
                                       if(_loc4_)
                                       {
                                          if(_loc6_)
                                          {
                                             §§push(_loc4_);
                                             §§push(this.§1-§);
                                             if(!(_loc5_ && param1))
                                             {
                                                §§push(this.§=!a§);
                                                if(!(_loc5_ && param3))
                                                {
                                                   §§push(this.§1-§);
                                                   if(!_loc5_)
                                                   {
                                                      addr126:
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc5_)
                                                      {
                                                         addr124:
                                                         §§push(§§pop() * this.§#>§(param1));
                                                      }
                                                      §§pop().scaleX = §§pop() + §§pop();
                                                      if(_loc6_ || this)
                                                      {
                                                         addr134:
                                                         §§push(_loc4_);
                                                         §§push(this.§1-§);
                                                         if(!(_loc5_ && this))
                                                         {
                                                            §§push(this.§=!a§);
                                                            if(!_loc5_)
                                                            {
                                                               §§push(this.§1-§);
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  addr180:
                                                                  §§push(§§pop() - §§pop());
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     addr178:
                                                                     §§push(§§pop() * this.§#>§(param1));
                                                                  }
                                                                  §§pop().scaleY = §§pop() + §§pop();
                                                                  if(param1 >= this.time + duration)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        addr190:
                                                                        §§push(false);
                                                                        if(_loc6_ || param2)
                                                                        {
                                                                           return §§pop();
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr199:
                                                                        return true;
                                                                     }
                                                                     return §§pop();
                                                                  }
                                                                  §§goto(addr199);
                                                               }
                                                            }
                                                            §§goto(addr178);
                                                         }
                                                      }
                                                      §§goto(addr180);
                                                   }
                                                }
                                                §§goto(addr124);
                                             }
                                             §§goto(addr126);
                                          }
                                       }
                                       §§goto(addr180);
                                    }
                                    §§goto(addr134);
                                 }
                                 §§goto(addr199);
                              }
                           }
                           §§goto(addr180);
                        }
                        §§goto(addr190);
                     }
                     §§goto(addr62);
                  }
                  §§goto(addr67);
               }
               §§goto(addr54);
            }
            §§goto(addr51);
         }
         §§goto(addr67);
      }
      
      private function §#>§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(duration <= 0)
            {
               if(!(_loc4_ && param1))
               {
                  §§goto(addr29);
               }
            }
            §§push(param1);
            if(_loc3_)
            {
               §§push(§§pop() - this.time);
               if(!(_loc4_ && param1))
               {
                  §§push(§§pop() / duration);
                  if(!(_loc4_ && param1))
                  {
                     addr54:
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(_loc3_ || _loc3_)
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
                           if(_loc3_ || _loc2_)
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
                                 if(_loc3_)
                                 {
                                    §§push(1);
                                    loop4:
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             break;
                                          }
                                          loop5:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(_loc3_ || param1)
                                             {
                                                §§push(2);
                                                if(!_loc3_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop() - §§pop());
                                                while(!_loc4_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                continue loop2;
                                                addr106:
                                             }
                                             loop7:
                                             while(!(_loc4_ && param1))
                                             {
                                                _loc2_ = §§pop();
                                                if(_loc3_)
                                                {
                                                   if(!(_loc3_ || _loc2_))
                                                   {
                                                      break loop4;
                                                   }
                                                   if(_loc3_ || this)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push((Math.pow(_loc2_,3) + 2) / 2);
                                                         if(_loc4_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         if(!_loc4_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop0;
                                                         }
                                                         §§goto(addr106);
                                                      }
                                                      return §§pop();
                                                      continue;
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop5;
                                             }
                                             §§goto(addr159);
                                          }
                                          continue;
                                       }
                                       continue loop1;
                                    }
                                    §§push(Math.pow(_loc2_,3) / 2);
                                 }
                                 addr159:
                                 return §§pop();
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr133);
               }
            }
            §§goto(addr54);
         }
         addr29:
         return 1;
      }
      
      override public function clone() : §,!b§
      {
         return new §^u§(time,duration,this.§&!O§,this.§1-§,this.§=!a§);
      }
   }
}

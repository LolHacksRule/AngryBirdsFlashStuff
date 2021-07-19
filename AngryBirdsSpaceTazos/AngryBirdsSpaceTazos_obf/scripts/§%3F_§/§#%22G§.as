package §?_§
{
   import §4&§.§,C§;
   import §7!8§.DisplayObject;
   import §7!8§.Sprite;
   
   public class §#"G§ extends §3'§
   {
       
      
      private var §6K§:String = "";
      
      private var §1"=§:Number = 1.0;
      
      private var § !k§:Number = 1.0;
      
      public function §#"G§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super(param1,param2);
            while(true)
            {
               this.§6K§ = param3;
               addr61:
               while(!_loc7_)
               {
               }
            }
         }
         while(true)
         {
            this.§1"=§ = param4;
            while(!_loc7_)
            {
               this.§ !k§ = param5;
               if(!_loc7_)
               {
                  return;
               }
            }
            §§goto(addr61);
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§,C§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:DisplayObject = null;
         if(!_loc5_)
         {
            §§push(param1);
            if(!(_loc5_ && param1))
            {
               if(§§pop() > this.time + duration)
               {
                  if(!(_loc5_ && this))
                  {
                     §§push(Number(this.time + duration));
                     if(_loc6_)
                     {
                        addr49:
                        param1 = §§pop();
                        if(_loc6_ || param1)
                        {
                           addr57:
                           §§push(param1);
                           if(_loc6_)
                           {
                              addr60:
                              if(§§pop() > this.time)
                              {
                                 if(_loc6_ || this)
                                 {
                                    addr70:
                                    if(_loc4_ = param2.getChildByName(this.§6K§))
                                    {
                                       if(_loc6_)
                                       {
                                          §§push(_loc4_);
                                          §§push(this.§1"=§);
                                          if(!_loc5_)
                                          {
                                             §§push(this.§ !k§);
                                             if(!(_loc5_ && param3))
                                             {
                                                §§push(this.§1"=§);
                                                if(_loc6_)
                                                {
                                                   addr115:
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc6_)
                                                   {
                                                      §§push(this.§?!=§(param1));
                                                   }
                                                   §§pop().scaleX = §§pop() + §§pop();
                                                   if(_loc6_)
                                                   {
                                                      §§push(_loc4_);
                                                      §§push(this.§1"=§);
                                                      if(_loc6_)
                                                      {
                                                         §§push(this.§ !k§);
                                                         if(!_loc5_)
                                                         {
                                                            §§push(this.§1"=§);
                                                            if(_loc6_ || param2)
                                                            {
                                                               addr144:
                                                               addr145:
                                                               §§push(§§pop() - §§pop());
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(this.§?!=§(param1));
                                                               }
                                                               §§pop().scaleY = §§pop() + §§pop();
                                                               if(param1 >= this.time + duration)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     addr164:
                                                                     §§push(false);
                                                                     if(_loc6_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr168:
                                                                     return true;
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr168);
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         §§goto(addr144);
                                                      }
                                                      §§goto(addr145);
                                                   }
                                                   §§goto(addr144);
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                          }
                                          §§goto(addr115);
                                       }
                                    }
                                    §§goto(addr144);
                                 }
                                 §§goto(addr164);
                              }
                           }
                           §§goto(addr144);
                        }
                        §§goto(addr168);
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr70);
               }
               §§goto(addr57);
            }
            §§goto(addr49);
         }
         §§goto(addr57);
      }
      
      private function §?!=§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            if(duration <= 0)
            {
               if(_loc4_ || this)
               {
                  §§goto(addr34);
               }
            }
            §§push(param1);
            if(!(_loc3_ && param1))
            {
               §§push(§§pop() - this.time);
               if(_loc4_)
               {
                  addr49:
                  §§push(§§pop() / duration);
                  if(_loc4_)
                  {
                     addr53:
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(_loc4_ || this)
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
                                    loop5:
                                    while(!(_loc3_ && _loc3_))
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
                                                if(!_loc3_)
                                                {
                                                   if(_loc3_ && param1)
                                                   {
                                                      break;
                                                   }
                                                   continue loop6;
                                                }
                                                loop9:
                                                while(!_loc3_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   _loc2_ = §§pop();
                                                   if(_loc3_ && param1)
                                                   {
                                                      if(!(_loc3_ && this))
                                                      {
                                                         continue loop7;
                                                      }
                                                      continue loop4;
                                                   }
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push((Math.pow(_loc2_,3) + 2) / 2);
                                                         if(_loc4_ || this)
                                                         {
                                                            addr79:
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               break;
                                                            }
                                                            addr121:
                                                            while(!(_loc3_ && _loc3_))
                                                            {
                                                               §§push(Number(§§pop()));
                                                               continue loop9;
                                                               §§goto(addr79);
                                                            }
                                                            continue loop2;
                                                         }
                                                         continue loop9;
                                                      }
                                                      return §§pop();
                                                      addr148:
                                                   }
                                                }
                                                continue loop5;
                                             }
                                             §§goto(addr166);
                                          }
                                          addr166:
                                          return §§pop();
                                       }
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr148);
               }
               §§goto(addr53);
            }
            §§goto(addr49);
         }
         addr34:
         return 1;
      }
      
      override public function clone() : §3'§
      {
         return new §#"G§(time,duration,this.§6K§,this.§1"=§,this.§ !k§);
      }
   }
}

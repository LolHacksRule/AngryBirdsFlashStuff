package §0R§
{
   import §1n§.§5#§;
   import §^V§.DisplayObject;
   import §^V§.Sprite;
   
   public class §2[§ extends §6! §
   {
       
      
      private var §9!+§:String = "";
      
      private var §>x§:Number = 1.0;
      
      private var § !6§:Number = 1.0;
      
      public function §2[§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param3)
         {
            super(param1,param2);
            while(true)
            {
               this.§9!+§ = param3;
               while(true)
               {
                  this.§>x§ = param4;
                  §§goto(addr73);
               }
            }
         }
         addr73:
         while(true)
         {
            this.§ !6§ = param5;
            if(_loc6_ || param2)
            {
               if(_loc6_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr68:
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5#§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:DisplayObject = null;
         if(!(_loc6_ && param3))
         {
            §§push(param1);
            if(!_loc6_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(_loc5_ || param1)
                  {
                     §§push(Number(this.time + duration));
                     if(_loc5_)
                     {
                        param1 = §§pop();
                        if(!(_loc6_ && param3))
                        {
                           addr56:
                           §§push(param1);
                           if(!(_loc6_ && param2))
                           {
                              addr64:
                              if(§§pop() > this.time)
                              {
                                 if(!_loc6_)
                                 {
                                    addr69:
                                    if(_loc4_ = param2.getChildByName(this.§9!+§))
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(_loc4_);
                                          §§push(this.§>x§);
                                          if(!(_loc6_ && this))
                                          {
                                             §§push(this.§ !6§);
                                             if(_loc5_)
                                             {
                                                §§push(this.§>x§);
                                                if(_loc5_ || this)
                                                {
                                                   addr119:
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc5_)
                                                   {
                                                      §§push(this.§"b§(param1));
                                                   }
                                                   §§pop().scaleX = §§pop() + §§pop();
                                                   if(_loc5_ || param2)
                                                   {
                                                      addr128:
                                                      §§push(_loc4_);
                                                      §§push(this.§>x§);
                                                      if(_loc5_)
                                                      {
                                                         §§push(this.§ !6§);
                                                         if(_loc5_)
                                                         {
                                                            §§push(this.§>x§);
                                                            if(_loc5_)
                                                            {
                                                               addr163:
                                                               addr164:
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc5_ || param2)
                                                               {
                                                                  §§push(this.§"b§(param1));
                                                               }
                                                               §§pop().scaleY = §§pop() + §§pop();
                                                               if(param1 >= this.time + duration)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr173:
                                                                     §§push(false);
                                                                     if(!_loc6_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr177:
                                                                     return true;
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr177);
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         §§goto(addr163);
                                                      }
                                                      §§goto(addr164);
                                                   }
                                                   §§goto(addr163);
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                          }
                                          §§goto(addr119);
                                       }
                                       §§goto(addr128);
                                    }
                                    §§goto(addr163);
                                 }
                                 §§goto(addr177);
                              }
                              §§goto(addr163);
                           }
                        }
                        §§goto(addr173);
                     }
                     §§goto(addr163);
                  }
                  §§goto(addr173);
               }
               §§goto(addr56);
            }
            §§goto(addr64);
         }
         §§goto(addr69);
      }
      
      private function §"b§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(duration <= 0)
            {
               if(!(_loc4_ && param1))
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
               §§push(§§pop() / duration);
               if(!(_loc4_ && param1))
               {
                  addr52:
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(!_loc4_)
               {
                  §§push(_loc2_);
                  §§push(2);
                  loop0:
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     loop1:
                     while(true)
                     {
                        _loc2_ = Number(§§pop());
                        loop2:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(!(_loc3_ || this))
                           {
                              break;
                           }
                           §§push(1);
                           while(_loc3_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(_loc3_)
                                    {
                                       §§push(2);
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       §§push(Number(§§pop() - §§pop()));
                                    }
                                    loop5:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       if(!_loc4_)
                                       {
                                          while(true)
                                          {
                                             §§push((Math.pow(_loc2_,3) + 2) / 2);
                                             if(_loc3_)
                                             {
                                                if(_loc3_ || param1)
                                                {
                                                   break;
                                                }
                                                continue loop1;
                                             }
                                             continue loop5;
                                          }
                                          return §§pop();
                                          addr102:
                                       }
                                    }
                                 }
                                 continue;
                              }
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(Math.pow(_loc2_,3) / 2);
                                 break loop2;
                              }
                              continue loop2;
                           }
                           continue loop0;
                        }
                        return §§pop();
                     }
                  }
               }
               §§goto(addr102);
            }
         }
         §§goto(addr52);
      }
      
      override public function clone() : §6! §
      {
         return new §2[§(time,duration,this.§9!+§,this.§>x§,this.§ !6§);
      }
   }
}

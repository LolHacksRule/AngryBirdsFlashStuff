package §9!7§
{
   import §,_§.DisplayObject;
   import §,_§.Sprite;
   import §5`§.§?y§;
   
   public class §3j§ extends §`E§
   {
       
      
      private var §^P§:String = "";
      
      private var §"c§:Number = 1.0;
      
      private var §2M§:Number = 1.0;
      
      public function §3j§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            super(param1,param2);
            if(!(_loc7_ && this))
            {
               this.§^P§ = param3;
               if(!_loc7_)
               {
                  this.§"c§ = param4;
                  if(_loc6_)
                  {
                     addr54:
                     this.§2M§ = param5;
                  }
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§?y§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:DisplayObject = null;
         if(_loc6_)
         {
            §§push(param1);
            if(_loc6_ || param1)
            {
               if(§§pop() > this.time + duration)
               {
                  if(_loc6_)
                  {
                     addr37:
                     §§push(Number(this.time + duration));
                     if(!(_loc5_ && param1))
                     {
                        param1 = §§pop();
                        if(_loc6_)
                        {
                           addr52:
                           §§push(param1);
                           if(!(_loc5_ && this))
                           {
                              addr60:
                              if(§§pop() > this.time)
                              {
                                 if(!_loc5_)
                                 {
                                    if(_loc4_ = param2.getChildByName(this.§^P§))
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          §§push(_loc4_);
                                          §§push(this.§"c§);
                                          if(!(_loc5_ && this))
                                          {
                                             §§push(this.§2M§);
                                             if(_loc6_ || param1)
                                             {
                                                §§push(this.§"c§);
                                                if(!(_loc5_ && param2))
                                                {
                                                   addr125:
                                                   §§push(§§pop() - §§pop());
                                                   if(!_loc5_)
                                                   {
                                                      §§push(this.§9!;§(param1));
                                                   }
                                                   §§pop().scaleX = §§pop() + §§pop();
                                                   if(_loc6_ || param1)
                                                   {
                                                      addr134:
                                                      §§push(_loc4_);
                                                      §§push(this.§"c§);
                                                      if(_loc6_)
                                                      {
                                                         §§push(this.§2M§);
                                                         if(!_loc5_)
                                                         {
                                                            §§push(this.§"c§);
                                                            if(_loc6_)
                                                            {
                                                               addr165:
                                                               §§push(§§pop() - §§pop());
                                                               if(!_loc5_)
                                                               {
                                                                  addr163:
                                                                  §§push(§§pop() * this.§9!;§(param1));
                                                               }
                                                               §§pop().scaleY = §§pop() + §§pop();
                                                               if(param1 >= this.time + duration)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     addr174:
                                                                     §§push(false);
                                                                     if(!(_loc5_ && param3))
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr183:
                                                                     §§push(true);
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr183);
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
                                          §§goto(addr125);
                                       }
                                       §§goto(addr134);
                                    }
                                 }
                                 §§goto(addr183);
                              }
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr183);
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr174);
               }
               §§goto(addr52);
            }
            §§goto(addr60);
         }
         §§goto(addr37);
      }
      
      private function §9!;§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            if(duration <= 0)
            {
               if(!_loc3_)
               {
                  §§goto(addr29);
               }
            }
            §§push(param1);
            if(_loc4_ || this)
            {
               §§push(§§pop() - this.time);
               if(!_loc3_)
               {
                  addr44:
                  §§push(§§pop() / duration);
                  if(_loc4_ || _loc2_)
                  {
                     addr53:
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(_loc4_ || this)
                  {
                     §§push(_loc2_);
                     if(_loc4_ || this)
                     {
                        §§push(2);
                        if(!(_loc3_ && _loc3_))
                        {
                           _loc2_ = Number(§§pop() * §§pop());
                           if(!_loc3_)
                           {
                              addr93:
                              §§push(_loc2_);
                              if(!(_loc3_ && param1))
                              {
                                 addr101:
                                 §§push(1);
                                 if(!_loc3_)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if(_loc4_ || _loc2_)
                                       {
                                          addr122:
                                          §§push(Math.pow(_loc2_,3) / 2);
                                          if(_loc4_)
                                          {
                                             return §§pop();
                                          }
                                          addr136:
                                          §§push(Number(§§pop()));
                                          if(!_loc3_)
                                          {
                                             _loc2_ = §§pop();
                                          }
                                          §§goto(addr148);
                                       }
                                       addr148:
                                       return §§pop();
                                       §§push((Math.pow(_loc2_,3) + 2) / 2);
                                    }
                                    else
                                    {
                                       addr135:
                                       §§push(_loc2_ - 2);
                                    }
                                    §§goto(addr136);
                                 }
                                 §§goto(addr135);
                              }
                              §§goto(addr136);
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr93);
               }
               §§goto(addr53);
            }
            §§goto(addr44);
         }
         addr29:
         return 1;
      }
      
      override public function clone() : §`E§
      {
         return new §3j§(time,duration,this.§^P§,this.§"c§,this.§2M§);
      }
   }
}

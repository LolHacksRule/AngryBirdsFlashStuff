package §&p§
{
   import §&o§.DisplayObject;
   import §&o§.Sprite;
   import §9K§.§5!H§;
   
   public class §%!#§ extends §,K§
   {
       
      
      private var §3-§:String = "";
      
      private var §+!<§:Number = 1.0;
      
      private var §'!7§:Number = 1.0;
      
      public function §%!#§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super(param1,param2);
            if(_loc7_)
            {
               this.§3-§ = param3;
               if(!_loc6_)
               {
                  this.§+!<§ = param4;
                  if(!(_loc6_ && param2))
                  {
                     addr50:
                     this.§'!7§ = param5;
                  }
                  return;
               }
            }
         }
         §§goto(addr50);
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5!H§) : Boolean
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
                     if(_loc6_)
                     {
                        param1 = §§pop();
                        if(_loc6_ || param2)
                        {
                           addr52:
                           §§push(param1);
                           if(!_loc5_)
                           {
                              addr55:
                              if(§§pop() > this.time)
                              {
                                 if(!_loc5_)
                                 {
                                    if(_loc4_ = param2.getChildByName(this.§3-§))
                                    {
                                       if(_loc6_)
                                       {
                                          §§push(_loc4_);
                                          §§push(this.§+!<§);
                                          if(!(_loc5_ && param1))
                                          {
                                             §§push(this.§'!7§);
                                             if(_loc6_ || param1)
                                             {
                                                §§push(this.§+!<§);
                                                if(!_loc5_)
                                                {
                                                   addr115:
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc6_ || param3)
                                                   {
                                                      §§push(this.§4H§(param1));
                                                   }
                                                   §§pop().scaleX = §§pop() + §§pop();
                                                   if(_loc6_ || this)
                                                   {
                                                      addr124:
                                                      §§push(_loc4_);
                                                      §§push(this.§+!<§);
                                                      if(_loc6_)
                                                      {
                                                         §§push(this.§'!7§);
                                                         if(_loc6_)
                                                         {
                                                            §§push(this.§+!<§);
                                                            if(_loc6_ || param1)
                                                            {
                                                               addr160:
                                                               §§push(§§pop() - §§pop());
                                                               if(!_loc5_)
                                                               {
                                                                  addr158:
                                                                  §§push(§§pop() * this.§4H§(param1));
                                                               }
                                                               §§pop().scaleY = §§pop() + §§pop();
                                                               if(param1 >= this.time + duration)
                                                               {
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     addr174:
                                                                     §§push(false);
                                                                     if(!(_loc5_ && param2))
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
                                                         §§goto(addr158);
                                                      }
                                                   }
                                                   §§goto(addr160);
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                          }
                                          §§goto(addr115);
                                       }
                                       §§goto(addr124);
                                    }
                                 }
                                 §§goto(addr183);
                              }
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr174);
                     }
                     §§goto(addr160);
                  }
               }
               §§goto(addr52);
            }
            §§goto(addr55);
         }
         §§goto(addr183);
      }
      
      private function §4H§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
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
         if(_loc3_ || param1)
         {
            §§push(§§pop() - this.time);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() / duration);
               if(!_loc3_)
               {
               }
               §§goto(addr53);
            }
            §§push(Number(§§pop()));
         }
         addr53:
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_);
            §§push(2);
            if(_loc3_ || _loc2_)
            {
               §§push(Number(§§pop() * §§pop()));
               if(!_loc4_)
               {
                  _loc2_ = §§pop();
                  if(!(_loc4_ && this))
                  {
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        §§push(1);
                        if(!(_loc4_ && _loc2_))
                        {
                           if(§§pop() < §§pop())
                           {
                              §§goto(addr141);
                           }
                           else
                           {
                              §§push(_loc2_);
                              if(_loc3_)
                              {
                                 addr136:
                                 §§push(§§pop() - 2);
                                 if(_loc3_)
                                 {
                                    §§goto(addr139);
                                 }
                              }
                           }
                           _loc2_ = §§pop();
                           §§goto(addr141);
                        }
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr141);
               }
               §§goto(addr139);
            }
            §§goto(addr136);
         }
         addr141:
         if(!(_loc4_ && _loc2_))
         {
            §§push(Math.pow(_loc2_,3) / 2);
            if(_loc3_)
            {
               return §§pop();
            }
            addr139:
            §§push(Number(§§pop()));
         }
         return (Math.pow(_loc2_,3) + 2) / 2;
      }
      
      override public function clone() : §,K§
      {
         return new §%!#§(time,duration,this.§3-§,this.§+!<§,this.§'!7§);
      }
   }
}

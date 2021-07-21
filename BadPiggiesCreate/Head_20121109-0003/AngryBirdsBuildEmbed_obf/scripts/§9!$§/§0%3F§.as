package §9!$§
{
   import §-!`§.DisplayObject;
   import §-!`§.Sprite;
   import §=U§.§3p§;
   
   public class §0?§ extends §&!W§
   {
       
      
      private var §'!E§:String = "";
      
      private var §^§:Number = 1.0;
      
      private var §@U§:Number = 1.0;
      
      public function §0?§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super(param1,param2);
            if(_loc6_)
            {
               addr34:
               this.§'!E§ = param3;
               if(_loc6_ || this)
               {
                  this.§^§ = param4;
                  if(_loc7_)
                  {
                  }
                  §§goto(addr52);
               }
               this.§@U§ = param5;
            }
            addr52:
            return;
         }
         §§goto(addr34);
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§3p§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:DisplayObject = null;
         if(_loc5_)
         {
            §§push(param1);
            if(_loc5_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(!_loc6_)
                  {
                     addr31:
                     §§push(Number(this.time + duration));
                     if(_loc5_ || param3)
                     {
                        param1 = §§pop();
                        if(!_loc6_)
                        {
                           addr46:
                           §§push(param1);
                           if(_loc5_)
                           {
                              addr49:
                              if(§§pop() > this.time)
                              {
                                 if(!_loc6_)
                                 {
                                    if(_loc4_ = param2.getChildByName(this.§'!E§))
                                    {
                                       if(!(_loc6_ && param2))
                                       {
                                          §§push(_loc4_);
                                          §§push(this.§^§);
                                          if(_loc5_)
                                          {
                                             §§push(this.§@U§);
                                             if(_loc5_)
                                             {
                                                §§push(this.§^§);
                                                if(_loc5_ || param1)
                                                {
                                                   addr110:
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc5_ || param1)
                                                   {
                                                      addr108:
                                                      §§push(§§pop() * this.§-!r§(param1));
                                                   }
                                                   §§pop().scaleX = §§pop() + §§pop();
                                                   if(_loc5_)
                                                   {
                                                      addr113:
                                                      §§push(_loc4_);
                                                      §§push(this.§^§);
                                                      if(!_loc6_)
                                                      {
                                                         §§push(this.§@U§);
                                                         if(_loc5_ || param3)
                                                         {
                                                            §§push(this.§^§);
                                                            if(!(_loc6_ && this))
                                                            {
                                                               addr159:
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc5_ || param3)
                                                               {
                                                                  addr157:
                                                                  §§push(§§pop() * this.§-!r§(param1));
                                                               }
                                                               §§pop().scaleY = §§pop() + §§pop();
                                                               if(param1 >= this.time + duration)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr168:
                                                                     §§push(false);
                                                                     if(!_loc6_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr172:
                                                                     §§push(true);
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr172);
                                                            }
                                                         }
                                                         §§goto(addr157);
                                                      }
                                                   }
                                                   §§goto(addr159);
                                                }
                                             }
                                             §§goto(addr108);
                                          }
                                          §§goto(addr110);
                                       }
                                       §§goto(addr113);
                                    }
                                 }
                                 §§goto(addr168);
                              }
                           }
                           §§goto(addr159);
                        }
                        §§goto(addr168);
                     }
                     §§goto(addr159);
                  }
                  §§goto(addr172);
               }
               §§goto(addr46);
            }
            §§goto(addr49);
         }
         §§goto(addr31);
      }
      
      private function §-!r§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(duration <= 0)
            {
               if(_loc4_ || _loc3_)
               {
                  §§goto(addr29);
               }
            }
            §§push(param1);
            if(!(_loc3_ && this))
            {
               §§push(§§pop() - this.time);
               if(_loc4_ || this)
               {
                  §§push(§§pop() / duration);
                  if(!_loc3_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            var _loc2_:* = §§pop();
            if(_loc4_)
            {
               §§push(_loc2_);
               §§push(2);
               if(_loc4_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc3_ && this))
                  {
                     §§push(Number(§§pop()));
                     if(_loc4_ || this)
                     {
                        _loc2_ = §§pop();
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(_loc2_);
                           if(!_loc3_)
                           {
                              §§push(1);
                              if(_loc4_ || _loc2_)
                              {
                                 §§goto(addr106);
                              }
                              §§push(§§pop() - §§pop());
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr150:
                                 §§goto(addr151);
                                 §§push(Number(§§pop()));
                              }
                           }
                           §§goto(addr151);
                        }
                        §§goto(addr109);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr151);
               }
               addr106:
               if(§§pop() < §§pop())
               {
                  if(_loc4_)
                  {
                     addr109:
                     return Math.pow(_loc2_,3) / 2;
                  }
                  §§goto(addr152);
               }
               else
               {
                  addr151:
                  §§push(_loc2_);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(2);
                  }
                  _loc2_ = §§pop();
                  §§goto(addr152);
               }
               §§goto(addr152);
            }
            addr152:
            return (Math.pow(_loc2_,3) + 2) / 2;
         }
         addr29:
         return 1;
      }
      
      override public function clone() : §&!W§
      {
         return new §0?§(time,duration,this.§'!E§,this.§^§,this.§@U§);
      }
   }
}

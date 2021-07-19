package §]">§
{
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §'4§.§-T§;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import §9t§.b2Vec2;
   
   public class §29§ extends § 6§
   {
       
      
      private var §]!#§:Number = 0;
      
      public function §29§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!(_loc10_ && param3))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
      }
      
      override public function get launchForce() : Number
      {
         return §-T§.§@!z§;
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc7_)
         {
            super.update(param1,param2);
            loop0:
            while(true)
            {
               §§push(this.§]!#§);
               if(_loc7_)
               {
                  §§push(0);
                  loop1:
                  while(true)
                  {
                     §§push(§§pop() == §§pop());
                     loop2:
                     while(true)
                     {
                        §§push(!§§pop());
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr253:
                                 while(true)
                                 {
                                    §§push(health < healthMax);
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    if(!_loc7_)
                                    {
                                       continue loop3;
                                    }
                                    if(!_loc7_)
                                    {
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    this.§]!#§ = 0;
                                 }
                                 while(true)
                                 {
                                 }
                                 addr241:
                              }
                              loop8:
                              while(true)
                              {
                                 §§push(this.§]!#§);
                                 if(_loc7_ || param2)
                                 {
                                    §§push(0);
                                    if(!(_loc6_ && this))
                                    {
                                       if(!_loc7_)
                                       {
                                          break;
                                       }
                                       if(§§pop() != §§pop())
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             §§push(Number(§^!z§().GetLinearVelocity().x));
                                             if(!(_loc6_ && param1))
                                             {
                                                _loc4_ = §§pop();
                                                loop10:
                                                for(; !_loc6_; while(true)
                                                {
                                                   if(!(_loc7_ || param2))
                                                   {
                                                      continue loop10;
                                                   }
                                                   §§goto(addr259);
                                                })
                                                {
                                                   §§push(Number(§^!z§().GetLinearVelocity().y));
                                                   if(!_loc6_)
                                                   {
                                                      _loc5_ = §§pop();
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(this.§]!#§);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(_loc4_);
                                                            loop12:
                                                            while(true)
                                                            {
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  §§push(this.§]!#§);
                                                                  if(_loc7_ || param2)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     loop13:
                                                                     while(§§pop() > §§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §^!z§().SetLinearVelocity(new b2Vec2(_loc4_ + param1 / 10,_loc5_));
                                                                           addr109:
                                                                           while(!(_loc6_ && param2))
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        §§push(_loc4_);
                                                                        if(!(_loc7_ || param2))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           if(§§pop() <= §§pop())
                                                                           {
                                                                              if(_loc7_ || this)
                                                                              {
                                                                                 if(_loc7_ || this)
                                                                                 {
                                                                                    if(_loc7_ || this)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             this.§]!#§ = 0;
                                                                                             addr76:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                         }
                                                                                                         break loop13;
                                                                                                      }
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   §§goto(addr151);
                                                                                                   §§goto(addr84);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr98);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr73:
                                                                                       }
                                                                                       §§goto(addr162);
                                                                                    }
                                                                                    §§goto(addr133);
                                                                                 }
                                                                                 §§goto(addr109);
                                                                              }
                                                                              §§goto(addr76);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr130);
                                                                     }
                                                                     §§goto(addr259);
                                                                  }
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  §^!z§().SetLinearVelocity(new b2Vec2(_loc4_ - param1 / 10,_loc5_));
                                                                  addr162:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     §§push(this.§]!#§);
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        while(true)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           if(§§pop() < §§pop())
                                                                           {
                                                                              break;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              this.§]!#§ = 0;
                                                                              continue loop10;
                                                                           }
                                                                        }
                                                                        addr259:
                                                                        §§push(param1);
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           break loop12;
                                                                        }
                                                                        break loop9;
                                                                        addr84:
                                                                        addr130:
                                                                     }
                                                                     §§push(2);
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        addr311:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc7_)
                                                                        {
                                                                           break loop9;
                                                                        }
                                                                        addr324:
                                                                        var _loc3_:Number = §§pop();
                                                                        §§goto(addr323);
                                                                     }
                                                                     §§push(§§pop() / §§pop());
                                                                     if(!(_loc6_ && param2))
                                                                     {
                                                                        addr323:
                                                                        if(_loc7_ || param2)
                                                                        {
                                                                           §^e§(§+!c§() - _loc3_);
                                                                        }
                                                                        return;
                                                                     }
                                                                     §§goto(addr324);
                                                                  }
                                                               }
                                                               addr151:
                                                               §§goto(addr259);
                                                            }
                                                         }
                                                         if(specialPowerUsed)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               addr271:
                                                               §§push(2 * (!(_loc6_ && param1) ? §§pop() : §§pop()));
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  addr298:
                                                                  §§push(§§pop() * Math.PI);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§goto(addr303);
                                                                  }
                                                                  §§goto(addr324);
                                                               }
                                                               §§goto(addr303);
                                                            }
                                                            §§goto(addr324);
                                                         }
                                                         else
                                                         {
                                                            §§push(1);
                                                            if(_loc7_ || param1)
                                                            {
                                                               §§goto(addr289);
                                                            }
                                                         }
                                                         §§goto(addr311);
                                                      }
                                                   }
                                                   §§goto(addr271);
                                                }
                                                §§goto(addr253);
                                             }
                                             break;
                                          }
                                          §§goto(addr303);
                                          §§push(1000);
                                       }
                                       §§goto(addr259);
                                    }
                                    §§goto(addr289);
                                 }
                                 §§goto(addr298);
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               §§goto(addr303);
            }
         }
         §§goto(addr73);
      }
      
      override public function activateSpecialPower(param1:§;U§, param2:Number, param3:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            §§push(super.activateSpecialPower(param1,param2,param3));
            if(!(_loc5_ && param2))
            {
               if(!§§pop())
               {
                  if(_loc6_)
                  {
                     §§push(false);
                  }
                  else
                  {
                     §§goto(addr51);
                  }
               }
               §§goto(addr51);
            }
            return §§pop();
         }
         addr51:
         var _loc4_:Number;
         if((_loc4_ = §^!z§().GetLinearVelocity().x) != 0)
         {
            if(_loc6_)
            {
               §§push(this);
               §§push(_loc4_);
               if(!_loc5_)
               {
                  §§push(-§§pop());
                  if(_loc6_)
                  {
                     addr79:
                     §§push(§§pop() * 1.5);
                  }
                  §§pop().§]!#§ = §§pop();
                  §§goto(addr82);
               }
               §§goto(addr79);
            }
         }
         addr82:
         return true;
      }
   }
}

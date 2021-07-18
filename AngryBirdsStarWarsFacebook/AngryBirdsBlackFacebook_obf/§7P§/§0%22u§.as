package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §[R§.b2Vec2;
   import §^#>§.§`"]§;
   
   public class §0"u§ extends §?"N§
   {
       
      
      private var §[#4§:Number = 0;
      
      public function §0"u§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || this)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      override public function get launchForce() : Number
      {
         return §`"]§.§6#a§;
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         if(_loc7_ || this)
         {
            super.update(param1,param2);
            loop0:
            while(true)
            {
               §§push(this.§[#4§);
               loop1:
               while(true)
               {
                  §§push(0);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() == §§pop());
                     loop3:
                     while(true)
                     {
                        §§push(!§§pop());
                        if(_loc7_)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr363:
                                 while(true)
                                 {
                                    §§push(health < healthMax);
                                    if(_loc6_ && param1)
                                    {
                                       continue;
                                    }
                                    if(!(_loc7_ || param1))
                                    {
                                       continue loop3;
                                    }
                                 }
                              }
                              addr362:
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc7_)
                                 {
                                    this.§[#4§ = 0;
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    loop28:
                                    while(true)
                                    {
                                       if(_loc6_ && this)
                                       {
                                          continue loop5;
                                       }
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       §3!t§().SetLinearVelocity(new b2Vec2(_loc3_ - param1 / 10,_loc4_));
                                       loop29:
                                       while(true)
                                       {
                                          §§push(this.§[#4§);
                                          loop27:
                                          while(!_loc6_)
                                          {
                                             addr248:
                                             §§push(_loc3_);
                                             loop23:
                                             while(true)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   while(true)
                                                   {
                                                      this.§[#4§ = 0;
                                                      addr253:
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                   addr250:
                                                }
                                                while(true)
                                                {
                                                   addr50:
                                                   loop30:
                                                   while(true)
                                                   {
                                                      if(health == healthMax)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               continue loop28;
                                                            }
                                                            addr58:
                                                            if(_loc7_ || param1)
                                                            {
                                                               §§push(param1);
                                                               if(_loc7_)
                                                               {
                                                                  if(specialPowerUsed)
                                                                  {
                                                                     if(_loc7_ || _loc3_)
                                                                     {
                                                                        addr77:
                                                                        §§push(2);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(§§pop());
                                                                        }
                                                                        else
                                                                        {
                                                                           addr85:
                                                                           if(_loc6_ && _loc3_)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           §§push(§§pop());
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc7_)
                                                                        {
                                                                           if(_loc7_ || param2)
                                                                           {
                                                                              §§push(§§pop() * Math.PI);
                                                                              if(_loc7_ || param2)
                                                                              {
                                                                                 addr113:
                                                                                 if(_loc7_ || _loc3_)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§push(2);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc7_ || param1)
                                                                                          {
                                                                                             addr134:
                                                                                             §§push(1000);
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§push(§§pop() / §§pop());
                                                                                                if(_loc7_ || this)
                                                                                                {
                                                                                                   addr145:
                                                                                                   _loc5_ = §§pop();
                                                                                                   loop31:
                                                                                                   for(; !_loc6_; §6#<§(§"#,§() + _loc5_),if(_loc7_ || param1)
                                                                                                   {
                                                                                                      §§goto(addr31);
                                                                                                   })
                                                                                                   {
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         if(!(_loc6_ && _loc3_))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         continue loop29;
                                                                                                      }
                                                                                                      loop21:
                                                                                                      while(_loc7_)
                                                                                                      {
                                                                                                         addr186:
                                                                                                         if(_loc7_ || param2)
                                                                                                         {
                                                                                                            this.§[#4§ = 0;
                                                                                                            break loop31;
                                                                                                         }
                                                                                                         addr309:
                                                                                                         addr213:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc7_ || param1)
                                                                                                            {
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  §3!t§().SetLinearVelocity(new b2Vec2(_loc3_ + param1 / 10,_loc4_));
                                                                                                                  break loop21;
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr253);
                                                                                                            §§goto(addr186);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§3!t§().GetLinearVelocity().x));
                                                                                                            addr314:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc3_ = §§pop();
                                                                                                               addr315:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§3!t§().GetLinearVelocity().y));
                                                                                                                  addr293:
                                                                                                                  addr307:
                                                                                                                  while(!(_loc6_ && this))
                                                                                                                  {
                                                                                                                     _loc4_ = §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           §§push(this.§[#4§);
                                                                                                                           break loop27;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                        §§goto(addr58);
                                                                                                                     }
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     break loop30;
                                                                                                                     §§goto(addr293);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc7_ || _loc3_)
                                                                                                         {
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               addr161:
                                                                                                               §§push(this.§[#4§);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc7_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§push(_loc3_);
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           continue loop23;
                                                                                                                        }
                                                                                                                        if(§§pop() > §§pop())
                                                                                                                        {
                                                                                                                           continue loop30;
                                                                                                                        }
                                                                                                                        §§goto(addr184);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(_loc7_)
                                                                                                                        {
                                                                                                                           if(§§pop() <= §§pop())
                                                                                                                           {
                                                                                                                              continue loop30;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop() >= §§pop())
                                                                                                                           {
                                                                                                                              §§push(this.§[#4§);
                                                                                                                           }
                                                                                                                           continue loop28;
                                                                                                                        }
                                                                                                                        addr210:
                                                                                                                        addr265:
                                                                                                                     }
                                                                                                                     §§goto(addr213);
                                                                                                                  }
                                                                                                                  break;
                                                                                                                  §§goto(addr113);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc6_ && _loc3_)
                                                                                                                  {
                                                                                                                     continue loop27;
                                                                                                                  }
                                                                                                                  §§goto(addr210);
                                                                                                                  §§push(_loc3_);
                                                                                                                  §§goto(addr161);
                                                                                                               }
                                                                                                               addr161:
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr250);
                                                                                                         §§goto(addr253);
                                                                                                      }
                                                                                                      addr184:
                                                                                                      §§goto(addr315);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop30;
                                                                                                   }
                                                                                                   addr146:
                                                                                                }
                                                                                                §§goto(addr145);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr145);
                                                                                       }
                                                                                       §§goto(addr134);
                                                                                    }
                                                                                    §§goto(addr293);
                                                                                 }
                                                                                 §§goto(addr161);
                                                                              }
                                                                              §§goto(addr145);
                                                                           }
                                                                           §§goto(addr314);
                                                                        }
                                                                        §§goto(addr113);
                                                                     }
                                                                     §§goto(addr145);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(1);
                                                                     if(_loc7_)
                                                                     {
                                                                        §§goto(addr85);
                                                                     }
                                                                  }
                                                                  §§goto(addr134);
                                                               }
                                                               §§goto(addr77);
                                                            }
                                                            §§goto(addr301);
                                                         }
                                                         §§goto(addr146);
                                                      }
                                                      addr31:
                                                      return;
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         §§goto(addr50);
                                                      }
                                                      §§goto(addr309);
                                                   }
                                                }
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                    §§goto(addr363);
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr307);
                              }
                              §§goto(addr327);
                           }
                        }
                        §§goto(addr362);
                     }
                  }
               }
            }
         }
         §§goto(addr363);
      }
      
      override public function activateSpecialPower(param1:§;$§, param2:Number, param3:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            §§push(super.activateSpecialPower(param1,param2,param3));
            if(!(_loc5_ && param3))
            {
               if(!§§pop())
               {
                  if(!_loc5_)
                  {
                     §§goto(addr50);
                  }
               }
               var _loc4_:Number;
               if((_loc4_ = §3!t§().GetLinearVelocity().x) != 0)
               {
                  if(!(_loc5_ && param3))
                  {
                     §§push(this);
                     §§push(_loc4_);
                     if(_loc6_)
                     {
                        §§push(-§§pop());
                        if(!_loc5_)
                        {
                           addr84:
                           §§push(§§pop() * 1.5);
                        }
                        §§pop().§[#4§ = §§pop();
                        §§goto(addr87);
                     }
                     §§goto(addr84);
                  }
               }
               addr87:
               return true;
            }
            §§goto(addr50);
         }
         addr50:
         return false;
      }
   }
}

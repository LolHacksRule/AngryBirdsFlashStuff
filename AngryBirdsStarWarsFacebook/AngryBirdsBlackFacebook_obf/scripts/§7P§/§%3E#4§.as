package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §>#4§ extends §?"N§
   {
      
      private static const §="t§:int = 2000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §="t§ = 2000;
         }
      }
      
      private var §6#D§:Number = -1;
      
      private var §%!k§:Number = -1;
      
      private var §["W§:Boolean = false;
      
      public function §>#4§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param2))
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(super.specialPowerUsed);
            if(!_loc1_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc1_)
               {
                  addr41:
                  if(!§§pop())
                  {
                     if(_loc2_)
                     {
                        §§pop();
                        addr56:
                        §§push(this.§["W§);
                        if(_loc2_)
                        {
                           return Boolean(§§pop());
                        }
                     }
                  }
               }
            }
            §§goto(addr41);
         }
         §§goto(addr56);
      }
      
      override public function activateSpecialPower(param1:§;$§, param2:Number, param3:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(§8!_§)
            {
               if(_loc4_)
               {
                  §§push(super.activateSpecialPower(param1,param2,param3));
                  loop0:
                  while(§§pop())
                  {
                     while(true)
                     {
                        this.§#g§(0,param1);
                        if(_loc4_ || param1)
                        {
                           if(!_loc4_)
                           {
                              break loop0;
                           }
                           §§push(true);
                           if(!(_loc4_ || param3))
                           {
                              return §§pop();
                           }
                           addr79:
                           if(!_loc5_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                     return §§pop();
                  }
                  addr78:
                  §§goto(addr79);
                  §§push(false);
               }
               while(true)
               {
                  §§goto(addr43);
               }
            }
            §§goto(addr43);
         }
         §§goto(addr78);
      }
      
      override public function applyDamage(param1:Number, param2:§;$§, param3:§&#=§, param4:Boolean = true) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(super.applyDamage(param1,param2,param3,param4));
         if(!(_loc6_ && param2))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc7_ || this)
         {
            if(!this.specialPowerUsed)
            {
               if(_loc7_)
               {
                  addr64:
                  this.§#g§(§="t§,param2);
               }
            }
            return _loc5_;
         }
         §§goto(addr64);
      }
      
      protected function §#g§(param1:Number, param2:§;$§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc3_)
                  {
                     §§push(!§§pop());
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           loop14:
                           while(true)
                           {
                              §§pop();
                              addr177:
                              loop8:
                              while(true)
                              {
                                 addr140:
                                 while(true)
                                 {
                                    §§push(this.§%!k§);
                                    addr143:
                                    while(true)
                                    {
                                       §§push(0);
                                       addr144:
                                       while(true)
                                       {
                                          §§push(§§pop() > §§pop());
                                          if(!(_loc3_ && param1))
                                          {
                                             break loop8;
                                          }
                                          continue loop14;
                                       }
                                    }
                                    continue loop8;
                                 }
                              }
                           }
                           addr176:
                        }
                        loop2:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 this.§6#D§ = 0;
                                 loop4:
                                 while(true)
                                 {
                                    §§push(param1);
                                    loop5:
                                    for(; !(_loc3_ && param1); §§push(param1),if(_loc3_ && param2)
                                    {
                                       continue;
                                    },§§goto(addr65))
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(0);
                                       loop6:
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                break;
                                             }
                                             continue loop5;
                                          }
                                          §§push(0);
                                          addr65:
                                          continue loop1;
                                          if(_loc3_ && param2)
                                          {
                                             continue;
                                          }
                                          if(_loc3_)
                                          {
                                             continue loop2;
                                          }
                                          if(§§pop() <= §§pop())
                                          {
                                             this.§%!k§ = §="t§;
                                             if(!_loc3_)
                                             {
                                                if(_loc4_)
                                                {
                                                   if(_loc4_ || this)
                                                   {
                                                      if(!(_loc3_ && param2))
                                                      {
                                                         break loop4;
                                                      }
                                                      continue loop4;
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         §§goto(addr25);
                                                      }
                                                      break loop6;
                                                      addr134:
                                                      this.update(0,param2);
                                                   }
                                                }
                                                else
                                                {
                                                   addr76:
                                                   if(!(_loc3_ && this))
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         this.§%!k§ = param1;
                                                         break loop3;
                                                      }
                                                      addr155:
                                                      while(true)
                                                      {
                                                         continue loop3;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            §§goto(addr134);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr177);
                                                         }
                                                      }
                                                      addr132:
                                                   }
                                                }
                                                §§goto(addr177);
                                             }
                                             break loop3;
                                          }
                                          §§goto(addr76);
                                       }
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             §§goto(addr154);
                                          }
                                          this.§%!k§ = 0;
                                          §§goto(addr132);
                                       }
                                       §§goto(addr140);
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr25);
                              }
                              addr25:
                              return;
                           }
                           addr154:
                           return;
                        }
                     }
                  }
                  §§goto(addr176);
               }
            }
         }
         §§goto(addr155);
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.update(param1,param2);
            loop0:
            while(true)
            {
               §§push(this.§6#D§);
               while(true)
               {
                  if(§§pop() < 0)
                  {
                     return;
                  }
                  addr20:
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(this);
                     §§push(this.§6#D§);
                     if(!_loc3_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§6#D§ = §§pop();
                  }
                  while(true)
                  {
                     §§push(this.§6#D§);
                     if(!(_loc4_ || _loc3_))
                     {
                        break;
                     }
                     if(§§pop() >= this.§%!k§)
                     {
                        loop3:
                        while(true)
                        {
                           this.§["W§ = true;
                           addr97:
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 this.§6#D§ = -1;
                                 continue loop3;
                              }
                              continue loop0;
                           }
                        }
                        addr94:
                     }
                     else
                     {
                        §§goto(addr20);
                     }
                     if(!(_loc4_ || param1))
                     {
                        continue;
                     }
                     §§goto(addr20);
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.specialPowerUsed);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§6#D§);
                           loop4:
                           while(true)
                           {
                              §§push(0);
                              addr97:
                              while(true)
                              {
                                 §§push(§§pop() < §§pop());
                              }
                              loop9:
                              while(true)
                              {
                                 §§push(this.§6#D§);
                                 if(_loc2_ && _loc3_)
                                 {
                                    continue loop4;
                                 }
                                 §§push(0);
                                 if(_loc3_ || _loc2_)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       if(_loc3_ || param1)
                                       {
                                          §§push(false);
                                       }
                                       else
                                       {
                                          addr85:
                                          if(_loc3_ || _loc2_)
                                          {
                                             while(true)
                                             {
                                                addr20:
                                                while(true)
                                                {
                                                   §§push(super.isReadyToBeRemoved(param1));
                                                   if(_loc2_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(!(_loc2_ && param1))
                                                            {
                                                               break;
                                                            }
                                                            continue loop1;
                                                         }
                                                         continue loop2;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr75:
                                                   }
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      addr33:
                                                      if(!_loc3_)
                                                      {
                                                         addr99:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               continue loop9;
                                                            }
                                                            if(_loc3_ || this)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  §§push(true);
                                                                  continue loop0;
                                                               }
                                                               continue loop3;
                                                            }
                                                            addr128:
                                                            while(true)
                                                            {
                                                               continue loop9;
                                                               §§goto(addr85);
                                                            }
                                                            §§goto(addr33);
                                                         }
                                                         addr99:
                                                      }
                                                      return §§pop();
                                                   }
                                                   continue loop0;
                                                   return §§pop();
                                                }
                                             }
                                             addr92:
                                          }
                                          §§goto(addr128);
                                       }
                                       §§goto(addr75);
                                    }
                                    §§goto(addr20);
                                 }
                                 else
                                 {
                                    §§goto(addr97);
                                 }
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr99);
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§6#D§);
            if(_loc1_)
            {
               if(§§pop() > 0)
               {
                  if(_loc1_)
                  {
                     addr41:
                     §§push(this.§6#D§);
                     if(_loc2_ && this)
                     {
                     }
                     §§goto(addr63);
                  }
               }
               return -1;
            }
            addr63:
            return §§pop() / this.§%!k§;
         }
         §§goto(addr41);
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(Boolean(§8!_§));
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     §§pop();
                     addr47:
                     return this.§%!k§ > 0;
                  }
               }
            }
         }
         §§goto(addr47);
      }
   }
}

package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§9B§;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §?s§.§8K§;
   
   public class §<!8§ extends §?!z§
   {
      
      private static const §@!`§:int = 2000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §@!`§ = 2000;
         }
      }
      
      private var §,-§:Number = -1;
      
      private var §,M§:Number = -1;
      
      private var §?!u§:Boolean = false;
      
      public function §<!8§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && this))
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(super.specialPowerUsed);
            if(!_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc1_ || _loc1_)
                     {
                        addr49:
                        §§pop();
                        §§push(this.§?!u§);
                        if(_loc1_ || _loc1_)
                        {
                           return Boolean(§§pop());
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      override public function activateSpecialPower(param1:§3!#§, param2:Number, param3:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            if(§1!q§)
            {
               if(!(_loc5_ && param2))
               {
                  §§push(super.activateSpecialPower(param1,param2,param3));
                  while(true)
                  {
                     if(!§§pop())
                     {
                        if(_loc4_ || param3)
                        {
                           §§push(false);
                           break;
                        }
                        addr95:
                        while(true)
                        {
                        }
                     }
                     addr60:
                     §§push(true);
                     if(!(_loc4_ || this))
                     {
                        break;
                     }
                     if(_loc5_)
                     {
                        continue;
                     }
                     §§goto(addr35);
                  }
                  return §§pop();
               }
               §§goto(addr95);
            }
            while(true)
            {
               this.§4Y§(0,param1);
               if(!(_loc5_ && param2))
               {
                  §§goto(addr60);
               }
            }
            addr35:
            return §§pop();
         }
         §§goto(addr95);
      }
      
      override public function applyDamage(param1:Number, param2:§3!#§, param3:§"_§, param4:Boolean = true) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(super.applyDamage(param1,param2,param3,param4));
         if(_loc6_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc6_ || param3)
         {
            if(!this.specialPowerUsed)
            {
               if(!(_loc7_ && param1))
               {
                  addr68:
                  this.§4Y§(§@!`§,param2);
               }
            }
            return _loc5_;
         }
         §§goto(addr68);
      }
      
      protected function §4Y§(param1:Number, param2:§3!#§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            §§push(param1);
            while(true)
            {
               §§push(0);
               addr157:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc4_)
                  {
                     §§push(!§§pop());
                     if(_loc3_ || param2)
                     {
                        §§goto(addr178);
                     }
                     §§goto(addr180);
                  }
                  addr178:
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr181:
                        while(true)
                        {
                           §§push(this.§,M§);
                           addr135:
                           while(true)
                           {
                              continue loop2;
                           }
                           continue loop2;
                        }
                     }
                     addr180:
                  }
                  loop3:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        do
                        {
                           this.§,-§ = 0;
                           loop5:
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 §§push(param1);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(0);
                                    addr120:
                                    while(true)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          addr121:
                                          this.§,M§ = 0;
                                          this.update(0,param2);
                                          if(_loc3_)
                                          {
                                             break loop5;
                                          }
                                          continue loop5;
                                          addr124:
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                              else
                              {
                                 addr146:
                                 if(!(_loc4_ && param2))
                                 {
                                    break loop3;
                                 }
                                 §§goto(addr181);
                              }
                              §§goto(addr135);
                           }
                        }
                        while(_loc4_);
                        
                        §§goto(addr24);
                     }
                     §§goto(addr146);
                     §§goto(addr136);
                  }
                  return;
               }
               if(!(_loc3_ || param1))
               {
                  continue;
               }
               §§push(0);
               if(_loc3_)
               {
                  if(_loc3_ || this)
                  {
                     if(_loc3_)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(_loc3_)
                           {
                              this.§,M§ = param1;
                           }
                           addr99:
                           if(_loc4_ && _loc3_)
                           {
                              §§goto(addr124);
                           }
                           §§goto(addr24);
                        }
                        this.§,M§ = §@!`§;
                        if(_loc3_ || param1)
                        {
                           if(_loc3_ || param2)
                           {
                              if(!_loc3_)
                              {
                                 §§goto(addr121);
                              }
                              addr24:
                              return;
                           }
                           §§goto(addr121);
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr157);
                  }
                  §§goto(addr136);
               }
               §§goto(addr120);
            }
         }
         §§goto(addr181);
      }
      
      override public function update(param1:Number, param2:§3!#§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.update(param1,param2);
            while(true)
            {
               §§push(this.§,-§);
               loop1:
               while(true)
               {
                  if(§§pop() < 0)
                  {
                     §§goto(addr19);
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§,-§);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§,-§ = §§pop();
                     continue loop1;
                  }
               }
               while(!(_loc4_ && _loc3_))
               {
                  param2.§ !%§(§@q§.§-Q§,§^`§().GetPosition().x,§^`§().GetPosition().y);
                  if(_loc4_ && this)
                  {
                     continue;
                  }
                  §§goto(addr43);
               }
            }
         }
         addr19:
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.specialPowerUsed);
            if(_loc2_ || this)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     loop7:
                     while(true)
                     {
                        §§pop();
                        addr124:
                        while(true)
                        {
                           §§push(this.§,-§);
                           addr92:
                           while(true)
                           {
                              §§push(0);
                              addr93:
                              while(true)
                              {
                                 §§push(§§pop() < §§pop());
                                 addr94:
                                 while(_loc3_)
                                 {
                                    continue loop7;
                                 }
                              }
                           }
                        }
                     }
                     addr123:
                  }
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§,-§);
                           if(!_loc3_)
                           {
                              §§push(0);
                              if(!(_loc3_ && param1))
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§push(false);
                                          break loop1;
                                       }
                                    }
                                    else
                                    {
                                       if(_loc3_)
                                       {
                                          continue;
                                       }
                                       if(_loc3_ && param1)
                                       {
                                          addr99:
                                          return true;
                                          addr98:
                                       }
                                       while(true)
                                       {
                                          §§goto(addr24);
                                       }
                                    }
                                    §§goto(addr124);
                                 }
                                 addr24:
                                 while(true)
                                 {
                                    §§push(super.isReadyToBeRemoved(param1));
                                    if(!_loc2_)
                                    {
                                       break loop1;
                                    }
                                    if(!(_loc3_ && this))
                                    {
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr94);
                                 }
                                 return §§pop();
                              }
                              §§goto(addr93);
                           }
                           break;
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr98);
                  }
                  if(_loc2_)
                  {
                     return §§pop();
                  }
                  §§goto(addr99);
               }
            }
            §§goto(addr123);
         }
         §§goto(addr88);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§,-§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop() > 0)
               {
                  if(_loc1_)
                  {
                     §§push(this.§,-§);
                     if(!_loc2_)
                     {
                        §§push(§§pop() / this.§,M§);
                     }
                  }
                  else
                  {
                     §§goto(addr59);
                  }
               }
               §§goto(addr59);
            }
            return §§pop();
         }
         addr59:
         return -1;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(Boolean(§1!q§));
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     §§pop();
                     addr52:
                     return this.§,M§ > 0;
                  }
               }
            }
         }
         §§goto(addr52);
      }
   }
}

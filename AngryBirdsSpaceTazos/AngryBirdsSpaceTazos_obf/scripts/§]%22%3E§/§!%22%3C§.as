package §]">§
{
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   
   public class §!"<§ extends § 6§
   {
      
      private static const §0V§:int = 2000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §0V§ = 2000;
         }
      }
      
      private var §^">§:Number = -1;
      
      private var §?K§:Number = -1;
      
      private var §+t§:Boolean = false;
      
      public function §!"<§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_ || param2)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(super.specialPowerUsed);
            if(_loc1_ || _loc2_)
            {
               §§push(Boolean(§§pop()));
               if(_loc1_)
               {
                  if(!§§pop())
                  {
                     if(_loc2_)
                     {
                     }
                  }
                  §§goto(addr65);
               }
               §§pop();
               addr60:
               §§push(this.§+t§);
               if(_loc1_)
               {
                  §§push(Boolean(§§pop()));
               }
            }
            addr65:
            return §§pop();
         }
         §§goto(addr60);
      }
      
      override public function activateSpecialPower(param1:§;U§, param2:Number, param3:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            if(§?!d§)
            {
               loop1:
               while(true)
               {
                  §§push(super.activateSpecialPower(param1,param2,param3));
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           this.§@"%§(0,param1);
                           if(!(_loc5_ && param2))
                           {
                              if(_loc5_ && param1)
                              {
                                 break;
                              }
                              if(!(_loc5_ && param2))
                              {
                                 §§push(true);
                                 if(!_loc5_)
                                 {
                                    return §§pop();
                                 }
                                 break loop1;
                              }
                              continue loop1;
                           }
                        }
                        addr31:
                     }
                     §§push(false);
                     break;
                  }
                  break;
               }
               return §§pop();
               addr70:
            }
            §§goto(addr31);
         }
         §§goto(addr70);
      }
      
      override public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§, param4:Boolean = true) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(super.applyDamage(param1,param2,param3,param4));
         if(_loc6_ || param3)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!(_loc7_ && param2))
         {
            if(!this.specialPowerUsed)
            {
               if(!(_loc7_ && this))
               {
                  this.§@"%§(§0V§,param2);
               }
            }
         }
         return _loc5_;
      }
      
      protected function §@"%§(param1:Number, param2:§;U§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§^">§ = 0;
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(0);
                  while(§§pop() != §§pop())
                  {
                     §§push(param1);
                     if(_loc4_)
                     {
                        continue loop1;
                     }
                     §§push(0);
                     if(!(_loc3_ || this))
                     {
                        continue;
                     }
                     if(§§pop() > §§pop())
                     {
                        if(!_loc4_)
                        {
                           if(!(_loc3_ || this))
                           {
                              break;
                           }
                           this.§?K§ = param1;
                        }
                     }
                     else
                     {
                        this.§?K§ = §0V§;
                        if(!_loc4_)
                        {
                           break loop0;
                        }
                     }
                     if(!_loc4_)
                     {
                        if(!(_loc4_ && param2))
                        {
                           continue loop0;
                        }
                        addr19:
                        addr109:
                        this.update(0,param2);
                        return;
                        addr91:
                     }
                     §§goto(addr91);
                  }
                  this.§?K§ = 0;
                  §§goto(addr109);
               }
            }
         }
         §§goto(addr19);
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.update(param1,param2);
            while(true)
            {
               §§push(this.§^">§);
               loop1:
               while(true)
               {
                  if(§§pop() < 0)
                  {
                     addr19:
                     return;
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§^">§);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§^">§ = §§pop();
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.specialPowerUsed);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_ || this)
               {
                  if(§§pop())
                  {
                     loop8:
                     while(true)
                     {
                        §§pop();
                        addr120:
                        while(true)
                        {
                           §§push(this.§^">§);
                           addr76:
                           loop7:
                           while(true)
                           {
                              §§push(0);
                              addr77:
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop() < §§pop());
                                 addr78:
                                 while(true)
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       break loop4;
                                    }
                                    continue loop8;
                                 }
                                 continue loop7;
                              }
                           }
                        }
                     }
                     addr119:
                  }
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           §§push(true);
                        }
                        else
                        {
                           loop2:
                           while(true)
                           {
                              addr35:
                              while(true)
                              {
                                 §§push(this.§^">§);
                                 if(!(_loc2_ && param1))
                                 {
                                    §§push(0);
                                    if(!(_loc2_ && this))
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          if(!_loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                addr68:
                                                §§push(false);
                                                break loop1;
                                             }
                                             continue loop2;
                                          }
                                          if(!_loc3_)
                                          {
                                             §§goto(addr120);
                                          }
                                       }
                                       §§push(super.isReadyToBeRemoved(param1));
                                       if(!_loc3_)
                                       {
                                          break loop1;
                                       }
                                       if(_loc2_)
                                       {
                                          return §§pop();
                                       }
                                       addr95:
                                       if(_loc3_)
                                       {
                                          if(!_loc2_)
                                          {
                                             return §§pop();
                                          }
                                          continue loop0;
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr77);
                                 }
                                 break;
                              }
                              §§goto(addr76);
                           }
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr35);
                  }
                  return §§pop();
               }
               §§goto(addr119);
            }
         }
         §§goto(addr68);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§^">§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop() > 0)
               {
                  if(_loc1_ || _loc1_)
                  {
                     addr46:
                     §§push(this.§^">§);
                     if(_loc2_)
                     {
                     }
                     §§goto(addr63);
                  }
               }
               return -1;
            }
            addr63:
            return §§pop() / this.§?K§;
         }
         §§goto(addr46);
      }
   }
}

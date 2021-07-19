package §]">§
{
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §1"H§.§0"@§;
   import §1"H§.§2!V§;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import §@!'§.b2Settings;
   
   public class §50§ extends §5=§
   {
       
      
      private var §2Q§:Boolean = false;
      
      private var §^"5§:Number = 0;
      
      public function §50§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0)
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(!_loc10_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      override protected function addDestructionParticles(param1:§;U§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.§2Q§)
            {
               addr21:
               §§push(§2!V§.§2"1§);
               if(_loc3_)
               {
                  §§push(§§pop());
                  if(_loc4_)
                  {
                  }
                  addr51:
                  §§push(§§pop());
               }
            }
            else
            {
               §§push(§2!V§.§`"G§);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     §§goto(addr51);
                  }
               }
            }
            var _loc2_:* = §§pop();
            if(!(_loc4_ && param1))
            {
               param1.§%!y§(_loc2_,§0"@§.§3!W§,§2!V§.§?v§,§^!z§().GetPosition().x,§^!z§().GetPosition().y - 1,2000,"",§2!V§.§7!W§);
            }
            return;
         }
         §§goto(addr21);
      }
      
      override public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§, param4:Boolean = true) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:Number;
         §§push(_loc5_ = super.applyDamage(param1,param2,param3,param4));
         if(!(_loc6_ && param2))
         {
            §§push(§§pop() <= 0);
            if(!(_loc6_ && param2))
            {
               §§push(§§pop());
               if(_loc7_)
               {
                  if(§§pop())
                  {
                     if(!_loc6_)
                     {
                        §§pop();
                        if(_loc7_)
                        {
                           addr107:
                           §§push(param3 is § 6§);
                           loop7:
                           while(true)
                           {
                              §§push(§§pop());
                              addr108:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr110:
                                       while(true)
                                       {
                                          §§push(param3.health);
                                          addr72:
                                          §§goto(addr62);
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       addr86:
                                       if(!_loc6_)
                                       {
                                          this.§2Q§ = true;
                                       }
                                       if(!_loc6_)
                                       {
                                          while(true)
                                          {
                                             addr62:
                                             while(true)
                                             {
                                                §§push(§§pop() == param3.healthMax);
                                                if(_loc6_ && param3)
                                                {
                                                   continue loop4;
                                                }
                                                if(_loc6_)
                                                {
                                                   continue loop7;
                                                }
                                             }
                                             addr66:
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                                if(!_loc6_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr72);
                                             }
                                             return §§pop();
                                             §§goto(addr86);
                                          }
                                          addr103:
                                       }
                                       §§goto(addr110);
                                    }
                                    §§goto(addr62);
                                 }
                              }
                           }
                           addr107:
                        }
                        §§goto(addr103);
                     }
                  }
                  §§goto(addr107);
               }
               §§goto(addr108);
            }
            §§goto(addr107);
         }
         §§goto(addr66);
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§>_§;
      }
      
      override protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(0.3);
         if(!(_loc2_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            §§push(Math.abs(§^!z§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * _loc1_);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr162:
                        while(true)
                        {
                           §§push(Math.abs(§^!z§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * _loc1_);
                        }
                     }
                     addr161:
                  }
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc3_)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 if(_loc3_ || this)
                                 {
                                    §§pop();
                                    while(true)
                                    {
                                       §§push(Math.abs(§^!z§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * _loc1_);
                                    }
                                    addr137:
                                 }
                                 else
                                 {
                                    §§goto(addr161);
                                 }
                                 addr46:
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    continue loop0;
                                 }
                              }
                              §§goto(addr162);
                           }
                           while(true)
                           {
                              loop9:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       while(true)
                                       {
                                          §§push(false);
                                          break loop9;
                                       }
                                       addr93:
                                    }
                                    else if(_loc3_)
                                    {
                                       if(_loc2_ && _loc2_)
                                       {
                                          §§goto(addr162);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr137);
                                    }
                                 }
                                 §§push(true);
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 if(!(_loc3_ || this))
                                 {
                                    continue;
                                 }
                                 §§goto(addr46);
                              }
                              continue loop5;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr93);
      }
   }
}

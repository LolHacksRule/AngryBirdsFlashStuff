package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §5"i§.b2Settings;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §`!r§.§ U§;
   import §`!r§.§,!w§;
   
   public class §<!2§ extends §^#$§
   {
       
      
      private var §?#R§:Boolean = false;
      
      private var §9#S§:Number = 0;
      
      public function §<!2§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number = 1.0)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || this)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      override protected function addDestructionParticles(param1:§;$§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!param1)
            {
               if(!(_loc4_ && _loc2_))
               {
                  §§goto(addr27);
               }
            }
            else
            {
               if(this.§?#R§)
               {
                  addr38:
                  §§push(§ U§.§;!a§);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(§§pop());
                     if(_loc3_)
                     {
                        addr60:
                     }
                     addr79:
                     var _loc2_:String = §§pop();
                     §§goto(addr78);
                  }
                  §§goto(addr60);
               }
               else
               {
                  §§push(§ U§.§1!T§);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(§§pop());
                     if(_loc3_ || this)
                     {
                        addr78:
                        if(_loc3_ || _loc2_)
                        {
                           param1.§;!0§(_loc2_,§,!w§.§ !B§,§ U§.§>#]§,§3!t§().GetPosition().x,§3!t§().GetPosition().y - 1,2000,"",§ U§.§3!]§);
                        }
                        return;
                     }
                  }
               }
               §§goto(addr79);
            }
            §§goto(addr38);
         }
         addr27:
      }
      
      override public function applyDamage(param1:Number, param2:§;$§, param3:§&#=§, param4:Boolean = true) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:Number;
         §§push(_loc5_ = super.applyDamage(param1,param2,param3,param4));
         if(_loc7_)
         {
            §§push(§§pop() <= 0);
            if(!_loc6_)
            {
               §§push(§§pop());
               if(_loc7_ || param1)
               {
                  if(§§pop())
                  {
                     if(_loc7_)
                     {
                        addr43:
                        §§pop();
                        if(!(_loc6_ && param2))
                        {
                           §§push(param3 is §?"N§);
                           if(!_loc6_)
                           {
                              addr117:
                              if(§§pop())
                              {
                                 addr119:
                                 loop0:
                                 while(true)
                                 {
                                    §§pop();
                                    addr120:
                                    while(true)
                                    {
                                       §§push(param3.health);
                                       loop2:
                                       while(true)
                                       {
                                          §§push(§§pop() == param3.healthMax);
                                          if(_loc6_)
                                          {
                                             continue loop0;
                                          }
                                          addr62:
                                          while(true)
                                          {
                                             §§push(_loc5_);
                                             if(_loc7_ || param1)
                                             {
                                                break loop2;
                                             }
                                             continue loop2;
                                          }
                                       }
                                       §§goto(addr71);
                                    }
                                 }
                                 addr119:
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc6_ && param3))
                                    {
                                       if(_loc7_ || param2)
                                       {
                                          this.§?#R§ = true;
                                          addr101:
                                          while(true)
                                          {
                                             §§goto(addr62);
                                          }
                                          addr101:
                                       }
                                       §§goto(addr120);
                                    }
                                    §§goto(addr101);
                                 }
                                 §§goto(addr62);
                              }
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr119);
                  }
               }
               §§goto(addr117);
            }
            §§goto(addr43);
         }
         addr71:
         return §§pop();
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§=!s§;
      }
      
      override protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(0.3);
         if(!(_loc3_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc2_)
         {
            §§push(Math.abs(§3!t§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * _loc1_);
            if(_loc2_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     loop7:
                     while(true)
                     {
                        §§pop();
                        loop6:
                        while(true)
                        {
                           §§push(Math.abs(§3!t§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * _loc1_);
                           if(!(_loc3_ && _loc2_))
                           {
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       addr118:
                                       while(true)
                                       {
                                          §§pop();
                                          addr119:
                                          while(true)
                                          {
                                             §§push(Math.abs(§3!t§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * _loc1_);
                                             addr54:
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop7;
                                                }
                                             }
                                             continue loop6;
                                          }
                                       }
                                       continue;
                                       addr118:
                                    }
                                    loop5:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc2_ || this)
                                          {
                                             if(!(_loc3_ && _loc1_))
                                             {
                                                addr83:
                                                §§push(false);
                                                while(true)
                                                {
                                                   if(_loc2_ || _loc1_)
                                                   {
                                                      break loop5;
                                                   }
                                                   §§goto(addr118);
                                                }
                                                addr83:
                                             }
                                             §§goto(addr119);
                                          }
                                          else
                                          {
                                             if(_loc3_)
                                             {
                                                continue loop6;
                                             }
                                             while(true)
                                             {
                                                addr29:
                                                while(true)
                                                {
                                                   §§push(true);
                                                   if(!(_loc3_ && this))
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         return §§pop();
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr83);
                                                   }
                                                   §§goto(addr54);
                                                }
                                             }
                                          }
                                          §§goto(addr83);
                                       }
                                       §§goto(addr29);
                                    }
                                    return §§pop();
                                 }
                                 break;
                              }
                              continue loop0;
                              addr113:
                           }
                           §§goto(addr118);
                        }
                     }
                     addr145:
                  }
                  §§goto(addr113);
               }
            }
            §§goto(addr145);
         }
         §§goto(addr93);
      }
   }
}

package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§9B§;
   import §'F§.b2Settings;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §>!Z§.§!u§;
   import §>!Z§.§2_§;
   import §?s§.§8K§;
   
   public class §[!=§ extends § !o§
   {
       
      
      private var §1""§:Boolean = false;
      
      private var §%A§:Number = 0;
      
      public function §[!=§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number = 1.0)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      override protected function addDestructionParticles(param1:§3!#§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            if(!param1)
            {
               if(!_loc3_)
               {
                  return;
               }
            }
            else
            {
               §§goto(addr36);
            }
            §§goto(addr39);
         }
         addr36:
         if(this.§1""§)
         {
            addr39:
            §§push(§2_§.§ !,§);
            if(!(_loc3_ && param1))
            {
               §§push(§§pop());
               if(_loc4_ || this)
               {
               }
               addr79:
               §§push(§§pop());
            }
            else
            {
               addr76:
               §§push(§§pop());
               if(_loc4_)
               {
                  §§goto(addr79);
               }
            }
         }
         else
         {
            §§push(§2_§.§&"0§);
            if(_loc4_ || this)
            {
               §§goto(addr76);
            }
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || this)
         {
            param1.§-!,§(_loc2_,§!u§.§54§,§2_§.§9o§,§^`§().GetPosition().x,§^`§().GetPosition().y - 1,2000,"",§2_§.§[!Y§);
         }
      }
      
      override public function applyDamage(param1:Number, param2:§3!#§, param3:§"_§, param4:Boolean = true) : Number
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
               if(!(_loc6_ && param3))
               {
                  if(§§pop())
                  {
                     if(_loc7_)
                     {
                        §§pop();
                        if(!(_loc6_ && this))
                        {
                           §§push(param3 is §?!z§);
                           if(_loc7_ || param2)
                           {
                              addr122:
                              if(§§pop())
                              {
                                 loop0:
                                 while(true)
                                 {
                                    §§pop();
                                    addr125:
                                    while(true)
                                    {
                                       §§push(param3.health);
                                       continue loop0;
                                    }
                                 }
                                 addr124:
                              }
                              while(true)
                              {
                                 addr88:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc7_)
                                       {
                                          if(_loc7_ || this)
                                          {
                                             this.§1""§ = true;
                                          }
                                          §§goto(addr125);
                                       }
                                    }
                                    §§goto(addr62);
                                 }
                                 §§goto(addr71);
                              }
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr88);
                  }
               }
               §§goto(addr122);
            }
            §§goto(addr88);
         }
         §§goto(addr71);
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§%!Q§;
      }
      
      override protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(0.3);
         if(!(_loc3_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc3_)
         {
            §§push(Math.abs(§^`§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * _loc1_);
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
                        loop3:
                        while(true)
                        {
                           §§push(Math.abs(§^`§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * _loc1_);
                           if(_loc2_ || this)
                           {
                              if(_loc3_)
                              {
                                 break;
                                 addr110:
                              }
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!(_loc2_ || _loc2_))
                                 {
                                    break;
                                 }
                                 if(!§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             if(_loc3_ && this)
                                             {
                                                continue loop3;
                                             }
                                             §§push(false);
                                             loop7:
                                             while(_loc3_)
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr121:
                                                   while(true)
                                                   {
                                                      §§push(Math.abs(§^`§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * _loc1_);
                                                      if(_loc2_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      continue loop7;
                                                   }
                                                }
                                             }
                                             return §§pop();
                                             addr83:
                                          }
                                          else
                                          {
                                             if(_loc3_)
                                             {
                                             }
                                             §§goto(addr121);
                                          }
                                          §§goto(addr121);
                                       }
                                       §§push(true);
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       §§goto(addr83);
                                    }
                                    return §§pop();
                                    addr56:
                                 }
                              }
                              continue loop1;
                           }
                           §§goto(addr120);
                        }
                     }
                  }
                  §§goto(addr110);
               }
               if(!(_loc2_ || this))
               {
                  continue;
               }
               §§goto(addr56);
            }
         }
         §§goto(addr121);
      }
   }
}

package §8u§
{
   import §#h§.§ !H§;
   import §,_§.Sprite;
   import §3G§.§!E§;
   import §=!B§.§^!9§;
   import §@§.§+!9§;
   
   public class §,!<§ extends §6a§
   {
       
      
      public function §,!<§(param1:§!E§, param2:§^!9§, param3:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            super(param1,param2,param3);
         }
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §0r§
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!_loc10_)
         {
            if(param1.indexOf("MISC_EASTER_EGG_") == 0)
            {
               if(_loc11_)
               {
                  return null;
               }
            }
         }
         return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function objectCollision(param1:§0r§, param2:§0r§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§+!9§ = null;
         §§push(Boolean(_loc3_ = param1 as §+!9§));
         if(!(_loc6_ && _loc3_))
         {
            if(§§pop())
            {
               if(_loc5_ || this)
               {
                  §§pop();
                  if(!_loc6_)
                  {
                     §§push(_loc3_.§7C§);
                     if(!(_loc6_ && this))
                     {
                        §§push(Boolean(§§pop()));
                        if(!(_loc6_ && _loc3_))
                        {
                           addr65:
                           if(§§pop())
                           {
                              if(_loc5_)
                              {
                                 §§push(_loc3_.§8^§);
                                 if(_loc5_)
                                 {
                                    addr72:
                                    if(!§§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          _loc3_.§?n§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
                                          if(_loc6_)
                                          {
                                          }
                                          addr110:
                                          §§push(Boolean(_loc3_ = param2 as §+!9§));
                                          if(Boolean(_loc3_ = param2 as §+!9§))
                                          {
                                             if(!_loc6_)
                                             {
                                                §§pop();
                                                if(!_loc6_)
                                                {
                                                   addr130:
                                                   if(_loc3_.§7C§)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§push(_loc3_.§8^§);
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(_loc5_ || param2)
                                                               {
                                                                  _loc3_.§?n§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
                                                                  addr150:
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     addr183:
                                                                     _loc3_.§8^§ = true;
                                                                     if(_loc5_)
                                                                     {
                                                                     }
                                                                     §§goto(addr196);
                                                                  }
                                                               }
                                                               §§push(false);
                                                               if(!_loc6_)
                                                               {
                                                                  §§goto(addr191);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr196);
                                                               }
                                                            }
                                                            §§goto(addr183);
                                                         }
                                                         addr191:
                                                         return §§pop();
                                                      }
                                                   }
                                                   §§goto(addr196);
                                                }
                                                §§goto(addr150);
                                             }
                                             addr196:
                                             return super.objectCollision(param1,param2);
                                          }
                                          §§goto(addr130);
                                       }
                                    }
                                    _loc3_.§8^§ = true;
                                    if(_loc5_)
                                    {
                                       §§goto(addr109);
                                    }
                                 }
                              }
                              §§goto(addr109);
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr72);
                     }
                     §§goto(addr65);
                  }
                  §§goto(addr109);
               }
               addr109:
               return false;
            }
         }
         §§goto(addr65);
      }
      
      override protected function checkExplosions(param1:§0r§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(param1 is §+!9§)
            {
               if(!(_loc3_ && _loc2_))
               {
                  this.addExplosions(§>1§.§<!&§,param1.§?n§().GetPosition().x,param1.§?n§().GetPosition().y);
                  if(_loc2_ || _loc3_)
                  {
                  }
               }
            }
            else
            {
               super.checkExplosions(param1);
            }
         }
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §+@§.push(§>1§.createExplosion(param1,param2,param3));
            if(_loc5_ || param1)
            {
               § !H§.§ !%§("TntExplosions","ChannelExplosions");
            }
         }
      }
   }
}

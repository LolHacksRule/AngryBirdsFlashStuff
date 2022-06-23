package §]!9§
{
   import §%x§.§#;§;
   import §6!@§.§"N§;
   import §>!C§.§9R§;
   import §?!?§.§3!E§;
   import §?^§.Sprite;
   
   public class §75§ extends §]!H§
   {
       
      
      public function §75§(param1:§#;§, param2:§9R§, param3:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            super(param1,param2,param3);
         }
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §>2§
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_ || param2)
         {
            if(param1.indexOf("MISC_EASTER_EGG_") == 0)
            {
               if(!_loc11_)
               {
                  §§goto(addr40);
               }
            }
            return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         addr40:
         return null;
      }
      
      override public function objectCollision(param1:§>2§, param2:§>2§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§"N§ = null;
         §§push(Boolean(_loc3_ = param1 as §"N§));
         if(!_loc5_)
         {
            if(§§pop())
            {
               if(_loc6_ || _loc3_)
               {
                  §§pop();
                  if(_loc6_ || param1)
                  {
                     §§push(_loc3_.§+g§);
                     if(_loc6_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc5_)
                        {
                           addr56:
                           if(§§pop())
                           {
                              if(!(_loc5_ && this))
                              {
                                 §§push(_loc3_.§9z§);
                                 if(_loc6_)
                                 {
                                    addr68:
                                    if(!§§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          _loc3_.§%;§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
                                          if(!_loc6_)
                                          {
                                          }
                                          addr106:
                                          §§push(Boolean(_loc3_ = param2 as §"N§));
                                          if(Boolean(_loc3_ = param2 as §"N§))
                                          {
                                             §§pop();
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§push(Boolean(_loc3_.§+g§));
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   addr136:
                                                   if(§§pop())
                                                   {
                                                      if(_loc6_ || param2)
                                                      {
                                                         if(!_loc3_.§9z§)
                                                         {
                                                            if(!(_loc5_ && param2))
                                                            {
                                                               _loc3_.§%;§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
                                                               if(_loc6_)
                                                               {
                                                                  addr182:
                                                                  _loc3_.§9z§ = true;
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§goto(addr189);
                                                                  }
                                                               }
                                                               §§goto(addr188);
                                                            }
                                                            §§goto(addr189);
                                                         }
                                                         §§goto(addr182);
                                                      }
                                                   }
                                                   §§goto(addr189);
                                                }
                                                addr188:
                                                return false;
                                             }
                                             addr189:
                                             return super.objectCollision(param1,param2);
                                          }
                                          §§goto(addr136);
                                       }
                                       §§goto(addr105);
                                    }
                                 }
                                 §§goto(addr105);
                              }
                              _loc3_.§9z§ = true;
                              if(_loc6_)
                              {
                                 §§goto(addr105);
                              }
                           }
                           §§goto(addr106);
                        }
                        §§goto(addr68);
                     }
                     §§goto(addr56);
                  }
                  §§goto(addr105);
               }
            }
            §§goto(addr56);
         }
         addr105:
         return false;
      }
      
      override protected function checkExplosions(param1:§>2§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1 is §"N§)
            {
               if(!(_loc3_ && param1))
               {
                  this.addExplosions(§5D§.§9L§,param1.§%;§().GetPosition().x,param1.§%;§().GetPosition().y);
                  if(_loc2_ || _loc3_)
                  {
                     addr68:
                  }
               }
            }
            else
            {
               super.checkExplosions(param1);
            }
            return;
         }
         §§goto(addr68);
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §,!6§.push(§5D§.createExplosion(param1,param2,param3));
            if(_loc4_ || param2)
            {
               §3!E§.§<!,§("TntExplosions","ChannelExplosions");
            }
         }
      }
   }
}

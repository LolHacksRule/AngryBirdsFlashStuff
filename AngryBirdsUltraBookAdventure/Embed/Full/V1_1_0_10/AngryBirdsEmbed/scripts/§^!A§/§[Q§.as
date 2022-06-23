package §^!A§
{
   import §!j§.§+m§;
   import §#X§.§,!F§;
   import §&o§.Sprite;
   import §1!-§.§@Z§;
   import §6A§.§ !§;
   
   public class §[Q§ extends §@H§
   {
       
      
      public function §[Q§(param1:§ !§, param2:§@Z§, param3:Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §;!%§
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_)
         {
            if(param1.indexOf("MISC_EASTER_EGG_") == 0)
            {
               if(!_loc11_)
               {
                  return null;
               }
            }
         }
         return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function objectCollision(param1:§;!%§, param2:§;!%§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§+m§ = null;
         §§push(Boolean(_loc3_ = param1 as §+m§));
         if(!_loc6_)
         {
            if(§§pop())
            {
               if(!_loc6_)
               {
                  §§pop();
                  if(!_loc6_)
                  {
                     §§push(_loc3_.§'V§);
                     if(_loc5_ || param2)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc6_)
                        {
                           addr50:
                           if(§§pop())
                           {
                              if(!_loc6_)
                              {
                                 §§push(_loc3_.§[5§);
                                 if(_loc5_)
                                 {
                                    addr57:
                                    if(!§§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          addr60:
                                          _loc3_.§'[§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
                                          if(!_loc5_)
                                          {
                                          }
                                          addr95:
                                          §§push(Boolean(_loc3_ = param2 as §+m§));
                                          if(Boolean(_loc3_ = param2 as §+m§))
                                          {
                                             if(!_loc6_)
                                             {
                                                §§pop();
                                                if(_loc5_)
                                                {
                                                   §§push(_loc3_.§'V§);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(!(_loc6_ && this))
                                                      {
                                                         addr124:
                                                         if(§§pop())
                                                         {
                                                            if(_loc5_ || param1)
                                                            {
                                                               §§push(_loc3_.§[5§);
                                                               if(_loc5_ || this)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(_loc5_ || param1)
                                                                     {
                                                                     }
                                                                     addr188:
                                                                     return super.objectCollision(param1,param2);
                                                                     addr184:
                                                                  }
                                                                  addr177:
                                                                  _loc3_.§[5§ = true;
                                                                  if(_loc5_)
                                                                  {
                                                                     §§goto(addr183);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr184);
                                                                  }
                                                               }
                                                               §§goto(addr183);
                                                            }
                                                            _loc3_.§'[§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
                                                            if(!_loc6_)
                                                            {
                                                               §§goto(addr177);
                                                            }
                                                         }
                                                         §§goto(addr184);
                                                      }
                                                      addr183:
                                                      return false;
                                                   }
                                                   §§goto(addr188);
                                                }
                                                §§goto(addr177);
                                             }
                                          }
                                          §§goto(addr124);
                                       }
                                       §§goto(addr95);
                                    }
                                    _loc3_.§[5§ = true;
                                    if(!_loc6_)
                                    {
                                       addr93:
                                       return false;
                                    }
                                    else
                                    {
                                       §§goto(addr95);
                                    }
                                 }
                                 return §§pop();
                              }
                           }
                           §§goto(addr60);
                        }
                        §§goto(addr57);
                     }
                     §§goto(addr50);
                  }
                  §§goto(addr93);
               }
               §§goto(addr57);
            }
            §§goto(addr50);
         }
         §§goto(addr57);
      }
      
      override protected function checkExplosions(param1:§;!%§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1 is §+m§)
            {
               if(!(_loc3_ && _loc2_))
               {
                  this.addExplosions(§]v§.§+l§,param1.§'[§().GetPosition().x,param1.§'[§().GetPosition().y);
                  if(_loc2_ || this)
                  {
                     addr68:
                  }
               }
               §§goto(addr68);
            }
            else
            {
               super.checkExplosions(param1);
            }
            return;
         }
         §§goto(addr68);
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§;!%§> = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            § 8§.push(§]v§.createExplosion(param1,param2,param3));
            if(_loc6_ || param1)
            {
               §,!F§.§;v§("TntExplosions","ChannelExplosions");
            }
         }
      }
   }
}

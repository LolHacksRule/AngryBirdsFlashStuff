package §9_§
{
   import §3"§.§8+§;
   import §3O§.§@6§;
   import §[x§.§2^§;
   import §^V§.Sprite;
   import §`6§.§ r§;
   
   public class §6!B§ extends §?!!§
   {
       
      
      public function §6!B§(param1:§2^§, param2:§8+§, param3:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §+>§
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!(_loc10_ && this))
         {
            if(param1.indexOf("MISC_EASTER_EGG_") == 0)
            {
               if(_loc11_ || param3)
               {
                  return null;
               }
            }
         }
         return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function objectCollision(param1:§+>§, param2:§+>§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§ r§ = null;
         §§push(Boolean(_loc3_ = param1 as § r§));
         if(_loc5_ || this)
         {
            if(§§pop())
            {
               if(!_loc6_)
               {
                  addr40:
                  §§pop();
                  if(_loc5_)
                  {
                     §§push(_loc3_.§]Q§);
                     if(!(_loc6_ && _loc3_))
                     {
                        addr105:
                        §§push(Boolean(§§pop()));
                        while(§§pop())
                        {
                           while(true)
                           {
                              §§push(_loc3_.§02§);
                           }
                           if(_loc5_ || _loc3_)
                           {
                              return §§pop();
                           }
                        }
                        §§push(Boolean(_loc3_ = param2 as § r§));
                        if(Boolean(_loc3_ = param2 as § r§))
                        {
                           §§pop();
                           if(_loc5_)
                           {
                              §§push(_loc3_.§]Q§);
                              if(_loc5_)
                              {
                                 addr183:
                                 if(!§§pop())
                                 {
                                    return super.objectCollision(param1,param2);
                                 }
                              }
                              §§goto(addr183);
                           }
                           while(true)
                           {
                              §§push(_loc3_.§02§);
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc5_ || this)
                                    {
                                       _loc3_.§>b§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
                                    }
                                    while(true)
                                    {
                                    }
                                    addr210:
                                 }
                                 while(true)
                                 {
                                    _loc3_.§02§ = true;
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    §§goto(addr210);
                                 }
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 §§push(false);
                                 if(!_loc6_)
                                 {
                                    return §§pop();
                                 }
                              }
                           }
                        }
                        §§goto(addr183);
                        addr106:
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              _loc3_.§>b§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
                              addr126:
                              while(true)
                              {
                              }
                           }
                           addr110:
                        }
                        while(true)
                        {
                           _loc3_.§02§ = true;
                           if(_loc5_ || param2)
                           {
                              if(_loc5_)
                              {
                                 break;
                              }
                              §§goto(addr110);
                           }
                           §§goto(addr126);
                        }
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(false);
                           if(_loc6_)
                           {
                              continue;
                           }
                           §§goto(addr48);
                        }
                        break;
                     }
                  }
                  §§goto(addr107);
               }
               §§goto(addr105);
            }
            §§goto(addr106);
         }
         §§goto(addr40);
      }
      
      override protected function checkExplosions(param1:§+>§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(!(param1 is § r§))
            {
               super.checkExplosions(param1);
               if(!_loc2_)
               {
                  if(!_loc3_)
                  {
                     addr64:
                     this.addExplosions(§59§.§+d§,param1.§>b§().GetPosition().x,param1.§>b§().GetPosition().y);
                     addr76:
                  }
                  return;
               }
               §§goto(addr76);
            }
         }
         §§goto(addr64);
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            §-W§.push(§59§.createExplosion(param1,param2,param3));
         }
         do
         {
            §@6§.playSound("TntExplosions","ChannelExplosions");
         }
         while(_loc5_ && param2);
         
      }
   }
}

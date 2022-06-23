package §!+§
{
   import §6!'§.get;
   import §6J§.§&!;§;
   import §9W§.Sprite;
   import §?b§.§7!,§;
   import §@D§.§6I§;
   
   public class §5! § extends §#-§
   {
       
      
      public function §5! §(param1:§7!,§, param2:§&!;§, param3:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            super(param1,param2,param3);
         }
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §>G§
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
      
      override public function objectCollision(param1:§>G§, param2:§>G§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:get = null;
         §§push(Boolean(_loc3_ = param1 as get));
         if(!_loc5_)
         {
            if(§§pop())
            {
               if(_loc6_ || _loc3_)
               {
                  §§pop();
                  if(_loc6_ || param1)
                  {
                     §§push(_loc3_.§5@§);
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
                                 §§push(_loc3_.§`;§);
                                 if(_loc6_)
                                 {
                                    addr68:
                                    if(!§§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          _loc3_.§`t§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
                                          if(!_loc6_)
                                          {
                                          }
                                          addr106:
                                          §§push(Boolean(_loc3_ = param2 as get));
                                          if(Boolean(_loc3_ = param2 as get))
                                          {
                                             §§pop();
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§push(Boolean(_loc3_.§5@§));
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   addr136:
                                                   if(§§pop())
                                                   {
                                                      if(_loc6_ || param2)
                                                      {
                                                         if(!_loc3_.§`;§)
                                                         {
                                                            if(!(_loc5_ && param2))
                                                            {
                                                               _loc3_.§`t§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
                                                               if(_loc6_)
                                                               {
                                                                  addr182:
                                                                  _loc3_.§`;§ = true;
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
                              _loc3_.§`;§ = true;
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
      
      override protected function checkExplosions(param1:§>G§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1 is get)
            {
               if(!(_loc3_ && param1))
               {
                  this.addExplosions(§5b§.§4!D§,param1.§`t§().GetPosition().x,param1.§`t§().GetPosition().y);
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
            §+!%§.push(§5b§.createExplosion(param1,param2,param3));
            if(_loc4_ || param2)
            {
               §6I§.§ ;§("TntExplosions","ChannelExplosions");
            }
         }
      }
   }
}

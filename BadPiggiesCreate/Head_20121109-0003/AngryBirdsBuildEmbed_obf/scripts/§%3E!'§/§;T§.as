package §>!'§
{
   import §-!0§.§2! §;
   import §-!`§.Sprite;
   import §1=§.§#!J§;
   import §1?§.§+!§;
   import §<!<§.§7E§;
   
   public class §;T§ extends §'!Y§
   {
       
      
      public function §;T§(param1:§7E§, param2:§2! §, param3:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §<!3§
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!(_loc10_ && param2))
         {
            if(param1.indexOf("MISC_EASTER_EGG_") == 0)
            {
               if(!_loc10_)
               {
                  §§goto(addr41);
               }
            }
            return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         addr41:
         return null;
      }
      
      override public function objectCollision(param1:§<!3§, param2:§<!3§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§#!J§ = null;
         §§push(Boolean(_loc3_ = param1 as §#!J§));
         if(!_loc6_)
         {
            if(§§pop())
            {
               if(!(_loc6_ && _loc3_))
               {
                  §§pop();
                  if(_loc5_ || _loc3_)
                  {
                     §§push(_loc3_.§,9§);
                     if(_loc5_ || param2)
                     {
                        addr57:
                        §§push(Boolean(§§pop()));
                        if(!_loc6_)
                        {
                           addr60:
                           if(§§pop())
                           {
                              if(_loc5_)
                              {
                                 §§push(_loc3_.§3t§);
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    addr72:
                                    if(!§§pop())
                                    {
                                       if(!(_loc6_ && param2))
                                       {
                                          _loc3_.getBody().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
                                          addr80:
                                          if(!_loc5_)
                                          {
                                          }
                                          addr114:
                                          return false;
                                          addr113:
                                       }
                                       addr115:
                                       §§push(Boolean(_loc3_ = param2 as §#!J§));
                                       if(Boolean(_loc3_ = param2 as §#!J§))
                                       {
                                          §§pop();
                                          if(_loc5_)
                                          {
                                             §§push(Boolean(_loc3_.§,9§));
                                             if(_loc5_ || param1)
                                             {
                                                addr140:
                                                if(§§pop())
                                                {
                                                   if(_loc5_ || param1)
                                                   {
                                                      §§goto(addr150);
                                                   }
                                                }
                                                §§goto(addr200);
                                             }
                                             addr150:
                                             if(!_loc3_.§3t§)
                                             {
                                                if(_loc5_ || _loc3_)
                                                {
                                                   _loc3_.getBody().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
                                                   addr158:
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr186);
                                                   }
                                                   §§goto(addr196);
                                                }
                                                §§goto(addr200);
                                             }
                                             addr186:
                                             _loc3_.§3t§ = true;
                                             if(!(_loc6_ && this))
                                             {
                                                addr196:
                                                §§push(false);
                                                if(!_loc6_)
                                                {
                                                   return §§pop();
                                                }
                                             }
                                             else
                                             {
                                                addr200:
                                                §§push(super.objectCollision(param1,param2));
                                             }
                                             return §§pop();
                                          }
                                          §§goto(addr158);
                                       }
                                       §§goto(addr140);
                                    }
                                    _loc3_.§3t§ = true;
                                    if(!_loc6_)
                                    {
                                       §§goto(addr113);
                                    }
                                    else
                                    {
                                       §§goto(addr115);
                                    }
                                 }
                              }
                              §§goto(addr114);
                           }
                           §§goto(addr115);
                        }
                        §§goto(addr72);
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr80);
               }
               §§goto(addr57);
            }
            §§goto(addr60);
         }
         §§goto(addr57);
      }
      
      override protected function checkExplosions(param1:§<!3§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(param1 is §#!J§)
            {
               if(!_loc2_)
               {
                  this.addExplosions(§[3§.§[+§,param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
                  if(_loc3_ || _loc3_)
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
         if(!_loc4_)
         {
            §5O§.push(§[3§.createExplosion(param1,param2,param3));
            if(_loc5_ || param3)
            {
               §+!§.§4c§("TntExplosions","ChannelExplosions");
            }
         }
      }
   }
}

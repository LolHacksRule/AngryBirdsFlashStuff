package §2"Y§
{
   import §1!i§.§,#_§;
   import §1!i§.§7#&§;
   
   public class §!""§ extends §]#]§
   {
       
      
      protected var §2"p§:Object;
      
      public function §!""§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public function §'#P§(param1:String, param2:String) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§&!x§ = null;
         var _loc7_:§<">§ = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         if(!(_loc15_ && param2))
         {
            this.§+"5§(param1);
         }
         var _loc3_:Object = §7#&§.§06§(param2);
         if(!(_loc15_ && param1))
         {
            §'#8§ = new §,#_§();
         }
         loop0:
         for(_loc4_ in _loc3_)
         {
            _loc5_ = _loc3_[_loc4_];
            _loc6_ = this.§,#>§(_loc4_,_loc5_);
            if(_loc14_ || param2)
            {
               if(_loc5_.damageFactors != undefined)
               {
                  if(_loc15_)
                  {
                     continue;
                  }
                  addr96:
                  if((_loc7_ = this.§2"p§[_loc5_.damageFactors] as §<">§) == null)
                  {
                     if(_loc14_ || _loc3_)
                     {
                        throw new Error("Cannot find damageFactors \'" + _loc5_.damageFactors + "\' for material \'" + _loc4_ + "\'!");
                     }
                  }
                  §§push(0);
                  if(!(_loc15_ && param2))
                  {
                     var _loc12_:* = §§pop();
                     if(!(_loc15_ && param1))
                     {
                        var _loc13_:* = _loc7_.§&#5§;
                        if(!_loc14_)
                        {
                        }
                        loop1:
                        while(true)
                        {
                           §§push(§§hasnext(_loc13_,_loc12_));
                           if(!_loc15_)
                           {
                              if(§§pop())
                              {
                                 _loc8_ = §§nextname(_loc12_,_loc13_);
                                 if(!_loc15_)
                                 {
                                    _loc6_.§>"I§(_loc8_,_loc7_.§&#5§[_loc8_]);
                                 }
                                 continue;
                              }
                              if(_loc14_)
                              {
                                 if(!(_loc15_ && _loc3_))
                                 {
                                    if(_loc14_)
                                    {
                                       addr201:
                                       _loc12_ = 0;
                                       if(!(_loc15_ && _loc3_))
                                       {
                                          addr209:
                                          _loc13_ = _loc7_.§>"S§;
                                          if(!(_loc15_ && this))
                                          {
                                             addr236:
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc13_,_loc12_));
                                                break loop1;
                                             }
                                             addr236:
                                          }
                                          while(true)
                                          {
                                             _loc6_.§3"R§(_loc9_,_loc7_.§>"S§[_loc9_]);
                                             §§goto(addr236);
                                          }
                                          addr229:
                                       }
                                       addr250:
                                       §'#8§[_loc4_] = _loc6_;
                                       continue loop0;
                                       addr239:
                                    }
                                    §§goto(addr250);
                                 }
                                 §§goto(addr209);
                              }
                              §§goto(addr239);
                           }
                           break;
                        }
                        for(; §§pop(); §§goto(addr236))
                        {
                           _loc9_ = §§nextname(_loc12_,_loc13_);
                           if(!_loc14_)
                           {
                              continue;
                           }
                           §§goto(addr229);
                        }
                        §§goto(addr238);
                     }
                     §§goto(addr209);
                  }
               }
               §§goto(addr201);
            }
            §§goto(addr96);
         }
      }
      
      protected function §+"5§(param1:String) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:§<">§ = null;
         if(_loc7_)
         {
            this.§2"p§ = {};
         }
         var _loc2_:Object = §7#&§.§06§(param1);
         for(_loc3_ in _loc2_)
         {
            (_loc4_ = new §<">§()).§&#5§ = _loc2_[_loc3_].damageMultiplier;
            if(!(_loc8_ && param1))
            {
               _loc4_.§>"S§ = _loc2_[_loc3_].velocityMultiplier;
               if(!(_loc8_ && _loc2_))
               {
                  this.§2"p§[_loc3_] = _loc4_;
               }
            }
         }
      }
      
      protected function §,#>§(param1:String, param2:Object) : §&!x§
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         if(_loc21_ || param1)
         {
            §§push(param2.density == undefined);
            if(_loc21_ || _loc3_)
            {
               §§push(!§§pop());
               if(!_loc20_)
               {
                  if(§§pop())
                  {
                     if(_loc21_)
                     {
                        addr42:
                        §§pop();
                        if(_loc21_ || param2)
                        {
                           addr54:
                           if(param2.density == 0)
                           {
                              addr55:
                              §§push(§&!x§.§&#_§);
                              if(_loc21_)
                              {
                                 §§push(int(§§pop()));
                                 if(_loc21_ || param2)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(§&!x§.§7!B§);
                              if(_loc21_)
                              {
                                 §§push(int(§§pop()));
                                 if(_loc21_)
                                 {
                                    addr75:
                                    §§push(int(§§pop()));
                                 }
                                 var _loc3_:* = §§pop();
                                 var _loc4_:Number = param2.density;
                                 var _loc5_:Number = param2.friction;
                                 var _loc6_:Number = param2.restitution;
                                 var _loc7_:Number = param2.strength;
                                 var _loc8_:Number = param2.defence;
                                 var _loc9_:Number = 0;
                                 var _loc10_:* = param2.bouncesLaser == true;
                                 var _loc11_:* = param2.bouncesLaserTargeted == true;
                                 var _loc12_:String = param2.particlesDestroyed;
                                 var _loc13_:String = param2.collisionSound;
                                 var _loc14_:String = param2.damageSound;
                                 var _loc15_:String = param2.destroyedSound;
                                 var _loc16_:String = param2.rollingSound;
                                 var _loc17_:String = param2.damageFactors;
                                 var _loc18_:int = param2.z_order;
                                 var _loc19_:§-!Y§ = new §-!Y§(param1,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_,_loc15_,_loc16_,_loc17_,_loc18_);
                                 if(!(_loc20_ && this))
                                 {
                                    §'#8§[param1] = _loc19_;
                                 }
                                 return _loc19_;
                              }
                           }
                           §§goto(addr75);
                        }
                        §§goto(addr55);
                     }
                  }
               }
               §§goto(addr54);
            }
            §§goto(addr42);
         }
         §§goto(addr54);
      }
   }
}

package §"!&§
{
   import § !Y§.§9k§;
   import § !Y§.§[!%§;
   
   public class §]§ extends §8!T§
   {
       
      
      protected var § !M§:Object;
      
      public function §]§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function §[J§(param1:String, param2:String) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§<s§ = null;
         var _loc7_:§5"1§ = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         if(!_loc15_)
         {
            this.§#!F§(param1);
         }
         var _loc3_:Object = §9k§.§9"@§(param2);
         if(_loc14_ || param2)
         {
            §9!>§ = new §[!%§();
         }
         loop0:
         for(_loc4_ in _loc3_)
         {
            _loc5_ = _loc3_[_loc4_];
            _loc6_ = this.§7!1§(_loc4_,_loc5_);
            if(_loc14_ || param1)
            {
               if(_loc5_.damageFactors != undefined)
               {
                  if(!_loc14_)
                  {
                     continue;
                  }
                  addr91:
                  if((_loc7_ = this.§ !M§[_loc5_.damageFactors] as §5"1§) == null)
                  {
                     if(_loc14_)
                     {
                        throw new Error("Cannot find damageFactors \'" + _loc5_.damageFactors + "\' for material \'" + _loc4_ + "\'!");
                     }
                     addr190:
                     §§push(0);
                  }
                  else
                  {
                     §§push(0);
                     if(!_loc15_)
                     {
                        var _loc12_:* = §§pop();
                        if(!(_loc15_ && _loc3_))
                        {
                           var _loc13_:* = _loc7_.§=o§;
                           if(_loc14_ || _loc3_)
                           {
                           }
                           loop1:
                           while(true)
                           {
                              §§push(§§hasnext(_loc13_,_loc12_));
                              if(!(_loc15_ && _loc3_))
                              {
                                 if(§§pop())
                                 {
                                    _loc8_ = §§nextname(_loc12_,_loc13_);
                                    if(_loc14_)
                                    {
                                       _loc6_.§+!;§(_loc8_,_loc7_.§=o§[_loc8_]);
                                    }
                                    continue;
                                 }
                                 if(!_loc15_)
                                 {
                                    if(!(_loc15_ && _loc3_))
                                    {
                                       addr187:
                                       if(_loc14_)
                                       {
                                          §§goto(addr190);
                                       }
                                       addr235:
                                       §9!>§[_loc4_] = _loc6_;
                                       continue loop0;
                                    }
                                    addr194:
                                    _loc13_ = _loc7_.§0!"§;
                                    if(_loc14_ || _loc3_)
                                    {
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc13_,_loc12_));
                                          break loop1;
                                       }
                                       addr223:
                                       §§goto(addr235);
                                       addr221:
                                       addr223:
                                    }
                                    while(true)
                                    {
                                       _loc6_.§@" §(_loc9_,_loc7_.§0!"§[_loc9_]);
                                       §§goto(addr221);
                                    }
                                    addr214:
                                 }
                                 §§goto(addr223);
                              }
                              break;
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 §§goto(addr223);
                              }
                              else
                              {
                                 _loc9_ = §§nextname(_loc12_,_loc13_);
                                 if(!_loc14_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr214);
                              }
                           }
                        }
                        §§goto(addr187);
                     }
                  }
                  _loc12_ = §§pop();
                  if(_loc14_)
                  {
                     §§goto(addr194);
                  }
                  §§goto(addr223);
               }
               §§goto(addr187);
            }
            §§goto(addr91);
         }
      }
      
      protected function §#!F§(param1:String) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:§5"1§ = null;
         if(_loc8_ || _loc3_)
         {
            this.§ !M§ = {};
         }
         var _loc2_:Object = §9k§.§9"@§(param1);
         for(_loc3_ in _loc2_)
         {
            (_loc4_ = new §5"1§()).§=o§ = _loc2_[_loc3_].damageMultiplier;
            if(!_loc7_)
            {
               _loc4_.§0!"§ = _loc2_[_loc3_].velocityMultiplier;
               if(!(_loc7_ && _loc2_))
               {
                  this.§ !M§[_loc3_] = _loc4_;
               }
            }
         }
      }
      
      protected function §7!1§(param1:String, param2:Object) : §<s§
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         if(_loc20_)
         {
            §§push(param2.density == undefined);
            if(_loc20_ || this)
            {
               §§push(!§§pop());
               if(_loc20_ || param2)
               {
                  if(§§pop())
                  {
                     if(!(_loc21_ && param2))
                     {
                        addr46:
                        §§pop();
                        if(_loc20_)
                        {
                           addr53:
                           if(param2.density == 0)
                           {
                              addr54:
                              §§push(§<s§.§%!2§);
                              if(_loc20_)
                              {
                                 §§push(int(§§pop()));
                                 if(!_loc21_)
                                 {
                                    addr74:
                                    §§push(int(§§pop()));
                                    addr61:
                                 }
                                 else
                                 {
                                    addr66:
                                    §§push(int(§§pop()));
                                    if(_loc20_ || this)
                                    {
                                       §§goto(addr74);
                                    }
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
                                 var _loc19_:§]!<§ = new §]!<§(param1,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_,_loc15_,_loc16_,_loc17_,_loc18_);
                                 if(_loc20_)
                                 {
                                    §9!>§[param1] = _loc19_;
                                 }
                                 return _loc19_;
                              }
                              §§goto(addr61);
                           }
                           else
                           {
                              §§push(§<s§.§6x§);
                              if(!_loc21_)
                              {
                                 §§goto(addr66);
                              }
                           }
                           §§goto(addr74);
                        }
                        §§goto(addr54);
                     }
                  }
               }
               §§goto(addr53);
            }
            §§goto(addr46);
         }
         §§goto(addr53);
      }
   }
}

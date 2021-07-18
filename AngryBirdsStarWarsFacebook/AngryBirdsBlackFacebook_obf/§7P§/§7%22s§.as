package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §,"N§.§@#B§;
   import §2"Y§.§"t§;
   import §2"Y§.§=+§;
   import §6!H§.§&"f§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §?m§.§=!z§;
   import §^#>§.§#_§;
   import §^#>§.§'"3§;
   
   public class §7"s§ extends §^!K§
   {
       
      
      public function §7"s§(param1:§#_§, param2:§=!z§, param3:Sprite, param4:String, param5:String = "", param6:String = "")
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param3)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      public function §#W§(param1:§'"3§, param2:§?"N§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Sprite = new Sprite();
         if(!(_loc6_ && _loc3_))
         {
            §!V§.addChild(_loc3_);
         }
         var _loc4_:§3C§ = new §3C§(_loc3_,§2#G§.mLevelEngine.mWorld,param2);
         if(!(_loc6_ && param1))
         {
            §1!b§.push(_loc4_);
         }
      }
      
      private function §-!7§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§&"f§ = §@#B§(§4#;§.singleton.dataModel).birdLevels;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§-!F§.§+"§);
               loop1:
               while(true)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(_loc3_ || param1)
                     {
                        §§push(§-!F§.§+"§);
                     }
                     else
                     {
                        while(true)
                        {
                           addr321:
                           addr96:
                           while(true)
                           {
                              §§push(param1);
                              addr323:
                              while(true)
                              {
                                 §§push(§@!8§.§+"§);
                                 addr325:
                                 addr328:
                                 while(§§pop().indexOf(§§pop()) != 0)
                                 {
                                    while(true)
                                    {
                                       §§push(param1);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(§]!-§.§+"§);
                                          addr298:
                                          addr303:
                                          loop8:
                                          while(§§pop().indexOf(§§pop()) != 0)
                                          {
                                             while(true)
                                             {
                                                §§push(param1);
                                                addr269:
                                                while(true)
                                                {
                                                   §§push(§-E§.§+"§);
                                                   addr271:
                                                   while(!_loc4_)
                                                   {
                                                      if(§§pop().indexOf(§§pop()) == 0)
                                                      {
                                                         addr276:
                                                         if(_loc3_)
                                                         {
                                                            addr284:
                                                            §§push(§-E§.§+"§ + "_" + _loc2_.yellow);
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               return §§pop();
                                                            }
                                                            break loop1;
                                                         }
                                                         break loop8;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         addr165:
                                                         while(true)
                                                         {
                                                            if(_loc3_ || this)
                                                            {
                                                               continue loop0;
                                                            }
                                                            continue loop7;
                                                         }
                                                         addr293:
                                                         continue loop0;
                                                      }
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                          }
                                          addr304:
                                          §§push(§]!-§.§+"§ + "_");
                                          if(!(_loc4_ && this))
                                          {
                                             §§goto(addr314);
                                          }
                                          §§goto(addr317);
                                       }
                                    }
                                 }
                                 addr330:
                                 §§push(§@!8§.§+"§);
                                 addr379:
                                 if(!_loc4_)
                                 {
                                    addr333:
                                    §§push("_");
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       addr341:
                                       §§goto(addr343);
                                       §§push(§§pop() + §§pop());
                                       §§push(_loc2_.blue);
                                    }
                                 }
                                 else
                                 {
                                    addr378:
                                    §§push("_");
                                 }
                                 break loop1;
                              }
                           }
                           if(!(_loc3_ || _loc2_))
                           {
                              continue;
                           }
                           §§push(§8!?§.§+"§);
                           if(_loc3_)
                           {
                              if(_loc3_)
                              {
                                 §§push("_");
                                 if(!_loc4_)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!_loc4_)
                                       {
                                          if(_loc3_)
                                          {
                                             if(_loc3_ || param1)
                                             {
                                                if(!(_loc4_ && this))
                                                {
                                                   §§push(_loc2_.pink);
                                                   if(!_loc4_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         addr140:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            return §§pop();
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr284);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr236:
                                                      if(_loc4_ && _loc2_)
                                                      {
                                                         addr314:
                                                         §§push(_loc2_.§8#<§);
                                                         if(!_loc4_)
                                                         {
                                                            addr317:
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc4_)
                                                            {
                                                               return §§pop();
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr343:
                                                            if(!(_loc4_ && this))
                                                            {
                                                               §§goto(addr351);
                                                            }
                                                            addr382:
                                                            return §§pop() + §§pop();
                                                         }
                                                         return §§pop();
                                                      }
                                                      addr244:
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            return §§pop();
                                                         }
                                                         §§goto(addr341);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr284);
                                                      }
                                                      §§goto(addr343);
                                                   }
                                                   addr351:
                                                   return §§pop() + §§pop();
                                                }
                                                §§goto(addr284);
                                                §§goto(addr284);
                                             }
                                             else
                                             {
                                                addr232:
                                                if(_loc3_)
                                                {
                                                   §§goto(addr236);
                                                   §§push(_loc2_.black);
                                                }
                                                §§goto(addr317);
                                             }
                                          }
                                          §§goto(addr244);
                                       }
                                       §§goto(addr140);
                                    }
                                    else
                                    {
                                       §§goto(addr284);
                                    }
                                 }
                                 else
                                 {
                                    addr222:
                                    if(!_loc4_)
                                    {
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          §§goto(addr232);
                                          §§push(§§pop() + §§pop());
                                       }
                                       else
                                       {
                                          §§goto(addr333);
                                       }
                                       §§goto(addr341);
                                    }
                                    else
                                    {
                                       §§goto(addr304);
                                    }
                                 }
                                 §§goto(addr317);
                              }
                              else
                              {
                                 §§goto(addr330);
                              }
                           }
                           else
                           {
                              §§goto(addr284);
                           }
                           §§goto(addr284);
                        }
                     }
                     §§goto(addr378);
                  }
                  §§goto(addr321);
               }
               §§goto(addr382);
            }
         }
         §§goto(addr328);
      }
      
      override protected function createObjectInstance(param1:§94§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §7B§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            if(§2#G§.levelItemManager.getItem(param1.type) is §=+§)
            {
               if(!(_loc5_ && param3))
               {
                  param1.type = this.§-!7§(param1.type);
                  addr49:
               }
            }
            return super.createObjectInstance(param1,param2,param3,param4);
         }
         §§goto(addr49);
      }
      
      override protected function createObjectBlockSpace(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number) : §`#G§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:* = param4.itemName;
         if(!(_loc8_ && param3))
         {
            if("BLOCK_TOURNAMENT_EMPEROR_HOLOGRAM" === _loc7_)
            {
               if(!(_loc8_ && this))
               {
                  §§push(0);
                  if(!_loc9_)
                  {
                     addr108:
                  }
               }
               else
               {
                  addr121:
                  §§push(3);
                  if(_loc9_ || param1)
                  {
                  }
               }
               addr134:
               switch(§§pop())
               {
                  case 0:
                     return new §"!?§(param1,param2,param3,param4,param5,param6);
                  case 1:
                     return new §`!>§(param1,param2,param3,param4,param5,param6);
                  case 2:
                  case 3:
                     return new §7"?§(param1,param2,param3,param4,param5,param6);
                  default:
                     return super.createObjectBlockSpace(param1,param2,param3,param4,param5,param6);
               }
            }
            else
            {
               if("BLOCK_TOURNAMENT_TORPEDO_LAUNCHER" === _loc7_)
               {
                  if(_loc9_ || this)
                  {
                     §§push(1);
                     if(_loc9_)
                     {
                        §§goto(addr108);
                     }
                  }
                  else
                  {
                     §§goto(addr121);
                  }
               }
               else if("BLOCK_TOURNAMENT_TURBINE_4X2" === _loc7_)
               {
                  if(_loc9_)
                  {
                     addr114:
                     §§push(2);
                     if(!_loc9_)
                     {
                     }
                  }
                  else
                  {
                     §§goto(addr121);
                  }
               }
               else if("BLOCK_TOURNAMENT_TURBINE_2X1" === _loc7_)
               {
                  §§goto(addr121);
               }
               else
               {
                  §§push(4);
               }
               §§goto(addr134);
            }
            §§goto(addr121);
         }
         §§goto(addr114);
      }
      
      public function §@#Y§(param1:§'"3§, param2:§?"N§, param3:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Sprite = new Sprite();
         if(_loc6_)
         {
            §8!>§.addChild(_loc4_);
         }
         var _loc5_:§=T§ = new §=T§(_loc4_,§2#G§.mLevelEngine.mWorld,param2,param3);
         if(_loc6_ || this)
         {
            §1!b§.push(_loc5_);
         }
      }
      
      public function §##8§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = int(§1!b§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               if(§§pop() < 0)
               {
                  if(!_loc3_)
                  {
                     §§push(false);
                     if(_loc2_ || _loc3_)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           §§pop();
                           loop2:
                           while(true)
                           {
                              §§push(§1!b§[_loc1_] is §7#"§);
                              if(!_loc3_)
                              {
                                 loop3:
                                 while(§§pop())
                                 {
                                    if(_loc2_)
                                    {
                                       §§push(true);
                                       while(!(_loc2_ || _loc2_))
                                       {
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                continue loop1;
                                             }
                                             continue loop3;
                                          }
                                       }
                                       return §§pop();
                                       addr85:
                                    }
                                    loop4:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          break loop3;
                                       }
                                       break;
                                       addr64:
                                       while(!(_loc2_ || this))
                                       {
                                          continue loop4;
                                       }
                                       continue loop0;
                                    }
                                    continue loop2;
                                 }
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr63:
                                       §§push(§§pop() - 1);
                                       while(true)
                                       {
                                          _loc1_ = §§pop();
                                          §§goto(addr64);
                                       }
                                       addr63:
                                    }
                                    §§goto(addr63);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr64);
               }
               else
               {
                  §§push(§1!b§[_loc1_] is §=1§);
               }
               §§goto(addr113);
            }
            §§goto(addr63);
         }
         return §§pop();
      }
   }
}

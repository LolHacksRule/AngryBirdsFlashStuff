package §]">§
{
   import §"!&§.§!"7§;
   import §"!&§.§%F§;
   import §"!&§.§+W§;
   import §"!&§.§3",§;
   import §"!&§.§8X§;
   import §"!&§.§`D§;
   import §'!&§.b2Fixture;
   import §'!&§.b2World;
   import §'4§.§^g§;
   import §1"H§.§!v§;
   import §1"H§.§'" §;
   import §1"H§.§+>§;
   import §1"H§.§1f§;
   import §1"H§.§4h§;
   import §1"H§.§<!I§;
   import §1"H§.§=!3§;
   import §1"H§.§>!b§;
   import §3c§.b2AABB;
   import §4&§.§#r§;
   import §4&§.§'!"§;
   import §7!8§.Sprite;
   import §@w§.§`a§;
   import §`!j§.§2!7§;
   
   public class §@!q§ extends §0!D§
   {
       
      
      public function §@!q§(param1:§^g§, param2:§2!7§, param3:Sprite, param4:String, param5:String = "", param6:String = "")
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      override protected function getCommonTextureName() : String
      {
         return §!"7§.§%"=§;
      }
      
      override protected function createObjectInstance(param1:§`a§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §<!=§
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc8_:* = null;
         var _loc9_:* = param1.type;
         if(!_loc10_)
         {
            if("BIRD_BLUE" === _loc9_)
            {
               if(!_loc10_)
               {
                  §§push(0);
                  if(_loc10_ && param3)
                  {
                     addr126:
                  }
               }
               else
               {
                  addr99:
                  §§push(1);
                  if(!(_loc11_ || param2))
                  {
                     addr133:
                  }
               }
            }
            else if("BIRD_BLACK" === _loc9_)
            {
               if(_loc11_)
               {
                  §§goto(addr99);
               }
               else
               {
                  addr118:
                  §§push(2);
                  if(_loc11_ || this)
                  {
                     §§goto(addr126);
                  }
                  addr138:
                  switch(§§pop())
                  {
                     case 0:
                        param1.type = "smallbluebird";
                        break;
                        addr71:
                     case 1:
                        param1.type = "blackbird";
                        addr58:
                        if(_loc11_ || param3)
                        {
                           addr45:
                           break;
                        }
                        §§goto(addr71);
                        break;
                     case 2:
                        param1.type = "redbird";
                        break;
                        addr51:
                     case 3:
                        param1.type = "redbigbird";
                        if(_loc11_)
                        {
                           if(_loc11_ || param3)
                           {
                              if(!(_loc10_ && param1))
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 §§goto(addr58);
                              }
                              §§goto(addr45);
                           }
                           else
                           {
                              §§goto(addr51);
                           }
                        }
                  }
                  var _loc5_:§`D§;
                  if(!(_loc5_ = §?>§.levelItemManager.getItem(param1.type) as §`D§))
                  {
                     if(_loc11_)
                     {
                        §§push(param1.type);
                        if(_loc11_)
                        {
                           §§push(§§pop());
                           if(_loc11_)
                           {
                              §§push(_loc8_ = §§pop());
                              if(!(_loc10_ && param2))
                              {
                                 addr169:
                                 if(§§pop().indexOf("SCORE") != -1)
                                 {
                                    if(_loc11_ || param2)
                                    {
                                       addr180:
                                       §§push(§1f§.§!!p§);
                                       if(_loc11_)
                                       {
                                          addr184:
                                          §§push(§§pop());
                                          if(_loc10_)
                                          {
                                          }
                                          §§goto(addr222);
                                       }
                                       _loc8_ = §§pop();
                                    }
                                 }
                                 if(!(_loc5_ = §?>§.levelItemManager.getItem(_loc8_) as §`D§))
                                 {
                                    if(!_loc10_)
                                    {
                                       throw new Error("Can\'t find definition for name: \'" + param1.type + "\'");
                                    }
                                    addr219:
                                    §§push(_loc5_.itemName);
                                 }
                                 §§goto(addr219);
                              }
                              addr222:
                              var _loc6_:* = §§pop();
                              var _loc7_:§#r§ = §?>§.animationManager.getAnimation(_loc6_);
                              if(!(_loc10_ && param2))
                              {
                                 §§push(_loc5_ is §%F§);
                                 loop0:
                                 while(!§§pop())
                                 {
                                    loop1:
                                    while(true)
                                    {
                                       §§push(_loc5_ is §+W§);
                                       if(!(_loc11_ || this))
                                       {
                                          break;
                                       }
                                       if(!§§pop())
                                       {
                                          loop2:
                                          while(_loc5_.itemType != §8X§.§<g§)
                                          {
                                             loop3:
                                             while(true)
                                             {
                                                §§push(param1.type);
                                                loop4:
                                                while(true)
                                                {
                                                   §§push(§14§.§!!p§);
                                                   loop5:
                                                   while(true)
                                                   {
                                                      if(§§pop().indexOf(§§pop()) != -1)
                                                      {
                                                         if(_loc11_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr389);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(param1.type);
                                                         loop8:
                                                         while(_loc11_ || param1)
                                                         {
                                                            §§push(§,!@§.§!!p§);
                                                            if(!(_loc10_ && param1))
                                                            {
                                                               if(§§pop().indexOf(§§pop()) != -1)
                                                               {
                                                                  addr315:
                                                                  if(!(_loc10_ && param1))
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        return new §,!@§(param2,_loc7_,§?>§.mLevelEngine.mWorld,_loc5_,param1,param4);
                                                                     }
                                                                     break loop0;
                                                                  }
                                                                  break loop2;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(!(_loc10_ && param3))
                                                                  {
                                                                     if(§§pop().substr(0,13) == "BLOCK_STATIC_")
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           if(_loc11_)
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 return this.createObjectBlockSpace(param2,_loc7_,§?>§.mLevelEngine.mWorld,_loc5_,param1.x,param1.y,param1.angle,param4);
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§goto(addr285);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr315);
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               addr237:
                                                               return super.createObjectInstance(param1,param2,param3,param4);
                                                               continue;
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue loop4;
                                                      }
                                                   }
                                                   if(!_loc10_)
                                                   {
                                                      §§goto(addr348);
                                                   }
                                                   if(!_loc10_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                          }
                                          return this.addObjectPig(param1,param2,_loc7_,_loc5_,param4);
                                       }
                                       addr389:
                                       while(_loc11_)
                                       {
                                          if(!(_loc10_ && this))
                                          {
                                             §§goto(addr237);
                                          }
                                       }
                                       return this.addObjectBird(param1,param2,_loc7_,_loc5_,param4,param3);
                                    }
                                 }
                                 return this.addParticleSpace(param1,param2,_loc7_);
                              }
                              addr348:
                              return new §14§(param2,_loc7_,§?>§.mLevelEngine.mWorld,_loc5_,param1,param4);
                           }
                           §§goto(addr169);
                        }
                        §§goto(addr184);
                     }
                     §§goto(addr180);
                  }
                  §§goto(addr219);
               }
            }
            else
            {
               if("BIRD_RED" === _loc9_)
               {
                  if(_loc11_ || param2)
                  {
                     §§goto(addr118);
                  }
                  §§goto(addr138);
               }
               else
               {
                  if("BIRD_REDBIG" !== _loc9_)
                  {
                     §§goto(addr118);
                     §§push(4);
                  }
                  §§goto(addr118);
               }
               if(!_loc10_)
               {
                  §§goto(addr133);
               }
            }
         }
         §§goto(addr118);
      }
      
      override protected function createObjectBlockSpace(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number) : §-"A§
      {
         return new §[!p§(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override protected function addObjectPig(param1:§`a§, param2:Sprite, param3:§#r§, param4:§8X§, param5:Number = 1.0) : §50§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            if(param3.hasSubAnimation(§3",§.§#"B§))
            {
               if(_loc7_)
               {
                  return new §+"A§(param2,param3,§?>§.mLevelEngine.mWorld,param4,param1.x,param1.y,param1.angle,param5);
               }
            }
         }
         return super.addObjectPig(param1,param2,param3,param4,param5);
      }
      
      override protected function shakeCameraOnCollision(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc6_)
         {
            §§push(param1);
            loop0:
            while(§§pop() > 50)
            {
               loop1:
               while(true)
               {
                  §§push(Number(Math.max(param2,param3)));
                  loop2:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(Number(Math.min(param1,_loc4_)));
                        while(!(_loc7_ && param2))
                        {
                           if(!_loc6_)
                           {
                              continue loop0;
                           }
                           param1 = §§pop();
                           while(true)
                           {
                              §§push(Number(3000000));
                              loop6:
                              while(true)
                              {
                                 _loc5_ = §§pop();
                                 addr104:
                                 while(!(_loc7_ && this))
                                 {
                                    continue loop6;
                                 }
                                 continue loop3;
                              }
                           }
                           if(_loc7_ && param3)
                           {
                              continue;
                           }
                           param1 = §§pop();
                           loop8:
                           while(!_loc7_)
                           {
                              if(!_loc7_)
                              {
                                 if(_loc7_)
                                 {
                                    continue loop1;
                                 }
                                 while(true)
                                 {
                                    §§push(§§findproperty(§&c§));
                                    §§push(true);
                                    §§push(0.2);
                                    §§push(5 * param1);
                                    if(!_loc7_)
                                    {
                                       §§push(_loc5_);
                                       if(!_loc7_)
                                       {
                                          addr40:
                                          §§push(§§pop() / §§pop());
                                          §§push(param1);
                                          if(_loc6_)
                                          {
                                             §§push(§§pop() / _loc5_);
                                             if(!(_loc7_ && param1))
                                             {
                                                addr52:
                                                §§push(§§pop() * 500);
                                             }
                                             §§pop().§&c§(§§pop(),§§pop(),§§pop(),§§pop());
                                             if(!_loc7_)
                                             {
                                                break loop0;
                                             }
                                             continue loop8;
                                          }
                                       }
                                       §§goto(addr52);
                                    }
                                    §§goto(addr40);
                                 }
                              }
                              else
                              {
                                 §§goto(addr128);
                              }
                           }
                           §§goto(addr104);
                        }
                        continue loop2;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr99);
      }
      
      override protected function shakeCameraOnExplosion(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Number = 900;
         if(_loc3_)
         {
            §§push(§§findproperty(§&c§));
            §§push(true);
            §§push(0.2);
            §§push(param1);
            if(!_loc4_)
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  §§push(§§pop() / §§pop());
                  if(_loc4_ && param1)
                  {
                  }
                  §§goto(addr50);
               }
               §§goto(addr58);
            }
            §§goto(addr50);
         }
         addr50:
         §§push(§§pop() * 4);
         §§push(param1);
         if(!(_loc4_ && _loc2_))
         {
            addr58:
            §§push(§§pop() / _loc2_);
            if(!(_loc4_ && _loc2_))
            {
               §§push(§§pop() * 400);
            }
         }
         §§pop().§&c§(§§pop(),§§pop(),§§pop(),§§pop());
      }
      
      override protected function addParticleSpace(param1:§`a§, param2:Sprite, param3:§#r§) : §<!=§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc11_:§'!"§ = null;
         §§push(param1.type);
         if(!(_loc12_ && param1))
         {
            §§push(§§pop());
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(_loc13_ || param1)
         {
            if(§§pop().indexOf("SCORE") != -1)
            {
               if(!(_loc12_ && this))
               {
                  §§push(§1f§.§!!p§);
                  if(!(_loc12_ && param1))
                  {
                     addr59:
                     §§push(§§pop());
                  }
                  _loc4_ = §§pop();
               }
            }
            §§push(param1.x);
            if(!(_loc12_ && this))
            {
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(param1.y);
            if(_loc13_)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(param1.angle);
            if(_loc13_)
            {
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            §§push(param1.§2]§);
            if(!(_loc12_ && param1))
            {
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            §§push(param1.§0!Z§);
            if(!(_loc12_ && param3))
            {
               §§push(Number(§§pop()));
            }
            var _loc9_:* = §§pop();
            var _loc10_:§%F§;
            if(!(_loc10_ = §?>§.levelItemManager.getItem(_loc4_) as §%F§))
            {
               if(_loc13_ || param1)
               {
                  return null;
               }
               loop4:
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     §§push(_loc4_);
                     if(!_loc12_)
                     {
                        if(_loc13_)
                        {
                           if(§§pop().indexOf("Trail") == -1)
                           {
                              loop6:
                              while(true)
                              {
                                 if(_loc10_.amount == 1)
                                 {
                                    if(!(_loc12_ && param1))
                                    {
                                       if(!_loc12_)
                                       {
                                          if(_loc13_)
                                          {
                                             if(_loc13_)
                                             {
                                                §§goto(addr247);
                                             }
                                             loop14:
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                loop15:
                                                while(true)
                                                {
                                                   if(§§pop().indexOf("burningAsteroidFire") == -1)
                                                   {
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         addr367:
                                                         addr381:
                                                         while(true)
                                                         {
                                                            if(!(_loc13_ || param3))
                                                            {
                                                               continue loop15;
                                                            }
                                                            if(_loc13_ || param1)
                                                            {
                                                               break;
                                                            }
                                                            addr421:
                                                            while(true)
                                                            {
                                                               if(§§pop().indexOf("explosionBuff") != -1)
                                                               {
                                                                  §§goto(addr425);
                                                               }
                                                               continue loop14;
                                                            }
                                                            continue loop16;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§<!I§.§!!p§);
                                                            loop10:
                                                            while(true)
                                                            {
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  break loop6;
                                                               }
                                                               loop1:
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_);
                                                                  addr340:
                                                                  while(_loc13_)
                                                                  {
                                                                     §§push(§=!3§.§!!p§);
                                                                     if(_loc13_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() != §§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(_loc10_.amount > 3)
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 if(!(_loc12_ && this))
                                                                                 {
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       return new §>!b§(param2,param3,§?>§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
                                                                                    }
                                                                                    addr425:
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       return new §>!b§(param2,param3,§?>§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
                                                                                    }
                                                                                    §§goto(addr447);
                                                                                 }
                                                                                 addr364:
                                                                              }
                                                                           }
                                                                           if(_loc13_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr397:
                                                                           while(true)
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                        }
                                                                        return new §=!3§(param2,param3,§?>§.mLevelEngine.mWorld,_loc10_,param1.x,param1.y);
                                                                        addr346:
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  §§goto(addr367);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr365:
                                                   }
                                                }
                                             }
                                          }
                                          else if(_loc13_)
                                          {
                                             §§goto(addr364);
                                          }
                                          return new §>!b§(param2,param3,§?>§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,0,1,3);
                                       }
                                       continue;
                                    }
                                    if(!(_loc13_ || param1))
                                    {
                                       addr288:
                                       if(!_loc12_)
                                       {
                                          if(_loc13_)
                                          {
                                             return new §'" §(param2,param3,§?>§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
                                          }
                                          break;
                                       }
                                       continue loop4;
                                    }
                                    if(_loc13_ || param2)
                                    {
                                       if(!_loc12_)
                                       {
                                          §§goto(addr205);
                                       }
                                       break loop5;
                                    }
                                    §§goto(addr365);
                                 }
                                 addr205:
                                 return new §4h§(param2,param3,§?>§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
                              }
                              return new §<!I§(param2,param3,§?>§.mLevelEngine.mWorld,_loc10_,param1.x,param1.y);
                           }
                           §§goto(addr288);
                        }
                        else
                        {
                           addr443:
                           while(true)
                           {
                              if(§§pop().indexOf("gravityBuff") == -1)
                              {
                                 break loop5;
                              }
                           }
                           addr443:
                        }
                        addr447:
                        return new §4h§(param2,param3,§?>§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
                     }
                     §§goto(addr340);
                  }
                  while(true)
                  {
                     §§goto(addr421);
                  }
               }
            }
            else
            {
               §§push(_loc4_);
               if(!(_loc12_ && param2))
               {
                  §§push(§1f§.§!!p§);
                  if(_loc13_ || param2)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc13_ || param3)
                        {
                           _loc11_ = §?>§.textureManager.getTexture(param1.type);
                           if(!(_loc12_ && param3))
                           {
                              return new §1f§(_loc11_,param2,§?>§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
                           }
                           addr177:
                           §§push(_loc4_);
                           if(_loc13_)
                           {
                              §§push(§]"-§.§]2§);
                              if(!_loc12_)
                              {
                                 §§goto(addr184);
                              }
                              §§goto(addr346);
                           }
                           §§goto(addr381);
                        }
                        §§goto(addr397);
                     }
                     §§goto(addr177);
                  }
                  addr184:
                  if(§§pop() == §§pop())
                  {
                     if(_loc13_ || param1)
                     {
                        return new §!v§(param2,§?>§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_);
                     }
                  }
                  else
                  {
                     §§goto(addr443);
                     §§push(_loc4_);
                  }
                  addr247:
                  return new §>!b§(param2,param3,§?>§.mLevelEngine.mWorld,_loc10_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
               }
            }
            §§goto(addr443);
         }
         §§goto(addr59);
      }
      
      private function §7"F§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§+>§ = null;
         for each(_loc1_ in §3R§)
         {
            if(!_loc4_)
            {
               if(_loc1_ is §!v§)
               {
                  if(!_loc4_)
                  {
                     (_loc1_ as §!v§).§[U§();
                  }
               }
            }
         }
      }
      
      override protected function addObjectBird(param1:§`a§, param2:Sprite, param3:§#r§, param4:§8X§, param5:Number = 1.0, param6:Boolean = true) : § 6§
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!_loc13_)
         {
            this.§7"F§();
         }
         §§push(param1.type);
         if(_loc12_ || param2)
         {
            §§push(§§pop());
         }
         var _loc7_:* = §§pop();
         §§push(param1.x);
         if(!(_loc13_ && param3))
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         §§push(param1.y);
         if(!(_loc13_ && param3))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(param1.angle);
         if(_loc12_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         var _loc11_:§+W§;
         if(_loc11_ = param4 as §+W§)
         {
            if(!(_loc13_ && this))
            {
               §§push(_loc7_);
               if(_loc12_ || this)
               {
                  §§push(§!!r§.§!!p§);
                  if(!(_loc13_ && param1))
                  {
                     if(§§pop().indexOf(§§pop()) == 0)
                     {
                        if(_loc12_)
                        {
                           return new §!!r§(param2,param3,§?>§.mLevelEngine.mWorld,_loc11_,_loc8_,_loc9_,_loc10_,param5,param6);
                        }
                     }
                     else
                     {
                        §§push(_loc7_);
                        while(true)
                        {
                           §§push(§`!R§.§!!p§);
                           addr309:
                           addr312:
                           while(§§pop().indexOf(§§pop()) != 0)
                           {
                              while(true)
                              {
                                 §§push(_loc7_);
                                 addr286:
                                 while(true)
                                 {
                                    §§push(§]"-§.§!!p§);
                                    §§goto(addr288);
                                 }
                              }
                           }
                           addr312:
                           return new §`!R§(param2,param3,§?>§.mLevelEngine.mWorld,_loc11_,_loc8_,_loc9_,_loc10_,param5,param6);
                        }
                     }
                     return new §=!;§(param2,param3,§?>§.mLevelEngine.mWorld,_loc11_,_loc8_,_loc9_,_loc10_,param5,param6);
                  }
                  addr288:
                  while(§§pop().indexOf(§§pop()) != 0)
                  {
                     loop5:
                     while(true)
                     {
                        §§push(_loc7_);
                        loop6:
                        while(true)
                        {
                           §§push(§=!;§.§!!p§);
                           addr259:
                           while(§§pop().indexOf(§§pop()) != 0)
                           {
                              while(true)
                              {
                                 §§push(_loc7_);
                                 addr208:
                                 while(true)
                                 {
                                    if(_loc12_ || param2)
                                    {
                                       continue loop0;
                                    }
                                    continue loop6;
                                 }
                                 continue loop1;
                              }
                           }
                           addr262:
                           while(_loc13_ && param3)
                           {
                              while(true)
                              {
                                 continue loop5;
                              }
                           }
                        }
                     }
                  }
                  addr291:
                  return new §]"-§(param2,param3,§?>§.mLevelEngine.mWorld,_loc11_,_loc8_,_loc9_,_loc10_,param5,param6);
               }
               §§goto(addr145);
            }
            §§goto(addr305);
         }
         §§goto(addr123);
      }
      
      override protected function getLevelTextureName() : String
      {
         return super.getLevelTextureName();
      }
      
      override public function updateObjects(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§1!0§ = null;
         var _loc2_:§<!=§ = null;
         var _loc3_:* = int(§-`§.length - 1);
         loop0:
         while(_loc3_ >= 0)
         {
            _loc2_ = §-`§[_loc3_];
            if(!(_loc6_ && param1))
            {
               if(_loc2_.removeOnNextUpdate)
               {
                  if(!_loc6_)
                  {
                     addr46:
                     §-"C§(_loc3_,true);
                     if(!_loc5_)
                     {
                        continue;
                     }
                  }
                  else
                  {
                     addr59:
                     _loc4_ = _loc2_ as §1!0§;
                     if(!(_loc6_ && _loc3_))
                     {
                        if(§"=§(_loc2_))
                        {
                           if(!_loc6_)
                           {
                              §-"C§(_loc3_,false);
                           }
                        }
                        else
                        {
                           §§push(Boolean(_loc4_));
                           if(_loc5_)
                           {
                              if(§§pop())
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§pop();
                                    addr130:
                                    loop3:
                                    while(true)
                                    {
                                       §§push(_loc4_.isReadyToBeRemoved(param1));
                                       if(!(_loc6_ && param1))
                                       {
                                          if(_loc6_ && this)
                                          {
                                             continue loop4;
                                          }
                                          addr100:
                                          §§push(Boolean(§§pop()));
                                          while(true)
                                          {
                                             break loop3;
                                             §§goto(addr100);
                                          }
                                       }
                                       break;
                                    }
                                    while(§§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          §-"C§(_loc3_,false);
                                       }
                                       if(_loc5_ || this)
                                       {
                                          if(!_loc6_)
                                          {
                                             addr118:
                                             if(false)
                                             {
                                             }
                                             break;
                                          }
                                          addr141:
                                          break;
                                       }
                                       §§goto(addr130);
                                    }
                                    addr142:
                                    §§push(_loc3_);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc3_ = §§pop();
                                    continue loop0;
                                 }
                                 addr129:
                              }
                              §§goto(addr101);
                           }
                           §§goto(addr129);
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr142);
               }
               else
               {
                  _loc2_.update(param1,this);
                  if(!_loc5_)
                  {
                     continue;
                  }
               }
               §§goto(addr59);
            }
            §§goto(addr46);
         }
         if(_loc5_)
         {
            §7o§(param1);
            if(!(_loc6_ && _loc3_))
            {
               addr172:
               §7q§();
            }
            return;
         }
         §§goto(addr172);
      }
      
      private function §-!g§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : Vector.<§1!0§>
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[7] = null;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               while(true)
               {
                  §§push(param1);
                  loop3:
                  while(true)
                  {
                     §§pop().§§slot[1] = §§pop();
                     if(!(_loc9_ && param3))
                     {
                        §§push(§§newactivation());
                        if(_loc8_ || param3)
                        {
                           §§push(param2);
                           loop4:
                           while(true)
                           {
                              §§pop().§§slot[2] = §§pop();
                              addr267:
                              while(_loc8_)
                              {
                                 §§push(§§newactivation());
                                 if(_loc8_ || param2)
                                 {
                                    §§push(param3);
                                    loop6:
                                    while(_loc8_)
                                    {
                                       §§pop().§§slot[3] = §§pop();
                                       loop7:
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc8_)
                                          {
                                             §§push(param4);
                                             while(true)
                                             {
                                                if(_loc9_)
                                                {
                                                   continue loop6;
                                                }
                                                if(_loc9_ && this)
                                                {
                                                   break;
                                                }
                                                §§pop().§§slot[4] = §§pop();
                                                while(true)
                                                {
                                                   §§push(§§newactivation());
                                                   continue loop0;
                                                   addr195:
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      continue loop7;
                                                   }
                                                }
                                             }
                                             continue loop3;
                                             addr231:
                                          }
                                          else
                                          {
                                             addr295:
                                          }
                                          §§pop().§§slot[9] = function aabbCallback(param1:b2Fixture):Boolean
                                          {
                                             var _loc2_:§1!0§ = param1.GetBody().GetUserData() as §1!0§;
                                             if(_loc2_ != null)
                                             {
                                                objects.push(§1!0§(_loc2_));
                                             }
                                             return true;
                                          };
                                          if(_loc8_)
                                          {
                                             §?>§.mLevelEngine.mWorld.QueryAABB(callBack,aabb);
                                             addr307:
                                          }
                                          §§push(§§newactivation());
                                       }
                                    }
                                    continue loop4;
                                 }
                              }
                              continue loop1;
                           }
                        }
                        §§goto(addr326);
                     }
                     §§goto(addr307);
                  }
                  while(!(_loc9_ && param2))
                  {
                     §§pop().§§slot[7] = new Vector.<§1!0§>();
                     if(_loc8_ || param2)
                     {
                        §§push(§§newactivation());
                        loop14:
                        while(true)
                        {
                           if(!_loc9_)
                           {
                              addr137:
                              if(_loc9_ && param2)
                              {
                                 break;
                              }
                              §§pop().§§slot[8] = new b2AABB();
                              while(true)
                              {
                                 addr80:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    if(!(_loc9_ && param1))
                                    {
                                       §§push(§§pop().§§slot[8]);
                                       while(true)
                                       {
                                          §§push(§§pop().§<!@§);
                                          §§push(x);
                                          if(_loc8_ || param3)
                                          {
                                             §§push(§§newactivation());
                                             if(!_loc9_)
                                             {
                                                §§push(§§pop().§§slot[3]);
                                                if(_loc8_ || param2)
                                                {
                                                   addr113:
                                                   §§push(§§pop() + §§pop());
                                                   §§push(y);
                                                   if(_loc8_ || param3)
                                                   {
                                                      §§push(§§pop() + down);
                                                   }
                                                }
                                                §§pop().Set(§§pop(),§§pop());
                                                if(_loc9_ && this)
                                                {
                                                   break;
                                                }
                                                §§push(§§newactivation());
                                                if(!(_loc9_ && param2))
                                                {
                                                   continue loop14;
                                                }
                                                §§goto(addr326);
                                             }
                                          }
                                          §§goto(addr113);
                                       }
                                       addr90:
                                    }
                                    else
                                    {
                                       §§goto(addr295);
                                    }
                                 }
                                 addr69:
                                 §§goto(addr267);
                                 if(!(_loc8_ || param2))
                                 {
                                    continue;
                                 }
                                 if(_loc8_)
                                 {
                                    if(false)
                                    {
                                       §§goto(addr80);
                                    }
                                    else
                                    {
                                       §§push(§§newactivation());
                                       if(_loc8_ || param1)
                                       {
                                          §§goto(addr295);
                                       }
                                    }
                                    addr326:
                                    return §§pop().§§slot[7];
                                 }
                                 §§goto(addr267);
                                 §§goto(addr269);
                              }
                           }
                           else
                           {
                              loop12:
                              while(true)
                              {
                                 §§push(param6);
                                 if(_loc8_ || param3)
                                 {
                                    §§pop().§§slot[6] = §§pop();
                                    if(!_loc9_)
                                    {
                                       §§goto(addr195);
                                    }
                                    break;
                                 }
                                 addr220:
                                 while(!_loc9_)
                                 {
                                    §§pop().§§slot[5] = §§pop();
                                    if(!_loc9_)
                                    {
                                       §§push(§§newactivation());
                                    }
                                    continue loop12;
                                 }
                                 §§goto(addr231);
                              }
                              §§goto(addr307);
                           }
                        }
                        continue loop0;
                     }
                     §§goto(addr295);
                     if(_loc9_ && this)
                     {
                        continue;
                     }
                     §§push(§§pop().§§slot[8]);
                     if(_loc8_)
                     {
                        §§push(§§pop().§2!1§);
                        §§push(x);
                        if(_loc8_)
                        {
                           §§push(§§newactivation());
                           if(!_loc9_)
                           {
                              §§push(§§pop().§§slot[4]);
                              if(_loc8_)
                              {
                                 addr60:
                                 §§push(§§pop() + §§pop());
                                 §§push(y);
                                 if(!_loc9_)
                                 {
                                    addr63:
                                    §§push(§§pop() + up);
                                 }
                                 §§pop().Set(§§pop(),§§pop());
                                 if(_loc8_)
                                 {
                                    §§goto(addr69);
                                 }
                                 §§goto(addr295);
                              }
                              §§goto(addr63);
                           }
                        }
                        §§goto(addr60);
                     }
                     §§goto(addr90);
                  }
               }
            }
         }
      }
      
      override protected function checkCameraBoundaries(param1:§<!=§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(Boolean(param1));
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop())
               {
                  addr147:
                  while(true)
                  {
                     §§pop();
                     addr148:
                     while(true)
                     {
                        §§push(Boolean(param1.levelItem));
                     }
                  }
                  addr147:
               }
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(param1 is §+"A§);
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    if(§#"$§(param1.§^!z§().GetPosition().x,param1.§^!z§().GetPosition().y))
                                    {
                                       if(!(_loc2_ && param1))
                                       {
                                          addr114:
                                          if(_loc2_ && this)
                                          {
                                             break;
                                          }
                                          §+"A§(param1).updateOutOfCamera();
                                       }
                                       while(true)
                                       {
                                          §§goto(addr29);
                                       }
                                    }
                                    §§goto(addr29);
                                 }
                                 §§goto(addr114);
                              }
                              addr29:
                              §§goto(addr25);
                           }
                           continue loop0;
                        }
                     }
                     addr25:
                     loop5:
                     while(true)
                     {
                        §§push(param1 is §6!y§);
                        if(_loc2_)
                        {
                           continue loop3;
                        }
                        if(_loc2_)
                        {
                           continue loop1;
                        }
                        if(!_loc2_)
                        {
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                                 continue loop4;
                              }
                              addr77:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    §6!y§(param1).updateOutOfCamera();
                                    addr83:
                                    break loop5;
                                 }
                                 continue loop2;
                              }
                           }
                           break;
                        }
                        §§goto(addr147);
                     }
                     addr25:
                     return;
                  }
               }
            }
            §§goto(addr147);
         }
         §§goto(addr49);
      }
   }
}

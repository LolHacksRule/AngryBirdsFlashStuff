package §3p§
{
   import § D§.§]!B§;
   import §&=§.§0'§;
   import §&=§.LevelParticleManager;
   import §2!H§.LevelMain;
   import §6!7§.Sprite;
   import §]=§.b2World;
   
   public class §0w§ extends LevelObject
   {
       
      
      private var §,b§:int = 0;
      
      public function §0w§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_ || this)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
            while(true)
            {
               §!!<§ = param12;
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            §0!§ = param13;
            if(_loc15_ || param2)
            {
               if(_loc15_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function addDestructionParticles(param1:LevelParticleManager) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:int = 0;
         var _loc2_:Number = 4;
         var _loc3_:int = Math.min(49,Math.max(1,§%W§(false))) + 1;
         var _loc4_:* = Number(90);
         §§push(0);
         if(!_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(_loc11_ || _loc3_)
            {
               if(!_loc10_)
               {
                  if(_loc11_)
                  {
                     if(§§pop() >= _loc3_)
                     {
                        if(!(_loc10_ && _loc2_))
                        {
                           if(_loc11_)
                           {
                              if(!_loc10_)
                              {
                                 break;
                              }
                              loop1:
                              while(true)
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    addr83:
                                    while(true)
                                    {
                                       if(_loc11_ || _loc2_)
                                       {
                                          §§push(§§pop() + 1);
                                          while(true)
                                          {
                                             if(!_loc10_)
                                             {
                                                §§push(int(§§pop()));
                                                while(true)
                                                {
                                                   _loc5_ = §§pop();
                                                   addr95:
                                                   while(!_loc11_)
                                                   {
                                                      while(!(_loc10_ && param1))
                                                      {
                                                         continue loop1;
                                                      }
                                                      loop19:
                                                      while(_loc11_)
                                                      {
                                                         §§push(_loc8_);
                                                         if(!(_loc10_ && this))
                                                         {
                                                            if(!(_loc10_ && param1))
                                                            {
                                                               addr286:
                                                               if(_loc11_ || _loc3_)
                                                               {
                                                                  if(!(_loc10_ && _loc3_))
                                                                  {
                                                                     §§push(Math.random() * -_loc8_);
                                                                     if(_loc11_ || _loc2_)
                                                                     {
                                                                        addr313:
                                                                        if(!(_loc10_ && _loc2_))
                                                                        {
                                                                           addr320:
                                                                           §§push(2);
                                                                           if(_loc11_ || this)
                                                                           {
                                                                              addr329:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!(_loc10_ && param1))
                                                                              {
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!(_loc10_ && this))
                                                                                    {
                                                                                       addr346:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    _loc8_ = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          if(§!!<§ != "")
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          addr154:
                                                                                          addr100:
                                                                                          param1.§@4§(§0'§.§4!C§,LevelParticleManager.§[K§,§0'§.§&A§,§9f§().GetPosition().x + _loc7_,§9f§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§%!`§(§#>§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc10_ && param1))
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             loop4:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(-§7!O§.mW);
                                                                                                loop5:
                                                                                                while(_loc11_)
                                                                                                {
                                                                                                   §§push(LevelMain.§8N§);
                                                                                                   loop6:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      loop7:
                                                                                                      while(_loc11_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         loop8:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc7_ = §§pop();
                                                                                                            loop9:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc7_);
                                                                                                               loop10:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Math.random() * -_loc7_);
                                                                                                                  addr393:
                                                                                                                  addr456:
                                                                                                                  while(_loc11_)
                                                                                                                  {
                                                                                                                     §§push(2);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        addr397:
                                                                                                                        while(!_loc10_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 continue loop8;
                                                                                                                              }
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              loop15:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    continue loop7;
                                                                                                                                 }
                                                                                                                                 if(_loc11_ || param1)
                                                                                                                                 {
                                                                                                                                    _loc7_ = §§pop();
                                                                                                                                    while(!_loc10_)
                                                                                                                                    {
                                                                                                                                       §§push(-§7!O§.mH);
                                                                                                                                       if(_loc11_)
                                                                                                                                       {
                                                                                                                                          §§push(LevelMain.§8N§);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc11_)
                                                                                                                                             {
                                                                                                                                                if(_loc11_)
                                                                                                                                                {
                                                                                                                                                   continue loop10;
                                                                                                                                                }
                                                                                                                                                continue loop15;
                                                                                                                                             }
                                                                                                                                             addr381:
                                                                                                                                             addr381:
                                                                                                                                             addr381:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc8_ = §§pop();
                                                                                                                                                continue loop19;
                                                                                                                                             }
                                                                                                                                             §§goto(addr313);
                                                                                                                                          }
                                                                                                                                          addr464:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          break loop7;
                                                                                                                                          addr361:
                                                                                                                                       }
                                                                                                                                       §§goto(addr381);
                                                                                                                                    }
                                                                                                                                    continue loop9;
                                                                                                                                    addr415:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr472:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Math.random() * (720 / _loc3_));
                                                                                                                                    break loop15;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 addr480:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    break loop5;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr286);
                                                                                                                           }
                                                                                                                           continue loop5;
                                                                                                                        }
                                                                                                                        continue loop6;
                                                                                                                        §§goto(addr320);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  if(!(_loc10_ && this))
                                                                                                                  {
                                                                                                                     §§goto(addr464);
                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                  }
                                                                                                                  §§goto(addr479);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      §§goto(addr480);
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc4_ = §§pop();
                                                                                                   break loop19;
                                                                                                   §§goto(addr480);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr100);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr415);
                                                                                    }
                                                                                    §§goto(addr262);
                                                                                 }
                                                                                 §§goto(addr393);
                                                                              }
                                                                              §§goto(addr397);
                                                                           }
                                                                           §§goto(addr396);
                                                                        }
                                                                        §§goto(addr361);
                                                                     }
                                                                     §§goto(addr329);
                                                                  }
                                                                  addr441:
                                                                  §§goto(addr456);
                                                                  §§push(180 / Math.PI);
                                                               }
                                                               §§goto(addr400);
                                                            }
                                                            §§goto(addr381);
                                                         }
                                                         §§goto(addr346);
                                                      }
                                                      addr262:
                                                      §§goto(addr441);
                                                      §§push(_loc4_);
                                                   }
                                                   continue loop0;
                                                }
                                                addr94:
                                             }
                                             §§goto(addr250);
                                          }
                                          addr91:
                                       }
                                       §§goto(addr261);
                                    }
                                 }
                              }
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr95);
                     }
                     else
                     {
                        §§push(_loc4_);
                     }
                     §§goto(addr472);
                  }
                  §§goto(addr83);
               }
               §§goto(addr91);
            }
            §§goto(addr94);
         }
      }
      
      override public function addDamageParticles(param1:LevelParticleManager, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:LevelMain = §]!B§.§>F§;
         if(_loc5_ || _loc2_)
         {
            §§push(§0o§ < §]!3§);
            if(_loc5_ || this)
            {
               §§push(Boolean(§§pop()));
               if(_loc5_)
               {
                  §§push(§§pop());
                  if(_loc5_ || _loc2_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     loop10:
                     while(true)
                     {
                        §§pop();
                        addr109:
                        while(true)
                        {
                           §§push(§9f§() == null);
                           if(!_loc5_)
                           {
                              break;
                           }
                           continue loop10;
                        }
                        addr77:
                        if(§§pop())
                        {
                           _loc1_.§[]§(this);
                           do
                           {
                              _loc1_.§>!=§ = false;
                           }
                           while(!_loc5_);
                           
                           return;
                        }
                        §§push(x * LevelMain.§8N§);
                        if(_loc5_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        §§push(y * LevelMain.§8N§);
                        if(!_loc6_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc3_:* = §§pop();
                        §§push(§0'§.PARTICLE_NAME_BIRD_TRAIL1);
                        if(_loc5_)
                        {
                           §§push(§§pop());
                        }
                        var _loc4_:* = §§pop();
                        if(_loc5_ || _loc3_)
                        {
                           §§push(this.§,b§);
                           loop0:
                           while(true)
                           {
                              §§push(1);
                              addr250:
                              while(§§pop() != §§pop())
                              {
                                 continue loop0;
                              }
                              loop2:
                              while(true)
                              {
                                 §§push(§0'§.PARTICLE_NAME_BIRD_TRAIL2);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop());
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                    loop4:
                                    while(true)
                                    {
                                       addr197:
                                       loop5:
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§,b§ + 1);
                                          if(_loc5_ || this)
                                          {
                                             §§push(§§pop() % 3);
                                          }
                                          §§pop().§,b§ = §§pop();
                                          while(!_loc6_)
                                          {
                                             _loc1_.particles.§@4§(_loc4_,LevelParticleManager.§^![§,§0'§.§ 6§,_loc2_,_loc3_,-1,"",§0'§.§&"§);
                                             if(!(_loc5_ || this))
                                             {
                                                continue;
                                             }
                                             if(_loc6_ && _loc2_)
                                             {
                                                continue loop5;
                                             }
                                             if(_loc5_)
                                             {
                                                break loop5;
                                             }
                                             addr237:
                                             while(true)
                                             {
                                                §§push(§0'§.PARTICLE_NAME_BIRD_TRAIL3);
                                                if(_loc5_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§push(§§pop());
                                                }
                                                _loc4_ = §§pop();
                                                continue loop5;
                                             }
                                          }
                                          continue loop4;
                                       }
                                       if(_loc5_)
                                       {
                                          return;
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr237);
                     }
                     addr108:
                  }
                  §§goto(addr77);
               }
            }
            §§goto(addr108);
         }
         §§goto(addr109);
      }
   }
}

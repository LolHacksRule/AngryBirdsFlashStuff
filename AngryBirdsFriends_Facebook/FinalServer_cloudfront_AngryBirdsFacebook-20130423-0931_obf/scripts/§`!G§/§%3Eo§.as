package §`!G§
{
   import §&E§.§0i§;
   import §&E§.§6!O§;
   import §'!6§.Sprite;
   import §4!<§.§'!S§;
   import §6"1§.b2World;
   import §@!"§.§?l§;
   
   public class §>o§ extends §[!8§
   {
      
      public static const §1!9§:int = 1750;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §1!9§ = 1750;
         }
      }
      
      private var §%b§:int = 0;
      
      public function §>o§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
            while(true)
            {
               §0"9§ = param12;
               while(!_loc14_)
               {
                  §!"F§ = param13;
                  if(_loc15_ || this)
                  {
                     return;
                     addr55:
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      override public function addDestructionParticles(param1:§6!O§) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:int = 0;
         var _loc2_:Number = 4;
         var _loc3_:int = Math.min(49,Math.max(1,§`!A§(false))) + 1;
         var _loc4_:* = Number(90);
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(!(_loc10_ && _loc2_))
            {
               if(§§pop() >= _loc3_)
               {
                  if(!(_loc11_ || _loc2_))
                  {
                     continue;
                  }
                  if(!_loc10_)
                  {
                     if(_loc11_)
                     {
                        if(!_loc10_)
                        {
                           if(!_loc10_)
                           {
                              if(!_loc10_)
                              {
                                 break;
                              }
                              loop6:
                              while(true)
                              {
                                 §§push(-§2!8§.mH);
                                 if(_loc11_ || _loc2_)
                                 {
                                    if(!(_loc10_ && _loc3_))
                                    {
                                       if(_loc11_ || _loc3_)
                                       {
                                          §§push(§'!S§.§2"<§);
                                          if(_loc11_)
                                          {
                                             addr254:
                                             if(!(_loc10_ && _loc3_))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc11_ || _loc2_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!_loc10_)
                                                   {
                                                      addr272:
                                                      if(_loc11_)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc11_)
                                                         {
                                                            addr277:
                                                            if(_loc11_)
                                                            {
                                                               if(_loc11_)
                                                               {
                                                                  _loc8_ = §§pop();
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr284:
                                                                     if(_loc11_ || _loc3_)
                                                                     {
                                                                        §§push(Math.random() * -_loc8_);
                                                                        if(!_loc10_)
                                                                        {
                                                                           addr298:
                                                                           if(_loc11_)
                                                                           {
                                                                              §§push(2);
                                                                              if(_loc11_)
                                                                              {
                                                                                 addr304:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       addr309:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    if(_loc11_ || _loc2_)
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          if(§0"9§ == "")
                                                                                          {
                                                                                             param1.§"!J§(§0i§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,§1!9§ + Math.random() * 500,"",getParticleMaterialFromEngineMaterial(§@x§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                                                                                             addr129:
                                                                                             break;
                                                                                          }
                                                                                          if(_loc11_ || _loc3_)
                                                                                          {
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                §§push(1);
                                                                                                if(!(_loc10_ && param1))
                                                                                                {
                                                                                                   addr223:
                                                                                                   _loc9_ = §§pop() + Math.floor(Math.random() * §!"F§);
                                                                                                   §§push(param1);
                                                                                                   §§push(§0"9§ + "_");
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      §§push(§§pop() + _loc9_);
                                                                                                   }
                                                                                                   §§pop().§@6§(§§pop(),§0i§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,§1!9§ + Math.random() * 500,"",getParticleMaterialFromEngineMaterial(§@x§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                                                                                                   break;
                                                                                                   addr224:
                                                                                                   addr183:
                                                                                                }
                                                                                                §§goto(addr223);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                loop12:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(-§2!8§.mW);
                                                                                                   if(_loc11_ || this)
                                                                                                   {
                                                                                                      addr330:
                                                                                                      if(_loc11_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(§'!S§.§2"<§);
                                                                                                         loop7:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc10_ && _loc3_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(_loc11_ || this)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc7_ = §§pop();
                                                                                                                  if(!(_loc10_ && _loc2_))
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Math.random() * -_loc7_);
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              addr374:
                                                                                                                              §§push(§§pop() * 2);
                                                                                                                              break;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     addr385:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     break loop7;
                                                                                                                     addr364:
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               addr356:
                                                                                                            }
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         addr386:
                                                                                                         §§push(Number(§§pop()));
                                                                                                         continue loop6;
                                                                                                         addr339:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr404:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         addr405:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc4_ = §§pop();
                                                                                                            addr406:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(180 / Math.PI);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr330);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         addr411:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            addr412:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc6_ = §§pop();
                                                                                                               continue loop12;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr364);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr224);
                                                                                       }
                                                                                       _loc5_++;
                                                                                       continue loop0;
                                                                                       addr318:
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr385);
                                                                              }
                                                                              §§goto(addr374);
                                                                           }
                                                                           §§goto(addr339);
                                                                        }
                                                                        §§goto(addr304);
                                                                     }
                                                                     §§goto(addr412);
                                                                  }
                                                                  §§goto(addr309);
                                                               }
                                                               §§goto(addr405);
                                                            }
                                                            §§goto(addr356);
                                                         }
                                                         §§goto(addr298);
                                                      }
                                                      §§goto(addr386);
                                                   }
                                                   §§goto(addr309);
                                                }
                                                §§goto(addr272);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc11_)
                                                   {
                                                      §§goto(addr404);
                                                      §§push(Number(§§pop()));
                                                   }
                                                   §§goto(addr406);
                                                   §§goto(addr254);
                                                }
                                                addr400:
                                             }
                                             §§goto(addr406);
                                          }
                                          §§goto(addr277);
                                       }
                                       §§goto(addr406);
                                    }
                                    §§goto(addr411);
                                 }
                                 §§goto(addr284);
                              }
                           }
                           §§goto(addr318);
                        }
                        §§goto(addr223);
                     }
                     §§goto(addr183);
                  }
                  §§goto(addr129);
               }
               else
               {
                  §§push(_loc4_);
                  if(!_loc10_)
                  {
                     §§goto(addr400);
                     §§push(Math.random() * (720 / _loc3_));
                  }
               }
               §§goto(addr411);
            }
            §§goto(addr223);
         }
      }
      
      override public function addDamageParticles(param1:§6!O§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§'!S§ = §?l§.§'h§;
         if(_loc5_)
         {
            §§push(§ d§ < §^!2§);
            loop1:
            while(true)
            {
               if(!§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr86:
                     do
                     {
                        §§push(getBody() == null);
                        if(_loc6_ && _loc3_)
                        {
                           continue loop2;
                        }
                     }
                     while(!_loc6_);
                     
                     continue loop1;
                  }
               }
               while(§§pop())
               {
                  if(_loc5_ || _loc3_)
                  {
                     _loc1_.§-"?§(this);
                     addr79:
                     while(true)
                     {
                        _loc1_.§!^§ = false;
                        if(_loc5_ || _loc3_)
                        {
                           break;
                        }
                        §§goto(addr79);
                     }
                     return;
                     addr41:
                  }
                  §§goto(addr86);
               }
            }
         }
         else if(false)
         {
            §§goto(addr41);
         }
         §§push(x * §'!S§.§2"<§);
         if(_loc5_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(y * §'!S§.§2"<§);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(§0i§.PARTICLE_NAME_BIRD_TRAIL1);
         if(_loc5_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         if(_loc5_)
         {
            §§push(this.§%b§);
            loop5:
            while(true)
            {
               §§push(1);
               addr237:
               while(§§pop() != §§pop())
               {
                  continue loop5;
               }
               loop12:
               while(true)
               {
                  §§push(§0i§.PARTICLE_NAME_BIRD_TRAIL2);
                  if(_loc5_)
                  {
                     §§push(§§pop());
                  }
                  addr243:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     loop8:
                     while(true)
                     {
                        addr159:
                        loop10:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§%b§ + 1);
                           if(!_loc6_)
                           {
                              §§push(§§pop() % 3);
                           }
                           §§pop().§%b§ = §§pop();
                           addr170:
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 if(_loc6_ && _loc1_)
                                 {
                                    break;
                                 }
                                 if(_loc5_)
                                 {
                                    continue;
                                 }
                                 continue loop12;
                              }
                              continue loop10;
                           }
                           continue loop8;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            _loc1_.particles.§"!J§(_loc4_,§6!O§.§-4§,§0i§.§>!c§,_loc2_,_loc3_,-1,"",§0i§.§7!z§);
            if(!(_loc6_ && _loc2_))
            {
               break;
            }
            §§goto(addr170);
         }
      }
   }
}

package §6!D§
{
   public class §7"?§ extends §[t§
   {
       
      
      public function §7"?§(param1:§0Y§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super(param1);
         }
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:* = 0;
         if(_loc6_ || param1)
         {
            super.initializeAnimations(param1);
            while(true)
            {
               §<!=§("POWERUP_BOMB",["POWERUP_DROP_01"]);
               loop1:
               while(true)
               {
                  §<!=§("POWERUP_BOMB_PARACHUTE",["POWERUP_DROP_02"]);
                  while(true)
                  {
                     §<!=§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
                     continue loop1;
                     addr148:
                     while(_loc6_ || this)
                     {
                        §<!=§("HALLOWEEN_ZOMBIE_PARTICLE_1",["PARTICLE_HALLOWEEN_STONE_1"]);
                        while(!(_loc7_ && param1))
                        {
                           §<!=§("HALLOWEEN_ZOMBIE_PARTICLE_2",["PARTICLE_HALLOWEEN_STONE_2"]);
                           loop6:
                           for(; _loc6_; if(!(_loc6_ || this))
                           {
                              continue;
                           },if(true)
                           {
                              var _loc4_:int = 0;
                              var _loc5_:* = [{
                                 "name":"PARTICLE_CHROME_GREEN_",
                                 "count":3
                              },{
                                 "name":"PARTICLE_CHROME_RED_",
                                 "count":3
                              }];
                              addr258:
                              for each(_loc2_ in _loc5_)
                              {
                                 if(!_loc7_)
                                 {
                                    §§push(1);
                                    if(_loc6_)
                                    {
                                       _loc3_ = §§pop();
                                       addr254:
                                       §§push(_loc3_);
                                       addr222:
                                       addr253:
                                    }
                                    if(§§pop() > _loc2_.count)
                                    {
                                       §§goto(addr258);
                                    }
                                    §<!=§(_loc2_.name + _loc3_,[_loc2_.name + _loc3_]);
                                    addr246:
                                    if(!_loc7_)
                                    {
                                       _loc3_++;
                                       if(!_loc7_)
                                       {
                                          if(!_loc7_)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr222);
                                             }
                                             §§goto(addr254);
                                          }
                                          §§goto(addr246);
                                       }
                                       §§goto(addr258);
                                    }
                                 }
                                 §§goto(addr253);
                              }
                              return;
                           },§§goto(addr59))
                           {
                              §<!=§("HALLOWEEN_ZOMBIE_PARTICLE_3",["PARTICLE_HALLOWEEN_STONE_3"]);
                              loop7:
                              while(true)
                              {
                                 §<!=§("HALLOWEEN_ZOMBIE_SMOKE",["PARTICLE_HALLOWEEN_SMOKE_1","PARTICLE_HALLOWEEN_SMOKE_2","PARTICLE_HALLOWEEN_SMOKE_3","PARTICLE_HALLOWEEN_SMOKE_4","PARTICLE_HALLOWEEN_SMOKE_5"]);
                                 addr94:
                                 while(_loc6_ || param1)
                                 {
                                    while(true)
                                    {
                                       §<!=§("HALLOWEEN_EXTRABIRD_SPARKLE",["PARTICLE_HALLOWEEN_SPARKLE_1","PARTICLE_HALLOWEEN_SPARKLE_2","PARTICLE_HALLOWEEN_SPARKLE_3","PARTICLE_HALLOWEEN_SPARKLE_4","PARTICLE_HALLOWEEN_SPARKLE_5"]);
                                       continue loop7;
                                    }
                                    if(_loc6_ || _loc2_)
                                    {
                                       continue loop6;
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
               if(_loc7_ && _loc3_)
               {
                  continue;
               }
               §<!=§("HALLOWEEN_SLINGSHOT",["BONE_SLINGSHOT_BACK","BONE_SLINGSHOT_FRONT"]);
               if(_loc6_ || _loc3_)
               {
                  §§goto(addr43);
               }
               §§goto(addr69);
            }
         }
         §§goto(addr108);
      }
      
      override protected function initializePigAnimations() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.initializePigAnimations();
            while(true)
            {
               §§push(§§findproperty(§"@§));
               §§push("PIGLETTE_TRECOOL");
               §§push(["normal",["PIGLETTE_TRECOOL_01","PIGLETTE_TRECOOL_02","PIGLETTE_TRECOOL_03"]]);
               if(!_loc1_)
               {
                  §§push(null);
               }
               §§pop().§"@§(§§pop(),§§pop());
               while(true)
               {
                  §§push(§§findproperty(§"@§));
                  §§push("PIGLETTE_BILLIEJOE");
                  §§push(["normal",["PIGLETTE_BILLIEJOE_01","PIGLETTE_BILLIEJOE_02","PIGLETTE_BILLIEJOE_03"]]);
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(null);
                  }
                  §§pop().§"@§(§§pop(),§§pop());
                  while(!(_loc1_ && this))
                  {
                     §§push(§§findproperty(§"@§));
                     §§push("PIGLETTE_MIKE");
                     §§push(["normal",["PIGLETTE_MIKE_01","PIGLETTE_MIKE_02","PIGLETTE_MIKE_03"]]);
                     if(!_loc1_)
                     {
                        §§push(null);
                     }
                     §§pop().§"@§(§§pop(),§§pop());
                     while(true)
                     {
                        §§push(§§findproperty(§"@§));
                        §§push("PIG_BASIC_SMALL_INFECTED");
                        §§push(["normal",["PIG_BASIC_SMALL_01","PIG_BASIC_SMALL_02","PIG_BASIC_SMALL_03"]]);
                        if(!_loc1_)
                        {
                           §§push(null);
                        }
                        §§pop().§"@§(§§pop(),§§pop());
                        loop4:
                        while(true)
                        {
                           §§push(§§findproperty(§"@§));
                           §§push("PIG_BASIC_MEDIUM_INFECTED");
                           §§push(["normal",["PIG_BASIC_MEDIUM_01","PIG_BASIC_MEDIUM_02","PIG_BASIC_MEDIUM_03"]]);
                           if(_loc2_)
                           {
                              §§push(null);
                           }
                           §§pop().§"@§(§§pop(),§§pop());
                           addr295:
                           while(true)
                           {
                              §§push(§§findproperty(§"@§));
                              §§push("PIG_BASIC_BIG_INFECTED");
                              §§push(["normal",["PIG_BASIC_BIG_01","PIG_BASIC_BIG_02","PIG_BASIC_BIG_03"]]);
                              if(!_loc1_)
                              {
                                 §§push(null);
                              }
                              §§pop().§"@§(§§pop(),§§pop());
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      override protected function initializeBirdAnimations() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.initializeBirdAnimations();
         }
         do
         {
            §§push(§§findproperty(§"@§));
            §§push("BIRD_VANTERRENCE");
            §§push(["normal",["BIRD_VANTERENCE_1"]]);
            if(!_loc2_)
            {
               §§push(null);
            }
            §§pop().§"@§(§§pop(),§§pop());
            do
            {
               §§push(§§findproperty(§"@§));
               §§push("BIRD_ORANGE");
               §§push(["normal",["BIRD_ORANGE_YELL"]]);
               if(_loc1_ || _loc1_)
               {
                  §§push(null);
               }
               §§pop().§"@§(§§pop(),§§pop());
            }
            while(_loc2_);
            
         }
         while(_loc2_);
         
      }
   }
}

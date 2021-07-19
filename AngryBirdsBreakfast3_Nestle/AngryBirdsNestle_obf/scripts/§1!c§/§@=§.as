package §1!c§
{
   import §%!B§.§0![§;
   import §'"!§.§+§;
   import §'"!§.§-!g§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1'§.§?>§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §2u§.§]"%§;
   import §[!Z§.§>D§;
   
   public class §@=§ extends §7X§
   {
      
      public static const §8"%§:String = "LevelEndFailState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §8"%§ = "LevelEndFailState";
         }
      }
      
      private var §]!b§:§?>§;
      
      public function §@=§(param1:§0![§, param2:§+f§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
            do
            {
               §^!T§ = new §9%§(this);
               do
               {
                  §^!T§.init(this.§'!,§());
               }
               while(!_loc2_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      protected function §'!,§() : XML
      {
         return §7I§.§7!%§.Views.View_LevelEndFail[0];
      }
      
      protected function §;!!§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:String = §4a§.getNextLevelId();
         if(_loc3_ || _loc1_)
         {
            §§push(Boolean(_loc1_));
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(§ !4§.§%"7§);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop().§@D§);
                              addr206:
                              while(true)
                              {
                                 §§push(§§pop().userProgress);
                                 addr207:
                                 while(true)
                                 {
                                    §§push(§§pop().§2"+§(_loc1_));
                                    if(!_loc2_)
                                    {
                                       §§push(!§§pop());
                                       if(_loc3_ || _loc3_)
                                       {
                                          addr219:
                                          §§push(Boolean(§§pop()));
                                          loop8:
                                          while(_loc3_)
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc3_ || _loc1_))
                                                {
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   loop10:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(§4a§.isCutSceneNext())
                                                         {
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               (§^!T§.getItemByName("Button_NextLevel") as §]"%§).setVisibility(false);
                                                            }
                                                            addr107:
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               (§^!T§.getItemByName("Button_CutScene") as §]"%§).setVisibility(true);
                                                               addr79:
                                                               if(_loc3_ || this)
                                                               {
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  (§^!T§.getItemByName("Button_CutScene") as §]"%§).setVisibility(false);
                                                                  addr156:
                                                                  while(true)
                                                                  {
                                                                     (§^!T§.getItemByName("Button_MightyEagle") as §]"%§).setVisibility(true);
                                                                  }
                                                               }
                                                               addr201:
                                                            }
                                                            loop12:
                                                            while(true)
                                                            {
                                                               if(!(_loc2_ && _loc1_))
                                                               {
                                                                  if(!(_loc2_ && _loc2_))
                                                                  {
                                                                     break loop10;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               addr187:
                                                               while(true)
                                                               {
                                                                  if(!(_loc3_ || this))
                                                                  {
                                                                     break loop12;
                                                                  }
                                                                  (§^!T§.getItemByName("Button_NextLevel") as §]"%§).setVisibility(false);
                                                                  §§goto(addr201);
                                                               }
                                                               §§goto(addr156);
                                                            }
                                                            continue loop4;
                                                         }
                                                         (§^!T§.getItemByName("Button_NextLevel") as §]"%§).setVisibility(true);
                                                         for(; !(_loc2_ && _loc2_); (§^!T§.getItemByName("Button_CutScene") as §]"%§).setVisibility(false),if(!(_loc3_ || _loc1_))
                                                         {
                                                            continue;
                                                         },if(_loc3_)
                                                         {
                                                            break loop10;
                                                         },§§goto(addr156))
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr107);
                                                         }
                                                         §§goto(addr79);
                                                      }
                                                      §§goto(addr187);
                                                      if(_loc2_ && _loc1_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      §§goto(addr185);
                                                      continue loop8;
                                                   }
                                                   return;
                                                   addr185:
                                                }
                                             }
                                             continue loop1;
                                          }
                                          continue loop2;
                                          addr221:
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop4;
                                       }
                                       addr243:
                                    }
                                    §§goto(addr219);
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr223);
               }
            }
         }
         §§goto(addr244);
      }
      
      protected function §?U§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            (§^!T§.getItemByName("Button_CutScene") as §]"%§).setVisibility(false);
            do
            {
               (§^!T§.getItemByName("Button_MightyEagle") as §]"%§).setVisibility(false);
            }
            while(_loc1_ && this);
            
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super.activate(param1);
         }
         loop0:
         while(true)
         {
            this.§]!b§ = new §?>§(0,0,0,0);
            loop1:
            while(true)
            {
               §^!T§.movieClip.addChildAt(this.§]!b§,§^!T§.movieClip.numChildren - 1);
               loop2:
               while(_loc3_)
               {
                  this.§;!!§();
                  while(_loc3_)
                  {
                     this.§]!b§.§!!p§(0.7);
                     if(_loc3_ || _loc3_)
                     {
                        if(!_loc2_)
                        {
                           return;
                        }
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(nextState.length > 0)
            {
               if(_loc2_)
               {
                  addr49:
                  §@!S§.§2A§.clearLevel();
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.deActivate();
            while(true)
            {
               §§push(this.§]!b§);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        this.§ !y§(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
                        while(true)
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              continue;
                           }
                        }
                        continue loop1;
                     }
                     return;
                  }
                  while(true)
                  {
                     if(!§^!T§.movieClip.contains(this.§]!b§))
                     {
                        continue loop1;
                     }
                     §§goto(addr112);
                  }
               }
               while(!(_loc2_ && this))
               {
                  §§goto(addr83);
               }
            }
         }
         §§goto(addr82);
      }
      
      protected function § !y§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            (§^!T§.getItemByName("Button_Menu") as §]"%§).setComponentVisualState(param1);
            loop0:
            while(true)
            {
               (§^!T§.getItemByName("Button_Replay") as §]"%§).setComponentVisualState(param1);
               while(true)
               {
                  (§^!T§.getItemByName("Button_NextLevel") as §]"%§).setComponentVisualState(param1);
                  continue loop0;
                  addr65:
                  loop3:
                  while(_loc3_ || _loc3_)
                  {
                     while(true)
                     {
                        (§^!T§.getItemByName("Button_MightyEagle") as §]"%§).setComponentVisualState(param1);
                        if(!(_loc2_ && _loc3_))
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop3;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.cleanup();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_ || param1)
         {
            if("NEXT_LEVEL" === _loc4_)
            {
               if(_loc5_)
               {
                  §§push(0);
                  if(!_loc5_)
                  {
                     addr141:
                  }
               }
               else
               {
                  addr145:
                  §§push(3);
                  if(_loc5_)
                  {
                     addr158:
                  }
               }
               §§goto(addr163);
            }
            else if("REPLAY" === _loc4_)
            {
               if(_loc5_)
               {
                  §§push(1);
                  if(!(_loc5_ || param2))
                  {
                     §§goto(addr141);
                  }
               }
               else
               {
                  §§goto(addr145);
               }
               §§goto(addr163);
            }
            else
            {
               if("MENU" !== _loc4_)
               {
                  if("FULLSCREEN_BUTTON" === _loc4_)
                  {
                     §§goto(addr145);
                  }
                  else
                  {
                     §§push(4);
                  }
                  addr163:
                  switch(§§pop())
                  {
                     case 0:
                        §2G§();
                        loop0:
                        while(true)
                        {
                           §7"6§(this.§0;§());
                           addr75:
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 break loop0;
                              }
                              continue loop0;
                           }
                        }
                        break;
                     case 1:
                        §7"6§(this.§9!"§());
                        break;
                        addr69:
                     case 2:
                        §>D§.§>!%§();
                        loop1:
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              if(!_loc6_)
                              {
                                 while(true)
                                 {
                                    §7"6§(this.§'!#§());
                                    continue loop1;
                                 }
                                 addr39:
                              }
                              else
                              {
                                 §§goto(addr75);
                              }
                           }
                           else
                           {
                              §§goto(addr69);
                           }
                        }
                        break;
                     case 3:
                        § !4§.§%"7§.§]!;§();
                        if(_loc5_ || param1)
                        {
                           if(_loc5_ || param3)
                           {
                              if(true)
                              {
                                 break;
                              }
                              §§goto(addr39);
                           }
                           §§goto(addr44);
                        }
                  }
                  return;
               }
               if(_loc5_)
               {
                  §§push(2);
                  if(_loc5_ || param2)
                  {
                     §§goto(addr141);
                  }
                  else
                  {
                     §§goto(addr158);
                  }
               }
               else
               {
                  §§goto(addr145);
               }
               §§goto(addr163);
            }
         }
         §§goto(addr145);
      }
      
      protected function §9!"§() : String
      {
         return §'8§.§8"%§;
      }
      
      protected function §'!#§() : String
      {
         return §^j§.§8"%§;
      }
      
      protected function §0;§() : String
      {
         return StateCutScene.§8"%§;
      }
   }
}

package §%!I§
{
   import §%i§.§7"0§;
   import §0D§.§3!R§;
   import §9!n§.LevelManager;
   import §;u§.§+n§;
   
   public class §7!6§ extends §+n§
   {
      
      public static const STATE_NAME:String = "stateTournamentLevelEndFail";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §7!6§)
         {
            STATE_NAME = "stateTournamentLevelEndFail";
         }
      }
      
      public function §7!6§(param1:Boolean = false, param2:String = "stateTournamentLevelEndFail")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.activate();
         }
         do
         {
            this.§5+§();
         }
         while(_loc1_);
         
      }
      
      protected function §5+§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §2"@§.getItemByName("Button_Share_Default").setVisibility(false);
            do
            {
               §2"@§.getItemByName("Button_Embed").setVisibility(false);
            }
            while(_loc1_);
            
         }
      }
      
      override protected function getCutSceneState() : String
      {
         return §5S§.STATE_NAME;
      }
      
      override protected function getLevelLoadState() : String
      {
         return §6"'§.STATE_NAME;
      }
      
      override protected function getLevelSelectionState() : String
      {
         return §]!M§.STATE_NAME;
      }
      
      override protected function loadNextLevel() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§3!R§.§&"5§.§="S§(LevelManager.§ T§));
         if(!(_loc2_ && this))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!(_loc2_ && this))
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr136:
               while(true)
               {
                  §§push(!§§pop());
                  addr137:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 LevelManager.§,!m§(LevelManager.§["S§(_loc1_));
                              }
                              while(true)
                              {
                                 addr43:
                                 loop7:
                                 while(true)
                                 {
                                    mNextState = this.getCutSceneState();
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       break;
                                    }
                                    addr82:
                                    while(true)
                                    {
                                       continue loop7;
                                    }
                                 }
                                 if(_loc3_ || _loc3_)
                                 {
                                    break loop5;
                                 }
                                 continue loop0;
                              }
                              addr132:
                           }
                           else
                           {
                              LevelManager.§&"V§ = LevelManager.§ T§;
                           }
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr82);
                              }
                              else
                              {
                                 §§goto(addr132);
                              }
                           }
                        }
                        return;
                        addr118:
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      override protected function showButtons() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§3!R§.§&"5§.§="S§(LevelManager.§ T§));
         if(!(_loc2_ && this))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            §§push(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_));
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setVisibility(false);
                  }
                  (§2"@§.getItemByName("Button_CutScene") as §7"0§).setVisibility(false);
                  (§2"@§.getItemByName("Button_MightyEagle") as §7"0§).setVisibility(true);
                  break;
                  addr184:
                  addr169:
               }
               §§push(LevelManager.§%!8§());
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               if(!§§pop())
               {
                  (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setVisibility(true);
                  for(; _loc3_ || this; (§2"@§.getItemByName("Button_CutScene") as §7"0§).setVisibility(false),if(!_loc3_)
                  {
                     continue;
                  },if(!(_loc2_ && _loc3_))
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        addr39:
                        return;
                        addr67:
                     }
                  }
                  else
                  {
                     §§goto(addr134);
                  },§§goto(addr169))
                  {
                     if(_loc3_ || this)
                     {
                        continue;
                     }
                     addr134:
                     addr127:
                     (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setVisibility(false);
                     if(_loc3_ || this)
                     {
                        (§2"@§.getItemByName("Button_CutScene") as §7"0§).setVisibility(true);
                        break;
                     }
                     §§goto(addr184);
                  }
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr39);
               }
               §§goto(addr127);
            }
            §§goto(addr39);
         }
         §§goto(addr67);
      }
   }
}

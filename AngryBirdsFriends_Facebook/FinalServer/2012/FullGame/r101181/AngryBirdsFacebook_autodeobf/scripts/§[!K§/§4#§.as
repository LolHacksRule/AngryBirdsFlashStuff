package §[!K§
{
   import §#!e§.LevelManager;
   import §4!e§.§^!D§;
   import §7"@§.§1G§;
   import §7-§.§,!C§;
   
   public class §4#§ extends §1G§
   {
      
      public static const STATE_NAME:String = "stateTournamentLevelEndFail";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            STATE_NAME = "stateTournamentLevelEndFail";
         }
      }
      
      public function §4#§(param1:Boolean = false, param2:String = "stateTournamentLevelEndFail")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
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
            do
            {
               this.§-!U§();
            }
            while(!_loc2_);
            
         }
      }
      
      protected function §-!U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §6w§.getItemByName("Button_Share_Default").setVisibility(false);
         }
         do
         {
            §6w§.getItemByName("Button_Embed").setVisibility(false);
         }
         while(!_loc1_);
         
      }
      
      override protected function getCutSceneState() : String
      {
         return §;+§.STATE_NAME;
      }
      
      override protected function getLevelLoadState() : String
      {
         return §="#§.STATE_NAME;
      }
      
      override protected function getLevelSelectionState() : String
      {
         return §-k§.STATE_NAME;
      }
      
      override protected function loadNextLevel() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§,!C§.§;"§.§4W§(LevelManager.§'!O§));
         if(_loc3_ || this)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc3_ || _loc1_)
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(_loc3_ || _loc3_)
               {
                  addr147:
                  §§push(!§§pop());
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           if(!§§pop())
                           {
                              LevelManager.§+!;§ = LevelManager.§'!O§;
                              loop3:
                              while(true)
                              {
                                 if(_loc3_ || _loc1_)
                                 {
                                    if(!(_loc3_ || _loc2_))
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 addr135:
                                 while(true)
                                 {
                                    continue loop3;
                                 }
                              }
                              continue loop0;
                           }
                           while(true)
                           {
                              LevelManager.§-!4§(LevelManager.§;!f§(_loc1_));
                              §§goto(addr135);
                           }
                        }
                        addr128:
                     }
                  }
                  addr147:
               }
               addr149:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
            addr137:
         }
         while(true)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(§§pop() == "");
               if(_loc3_ || _loc3_)
               {
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  §§push(!§§pop());
               }
               if(!_loc3_)
               {
                  §§goto(addr147);
               }
               §§goto(addr128);
            }
            else
            {
               §§goto(addr137);
            }
         }
      }
      
      override protected function showButtons() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§,!C§.§;"§.§4W§(LevelManager.§'!O§));
         if(!(_loc3_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!_loc3_)
         {
            §§push(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     (§6w§.getItemByName("Button_NextLevel") as §^!D§).setVisibility(false);
                  }
                  while(true)
                  {
                     (§6w§.getItemByName("Button_CutScene") as §^!D§).setVisibility(false);
                     break loop0;
                  }
                  (§6w§.getItemByName("Button_MightyEagle") as §^!D§).setVisibility(true);
                  addr137:
                  addr163:
                  addr148:
               }
               else
               {
                  §§push(LevelManager.§%^§());
                  if(_loc3_)
                  {
                     continue;
                  }
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        (§6w§.getItemByName("Button_NextLevel") as §^!D§).setVisibility(false);
                        addr118:
                        while(true)
                        {
                           (§6w§.getItemByName("Button_CutScene") as §^!D§).setVisibility(true);
                        }
                        addr118:
                     }
                     §§goto(addr118);
                  }
                  else
                  {
                     (§6w§.getItemByName("Button_NextLevel") as §^!D§).setVisibility(true);
                     while(true)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           continue;
                        }
                     }
                     §§goto(addr137);
                  }
                  if(_loc3_)
                  {
                     break;
                  }
               }
               §§goto(addr33);
            }
            while(true)
            {
               if(!_loc2_)
               {
                  §§goto(addr163);
               }
               §§goto(addr148);
            }
         }
         §§goto(addr118);
      }
   }
}

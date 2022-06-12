package §[!K§
{
   import §#!e§.LevelManager;
   import §3!7§.§>,§;
   import §7"@§.§2!e§;
   import §]!A§.;
   
   public class §'!W§ extends §2!e§
   {
      
      public static const STATE_NAME:String = "stateTournamentPlay";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            STATE_NAME = "stateTournamentPlay";
         }
      }
      
      public function §'!W§(param1:Boolean = true, param2:String = "stateTournamentPlay")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.levelStarted();
            loop0:
            while(true)
            {
               §6w§.getItemByName("Button_MightyEagle").setVisibility(false);
               loop1:
               while(true)
               {
                  §6w§.getItemByName("TextField_PowerUpCountME").setVisibility(false);
                  loop2:
                  while(_loc2_)
                  {
                     while(true)
                     {
                        §6w§.getItemByName("PowerUpCountME_BG").setVisibility(false);
                        if(!(_loc1_ && _loc1_))
                        {
                           continue loop1;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr73);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activate();
            while(true)
            {
               §6w§.getItemByName("Button_PowerUpMenuOpenWhole").x = 115;
               loop1:
               while(_loc1_ || this)
               {
                  while(true)
                  {
                     §6w§.getItemByName("Container_PowerUpButtons").x = 115;
                     if(_loc1_ || _loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr70);
      }
      
      override protected function disablePowerupMenu() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.disablePowerupMenu();
         }
         do
         {
            §`-§.setPowerupActive(§>,§.§," §.§[2§,false);
         }
         while(_loc2_ && _loc2_);
         
      }
      
      override protected function fetchScoresForLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §3s§ = §3T§.§if §.§#!7§(LevelManager.§^_§(LevelManager.§'!O§).name,LevelManager.§'!O§,true);
         }
      }
      
      override protected function showScoresForLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            (§#6§.§ q§ as §3T§).§?D§(LevelManager.§'!O§,§3s§,true);
         }
      }
      
      override protected function hideMightyEagleButton() : void
      {
      }
      
      override public function deactivateMightyEagleButton() : void
      {
      }
      
      override protected function getLevelLoadState() : String
      {
         return §="#§.STATE_NAME;
      }
      
      override protected function getPauseState() : String
      {
         return §"`§.STATE_NAME;
      }
      
      override public function getVictoryState() : String
      {
         return §-!@§.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return §4#§.STATE_NAME;
      }
   }
}

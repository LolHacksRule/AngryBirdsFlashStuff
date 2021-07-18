package §5!Y§
{
   import §1!t§.§!!G§;
   import §9!n§.LevelManager;
   import §;u§.§5<§;
   import §<"F§.§["M§;
   import §@!%§.§#!$§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.MouseEvent;
   
   public class §5!-§ extends Popup
   {
       
      
      private var §>"P§:StatePopupManager;
      
      public function §5!-§(param1:§`_§, param2:StatePopupManager, param3:Boolean)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(§ "<§.§%I§.Views.PopupView_EndOfCompetitionPopup[0],param1);
            loop0:
            while(true)
            {
               mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§if §);
               while(true)
               {
                  mClip.btnPlay.addEventListener(MouseEvent.CLICK,this.§["!§);
                  loop2:
                  while(_loc5_ || param1)
                  {
                     while(true)
                     {
                        this.§>"P§ = param2;
                        while(_loc5_)
                        {
                           if(!_loc4_)
                           {
                              this.§,!$§();
                              if(!_loc4_)
                              {
                                 return;
                              }
                              continue;
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.open(param1);
         }
      }
      
      private function §,!$§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            (§[w§.getItemByName("MovieClip_Popup_Loading") as §!!G§).visible = false;
         }
      }
      
      private function §-"!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            (§[w§.getItemByName("MovieClip_Popup_Loading") as §!!G§).visible = true;
         }
      }
      
      private function §if §(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(AngryBirdsFP11.sUserProgress);
            if(_loc3_ || _loc3_)
            {
               if(!§§pop().hasTutorialBeenSeen(§#!$§.§+%§ + §["M§.§0<§))
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr80:
                     (AngryBirdsFP11.sUserProgress as §#!$§).saveTutorialSeen(§#!$§.§+%§ + §["M§.§0<§);
                     addr88:
                     while(true)
                     {
                     }
                     addr88:
                  }
                  §§goto(addr88);
               }
               while(true)
               {
                  close();
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr88);
               }
               return;
            }
         }
         §§goto(addr80);
      }
      
      private function §["!§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(AngryBirdsFP11.sUserProgress);
            if(_loc2_ || param1)
            {
               if(!§§pop().hasTutorialBeenSeen(§#!$§.§+%§ + §["M§.§0<§))
               {
                  loop0:
                  while(true)
                  {
                     §§push(AngryBirdsFP11.sUserProgress);
                     addr105:
                     while(true)
                     {
                        (§§pop() as §#!$§).saveTutorialSeen(§#!$§.§+%§ + §["M§.§0<§);
                        addr113:
                        while(true)
                        {
                        }
                     }
                     addr69:
                     while(true)
                     {
                        if(!(_loc3_ && param1))
                        {
                           §%"S§.§!C§.§`H§(§5<§.STATE_NAME);
                           do
                           {
                              close();
                           }
                           while(_loc3_ && _loc2_);
                           
                           if(_loc2_ || _loc3_)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 return;
                                 addr57:
                              }
                              break;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                     §§goto(addr113);
                  }
               }
               while(true)
               {
                  LevelManager.§,m§ = 6;
                  §§goto(addr69);
                  §§goto(addr113);
               }
               §§goto(addr57);
            }
            §§goto(addr105);
         }
         §§goto(addr57);
      }
   }
}

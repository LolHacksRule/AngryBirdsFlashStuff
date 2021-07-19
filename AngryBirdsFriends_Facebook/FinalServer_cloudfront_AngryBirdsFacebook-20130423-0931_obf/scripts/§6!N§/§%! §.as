package §6!N§
{
   import §%!I§.§]!M§;
   import §2<§.§3d§;
   import §5!Y§.Popup;
   import §5!Y§.StatePopupManager;
   import §9@§.§4d§;
   import §9@§.§@q§;
   import §@!%§.§#!$§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.MouseEvent;
   
   public class §%! § extends Popup implements §4d§
   {
      
      private static const §>!z§:String = "Easter";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §>!z§ = "Easter";
         }
      }
      
      private var §>"P§:StatePopupManager;
      
      private var §^!?§:Boolean = false;
      
      private var §2!H§:§3d§;
      
      public function §%! §(param1:§`_§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(§ "<§.§%I§.Views.PopupView_NewTournamentBranded[0],param1);
         }
         do
         {
            this.§>"P§ = param2;
            do
            {
               mClip.PlayNowButton.addEventListener(MouseEvent.CLICK,this.§""O§);
            }
            while(!(_loc4_ || _loc3_));
            
         }
         while(_loc3_ && param2);
         
      }
      
      private function §""O§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §%"S§.§!C§.§`H§(§]!M§.STATE_NAME);
            while(true)
            {
               (AngryBirdsFP11.sUserProgress as §#!$§).saveTutorialSeen(§#!$§.§;O§);
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.close();
                     if(!(_loc3_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr54);
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            mClip.PlayNowButton.removeEventListener(MouseEvent.CLICK,this.§""O§);
         }
         do
         {
            super.close();
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      public function §=,§() : String
      {
         return §@q§.§73§;
      }
      
      public function §8"3§() : String
      {
         return §>!z§;
      }
   }
}

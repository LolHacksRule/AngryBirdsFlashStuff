package §["6§
{
   import §%!I§.§]!M§;
   import §,l§.§1U§;
   import §0D§.§`!k§;
   import §5!Y§.Popup;
   import §5!Y§.StatePopupManager;
   import §@!%§.§#!$§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §5"L§ extends Popup
   {
       
      
      private var §>"P§:StatePopupManager;
      
      public function §5"L§(param1:§`_§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super(§ "<§.§%I§.Views.PopupView_TournamentTutorial[0],param1);
            while(true)
            {
               this.§>"P§ = param2;
               while(true)
               {
                  mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§if §);
                  §§goto(addr76);
               }
            }
         }
         addr76:
         while(true)
         {
            mClip.PlayNowButton.addEventListener(MouseEvent.CLICK,this.§["!§);
            if(_loc3_)
            {
               if(!_loc4_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr67:
      }
      
      private function §if §(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.deActivate();
         }
      }
      
      private function §["!§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §%"S§.§!C§.§`H§(§]!M§.STATE_NAME);
            do
            {
               this.deActivate();
            }
            while(_loc3_ && this);
            
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super.open(param1);
         }
         var _loc2_:MovieClip = mClip.getChildByName("OwnAvatarHolder") as MovieClip;
         var _loc3_:§1U§ = new §1U§((AngryBirdsFP11.sUserProgress as §#!$§).§5!0§,"Player","",0,0);
         var _loc4_:§`!k§ = new §`!k§(_loc2_,_loc3_);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.deActivate();
         }
         do
         {
            preClose();
         }
         while(_loc1_);
         
      }
   }
}

package §5!Y§
{
   import §%!I§.§]!M§;
   import §%i§.§4"9§;
   import §1!t§.§""B§;
   import §6!H§.§6!e§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.MouseEvent;
   
   public class §,A§ extends Popup
   {
       
      
      private var §9!a§:Boolean = false;
      
      private var §>"P§:StatePopupManager;
      
      private var §!!w§:String = "";
      
      public function §,A§(param1:§`_§, param2:StatePopupManager, param3:String)
      {
         super(§ "<§.§%I§.Views.PopupView_TournamentInfo[0],param1);
         mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§ "B§);
         this.§>"P§ = param2;
         this.§>"P§.addEventListener(§6!e§.§1" §,this.onUiInteraction);
         (§[w§.getItemByName("Info_Text") as §4"9§).setText(param3);
      }
      
      private function § "B§(param1:MouseEvent) : void
      {
         §%"S§.§!C§.§`H§(§]!M§.STATE_NAME);
         this.close();
      }
      
      private function onUiInteraction(param1:§6!e§) : void
      {
         this.uiInteractionHandler(param1.§0!!§,param1.§,§,param1.§`]§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc4_:* = param2;
         switch(0)
         {
         }
      }
      
      override public function close() : void
      {
         this.§>"P§.removeEventListener(§6!e§.§1" §,this.onUiInteraction);
         super.close();
      }
   }
}

package §&!"§
{
   import §!G§.§+!#§;
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §-B§.§#p§;
   import §6k§.§-#§;
   import §;n§.§^!;§;
   import flash.events.MouseEvent;
   
   public class §8#§ extends Popup
   {
       
      
      private var §&!j§:Boolean = false;
      
      private var §[!g§:StatePopupManager;
      
      private var §[9§:String = "";
      
      public function §8#§(param1:§^0§, param2:StatePopupManager, param3:String)
      {
         super(§%^§.§?>§.Views.PopupView_TournamentInfo[0],param1);
         mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§]!Q§);
         this.§[!g§ = param2;
         this.§[!g§.addEventListener(§+!#§.§@=§,this.onUiInteraction);
         (§&"D§.getItemByName("Info_Text") as §#p§).setText(param3);
      }
      
      private function §]!Q§(param1:MouseEvent) : void
      {
         §,"I§.§&q§.§>"I§(§-#§.STATE_NAME);
         this.close();
      }
      
      private function onUiInteraction(param1:§+!#§) : void
      {
         this.uiInteractionHandler(param1.§`!>§,param1.§4W§,param1.§91§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
      {
         var _loc4_:* = param2;
         switch(0)
         {
         }
      }
      
      override public function close() : void
      {
         this.§[!g§.removeEventListener(§+!#§.§@=§,this.onUiInteraction);
         super.close();
      }
   }
}

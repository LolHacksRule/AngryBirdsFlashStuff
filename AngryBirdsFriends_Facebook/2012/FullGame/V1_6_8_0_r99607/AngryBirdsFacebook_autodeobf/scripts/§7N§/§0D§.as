package §7N§
{
   import §"",§.§+§;
   import §,b§.§4H§;
   import §1"2§.§,!]§;
   import §<G§.§5w§;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import flash.events.MouseEvent;
   
   public class §0D§ extends Popup
   {
       
      
      private var §@u§:Boolean = false;
      
      private var §<q§:StatePopupManager;
      
      private var §>b§:String = "";
      
      public function §0D§(param1:§"!j§, param2:StatePopupManager, param3:String)
      {
         super(§1"-§.§ !>§.Views.PopupView_TournamentInfo[0],param1);
         mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§&!a§);
         this.§<q§ = param2;
         this.§<q§.addEventListener(§4H§.§%!g§,this.onUiInteraction);
         (§0!'§.getItemByName("Info_Text") as §+§).setText(param3);
      }
      
      private function §&!a§(param1:MouseEvent) : void
      {
         § W§.§%!y§.§ !`§(§5w§.STATE_NAME);
         this.close();
      }
      
      private function onUiInteraction(param1:§4H§) : void
      {
         this.uiInteractionHandler(param1.§@`§,param1.§@C§,param1.§5!+§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         var _loc4_:* = param2;
         switch(0)
         {
         }
      }
      
      override public function close() : void
      {
         this.§<q§.removeEventListener(§4H§.§%!g§,this.onUiInteraction);
         super.close();
      }
   }
}

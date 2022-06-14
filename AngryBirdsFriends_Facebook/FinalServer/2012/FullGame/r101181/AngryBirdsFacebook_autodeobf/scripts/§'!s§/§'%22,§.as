package §'!s§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §,V§.§'"5§;
   import §2!i§.§'M§;
   import §4!e§.§-"E§;
   import §[!K§.§-k§;
   import flash.events.MouseEvent;
   
   public class §'",§ extends Popup
   {
       
      
      private var §>t§:Boolean = false;
      
      private var §"!T§:StatePopupManager;
      
      private var §]J§:String = "";
      
      public function §'",§(param1:§7!A§, param2:StatePopupManager, param3:String)
      {
         super(§ "A§.§4[§.Views.PopupView_TournamentInfo[0],param1);
         mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§`!a§);
         this.§"!T§ = param2;
         this.§"!T§.addEventListener(§'"5§.§#2§,this.onUiInteraction);
         (§]"3§.getItemByName("Info_Text") as §-"E§).setText(param3);
      }
      
      private function §`!a§(param1:MouseEvent) : void
      {
         §3T§.§67§.§=!w§(§-k§.STATE_NAME);
         this.close();
      }
      
      private function onUiInteraction(param1:§'"5§) : void
      {
         this.uiInteractionHandler(param1.§"!k§,param1.§[2§,param1.§1!`§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc4_:* = param2;
         switch(0)
         {
         }
      }
      
      override public function close() : void
      {
         this.§"!T§.removeEventListener(§'"5§.§#2§,this.onUiInteraction);
         super.close();
      }
   }
}

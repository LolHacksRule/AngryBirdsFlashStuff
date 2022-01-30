package §""§
{
   import § true§.§1H§;
   import § true§.§<"-§;
   import §,!@§.§&!j§;
   import §0!C§.§,!h§;
   import §0!C§.§=!]§;
   import §4!j§.§0p§;
   import §=!&§.§3h§;
   import §>Z§.§5;§;
   
   public class §?!-§ extends Popup
   {
      
      private static const §5"1§:Array = [3,5,7,10];
      
      private static const §?"$§:Array = [1,2,3,5];
      
      private static const §"V§:String = "X ";
       
      
      private var §?!>§:StatePopupManager;
      
      public function §?!-§(param1:§=!]§, param2:StatePopupManager)
      {
         super(§,!h§.§`C§.Views.PopupView_AddBolts[0],param1);
         this.§?!>§ = param2;
         param2.addEventListener(§&!j§.§<G§,this.onUiInteraction);
         (getItemByName("TextField_Bolts_Header") as §<"-§).setText("Out of Bolts!");
         (getItemByName("TextField_Bolts_Header_Small") as §<"-§).setText("Refill your Bolts to Build");
         ((getItemByName("Container_BoltsBar_1") as §1H§).getItemByName("Textfield_Amount") as §<"-§).setText(§"V§ + §5"1§[0].toString());
         ((getItemByName("Container_BoltsBar_2") as §1H§).getItemByName("Textfield_Amount") as §<"-§).setText(§"V§ + §5"1§[1].toString());
         ((getItemByName("Container_BoltsBar_3") as §1H§).getItemByName("Textfield_Amount") as §<"-§).setText(§"V§ + §5"1§[2].toString());
         ((getItemByName("Container_BoltsBar_4") as §1H§).getItemByName("Textfield_Amount") as §<"-§).setText(§"V§ + §5"1§[3].toString());
      }
      
      private function onUiInteraction(param1:§&!j§) : void
      {
         this.uiInteractionHandler(param1.§6o§,param1.§0!'§,param1.component);
      }
      
      private function uiInteractionHandler(param1:int, param2:String, param3:§0p§) : void
      {
         var _loc4_:int = 0;
         switch(param2)
         {
            case "CLOSE_POPUP":
               §5;§.playSound("Sound_Button_Back");
               this.deActivate();
         }
         if(param2.indexOf("ADD_BOLTS") != -1)
         {
            _loc4_ = parseInt(param2.substr(param2.length - 1,1)) - 1;
            §3h§.§7!?§.§]!f§(§3h§.§0!n§,§?"$§[_loc4_]);
            this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         this.§?!>§.removeEventListener(§&!j§.§<G§,this.onUiInteraction);
         super.deActivate();
         preClose();
      }
   }
}

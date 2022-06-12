package §-!@§
{
   import §%B§.§^k§;
   import §0O§.§<!x§;
   import §5!8§.§+!?§;
   import §5!8§.§6m§;
   import §=!2§.§65§;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   import §^x§.§<!w§;
   
   public class §2!G§ extends Popup
   {
      
      private static const §4!^§:Array = [3,5,7,10];
      
      private static const §'Y§:Array = [1,2,3,5];
      
      private static const §,!a§:String = "X ";
       
      
      private var §'<§:StatePopupManager;
      
      public function §2!G§(param1:§%!u§, param2:StatePopupManager)
      {
         super(§#! §.§5!;§.Views.PopupView_AddBolts[0],param1);
         this.§'<§ = param2;
         param2.addEventListener(§65§.§]!7§,this.onUiInteraction);
         (getItemByName("TextField_Bolts_Header") as §6m§).setText("Out of Bolts!");
         (getItemByName("TextField_Bolts_Header_Small") as §6m§).setText("Refill your Bolts to Build");
         ((getItemByName("Container_BoltsBar_1") as §+!?§).getItemByName("Textfield_Amount") as §6m§).setText(§,!a§ + §4!^§[0].toString());
         ((getItemByName("Container_BoltsBar_2") as §+!?§).getItemByName("Textfield_Amount") as §6m§).setText(§,!a§ + §4!^§[1].toString());
         ((getItemByName("Container_BoltsBar_3") as §+!?§).getItemByName("Textfield_Amount") as §6m§).setText(§,!a§ + §4!^§[2].toString());
         ((getItemByName("Container_BoltsBar_4") as §+!?§).getItemByName("Textfield_Amount") as §6m§).setText(§,!a§ + §4!^§[3].toString());
      }
      
      private function onUiInteraction(param1:§65§) : void
      {
         this.uiInteractionHandler(param1.§3!$§,param1.§!3§,param1.component);
      }
      
      private function uiInteractionHandler(param1:int, param2:String, param3:§<!w§) : void
      {
         var _loc4_:int = 0;
         switch(param2)
         {
            case "CLOSE_POPUP":
               §^k§.playSound("Sound_Button_Back");
               this.deActivate();
         }
         if(param2.indexOf("ADD_BOLTS") != -1)
         {
            _loc4_ = parseInt(param2.substr(param2.length - 1,1)) - 1;
            §<!x§.§ "!§.§]!A§(§<!x§.§+!i§,§'Y§[_loc4_]);
            this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         this.§'<§.removeEventListener(§65§.§]!7§,this.onUiInteraction);
         super.deActivate();
         preClose();
      }
   }
}

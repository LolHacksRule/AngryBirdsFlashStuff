package §?!'§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §=!7§.§!!]§;
   import §=!7§.§6W§;
   import §>!d§.§,$§;
   import §@y§.§0=§;
   import §[!E§.§[!f§;
   
   public class §@3§ extends Popup
   {
      
      private static const §["0§:Array = [3,5,7,10];
      
      private static const §%!D§:Array = [1,2,3,5];
      
      private static const §&!p§:String = "X ";
       
      
      private var §["<§:StatePopupManager;
      
      public function §@3§(param1:§>!V§, param2:StatePopupManager)
      {
         super(§]!M§.§"!V§.Views.PopupView_AddBolts[0],param1);
         this.§["<§ = param2;
         param2.addEventListener(§[!f§.§`h§,this.onUiInteraction);
         (getItemByName("TextField_Bolts_Header") as §!!]§).setText("Out of Bolts!");
         (getItemByName("TextField_Bolts_Header_Small") as §!!]§).setText("Refill your Bolts to Build");
         ((getItemByName("Container_BoltsBar_1") as §6W§).getItemByName("Textfield_Amount") as §!!]§).setText(§&!p§ + §["0§[0].toString());
         ((getItemByName("Container_BoltsBar_2") as §6W§).getItemByName("Textfield_Amount") as §!!]§).setText(§&!p§ + §["0§[1].toString());
         ((getItemByName("Container_BoltsBar_3") as §6W§).getItemByName("Textfield_Amount") as §!!]§).setText(§&!p§ + §["0§[2].toString());
         ((getItemByName("Container_BoltsBar_4") as §6W§).getItemByName("Textfield_Amount") as §!!]§).setText(§&!p§ + §["0§[3].toString());
      }
      
      private function onUiInteraction(param1:§[!f§) : void
      {
         this.uiInteractionHandler(param1.§4§,param1.§'!5§,param1.component);
      }
      
      private function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc4_:int = 0;
         switch(param2)
         {
            case "CLOSE_POPUP":
               §0"#§.§9"2§("Sound_Button_Back");
               this.deActivate();
         }
         if(param2.indexOf("ADD_BOLTS") != -1)
         {
            _loc4_ = parseInt(param2.substr(param2.length - 1,1)) - 1;
            §,$§.§[E§.§9!j§(§,$§.§<!^§,§%!D§[_loc4_]);
            this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         this.§["<§.removeEventListener(§[!f§.§`h§,this.onUiInteraction);
         super.deActivate();
         preClose();
      }
   }
}

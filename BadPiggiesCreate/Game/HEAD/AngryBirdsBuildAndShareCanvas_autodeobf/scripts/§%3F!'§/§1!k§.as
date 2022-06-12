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
   
   public class §1!k§ extends Popup
   {
      
      private static const §["0§:Array = [1,2,5,20,50];
      
      private static const §=!=§:Array = [5,10,50,200,500];
      
      private static const §&">§:String = "X ";
      
      private static const §^!#§:String = "+";
       
      
      private var §["<§:StatePopupManager;
      
      public function §1!k§(param1:§>!V§, param2:StatePopupManager)
      {
         super(§]!M§.§"!V§.Views.PopupView_AddBlocks[0],param1);
         this.§["<§ = param2;
         param2.addEventListener(§[!f§.§`h§,this.onUiInteraction);
         (getItemByName("TextField_Blocks_Header") as §!!]§).setText("More Building Objects");
         (((getItemByName("Container_AddBlock_1") as §6W§).getItemByName("Container_AddBlocks") as §6W§).getItemByName("Textfield_Amount") as §!!]§).setText(§&">§ + §["0§[0].toString());
         (((getItemByName("Container_AddBlock_2") as §6W§).getItemByName("Container_AddBlocks") as §6W§).getItemByName("Textfield_Amount") as §!!]§).setText(§&">§ + §["0§[1].toString());
         (((getItemByName("Container_AddBlock_3") as §6W§).getItemByName("Container_AddBlocks") as §6W§).getItemByName("Textfield_Amount") as §!!]§).setText(§&">§ + §["0§[2].toString());
         (((getItemByName("Container_AddBlock_4") as §6W§).getItemByName("Container_AddBlocks") as §6W§).getItemByName("Textfield_Amount") as §!!]§).setText(§&">§ + §["0§[3].toString());
         (((getItemByName("Container_AddBlock_5") as §6W§).getItemByName("Container_AddBlocks") as §6W§).getItemByName("Textfield_Amount") as §!!]§).setText(§&">§ + §["0§[4].toString());
         ((getItemByName("Container_AddBlock_1") as §6W§).getItemByName("TextField_Block_Amount") as §!!]§).setText(§^!#§ + §=!=§[0].toString());
         ((getItemByName("Container_AddBlock_2") as §6W§).getItemByName("TextField_Block_Amount") as §!!]§).setText(§^!#§ + §=!=§[1].toString());
         ((getItemByName("Container_AddBlock_3") as §6W§).getItemByName("TextField_Block_Amount") as §!!]§).setText(§^!#§ + §=!=§[2].toString());
         ((getItemByName("Container_AddBlock_4") as §6W§).getItemByName("TextField_Block_Amount") as §!!]§).setText(§^!#§ + §=!=§[3].toString());
         ((getItemByName("Container_AddBlock_5") as §6W§).getItemByName("TextField_Block_Amount") as §!!]§).setText(§^!#§ + §=!=§[4].toString());
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
               §0"#§.§9"2§("Menu_Confirm");
               this.deActivate();
         }
         if(param2.indexOf("ADD_BLOCKS") != -1)
         {
            _loc4_ = parseInt(param2.substr(param2.length - 1,1)) - 1;
            §,$§.§[E§.§9!j§(§,$§.INCREASE_ITEM_COUNT,§=!=§[_loc4_]);
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

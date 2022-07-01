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
   
   public class §2Q§ extends Popup
   {
      
      private static const §4!^§:Array = [1,2,5,20,50];
      
      private static const §]!d§:Array = [5,10,50,200,500];
      
      private static const §5!$§:String = "X ";
      
      private static const §0!2§:String = "+";
       
      
      private var §'<§:StatePopupManager;
      
      public function §2Q§(param1:§%!u§, param2:StatePopupManager)
      {
         super(§#! §.§5!;§.Views.PopupView_AddBlocks[0],param1);
         this.§'<§ = param2;
         param2.addEventListener(§65§.§]!7§,this.onUiInteraction);
         (getItemByName("TextField_Blocks_Header") as §6m§).setText("More Building Objects");
         (((getItemByName("Container_AddBlock_1") as §+!?§).getItemByName("Container_AddBlocks") as §+!?§).getItemByName("Textfield_Amount") as §6m§).setText(§5!$§ + §4!^§[0].toString());
         (((getItemByName("Container_AddBlock_2") as §+!?§).getItemByName("Container_AddBlocks") as §+!?§).getItemByName("Textfield_Amount") as §6m§).setText(§5!$§ + §4!^§[1].toString());
         (((getItemByName("Container_AddBlock_3") as §+!?§).getItemByName("Container_AddBlocks") as §+!?§).getItemByName("Textfield_Amount") as §6m§).setText(§5!$§ + §4!^§[2].toString());
         (((getItemByName("Container_AddBlock_4") as §+!?§).getItemByName("Container_AddBlocks") as §+!?§).getItemByName("Textfield_Amount") as §6m§).setText(§5!$§ + §4!^§[3].toString());
         (((getItemByName("Container_AddBlock_5") as §+!?§).getItemByName("Container_AddBlocks") as §+!?§).getItemByName("Textfield_Amount") as §6m§).setText(§5!$§ + §4!^§[4].toString());
         ((getItemByName("Container_AddBlock_1") as §+!?§).getItemByName("TextField_Block_Amount") as §6m§).setText(§0!2§ + §]!d§[0].toString());
         ((getItemByName("Container_AddBlock_2") as §+!?§).getItemByName("TextField_Block_Amount") as §6m§).setText(§0!2§ + §]!d§[1].toString());
         ((getItemByName("Container_AddBlock_3") as §+!?§).getItemByName("TextField_Block_Amount") as §6m§).setText(§0!2§ + §]!d§[2].toString());
         ((getItemByName("Container_AddBlock_4") as §+!?§).getItemByName("TextField_Block_Amount") as §6m§).setText(§0!2§ + §]!d§[3].toString());
         ((getItemByName("Container_AddBlock_5") as §+!?§).getItemByName("TextField_Block_Amount") as §6m§).setText(§0!2§ + §]!d§[4].toString());
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
               §^k§.playSound("Menu_Confirm");
               this.deActivate();
         }
         if(param2.indexOf("ADD_BLOCKS") != -1)
         {
            _loc4_ = parseInt(param2.substr(param2.length - 1,1)) - 1;
            §<!x§.§ "!§.§]!A§(§<!x§.INCREASE_ITEM_COUNT,§]!d§[_loc4_]);
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

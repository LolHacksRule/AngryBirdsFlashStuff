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
   
   public class §1!r§ extends Popup
   {
      
      private static const §5"1§:Array = [1,2,5,20,50];
      
      private static const §9"0§:Array = [5,10,50,200,500];
      
      private static const §`";§:String = "X ";
      
      private static const §+!j§:String = "+";
       
      
      private var §?!>§:StatePopupManager;
      
      public function §1!r§(param1:§=!]§, param2:StatePopupManager)
      {
         super(§,!h§.§`C§.Views.PopupView_AddBlocks[0],param1);
         this.§?!>§ = param2;
         param2.addEventListener(§&!j§.§<G§,this.onUiInteraction);
         (getItemByName("TextField_Blocks_Header") as §<"-§).setText("More Building Objects");
         (((getItemByName("Container_AddBlock_1") as §1H§).getItemByName("Container_AddBlocks") as §1H§).getItemByName("Textfield_Amount") as §<"-§).setText(§`";§ + §5"1§[0].toString());
         (((getItemByName("Container_AddBlock_2") as §1H§).getItemByName("Container_AddBlocks") as §1H§).getItemByName("Textfield_Amount") as §<"-§).setText(§`";§ + §5"1§[1].toString());
         (((getItemByName("Container_AddBlock_3") as §1H§).getItemByName("Container_AddBlocks") as §1H§).getItemByName("Textfield_Amount") as §<"-§).setText(§`";§ + §5"1§[2].toString());
         (((getItemByName("Container_AddBlock_4") as §1H§).getItemByName("Container_AddBlocks") as §1H§).getItemByName("Textfield_Amount") as §<"-§).setText(§`";§ + §5"1§[3].toString());
         (((getItemByName("Container_AddBlock_5") as §1H§).getItemByName("Container_AddBlocks") as §1H§).getItemByName("Textfield_Amount") as §<"-§).setText(§`";§ + §5"1§[4].toString());
         ((getItemByName("Container_AddBlock_1") as §1H§).getItemByName("TextField_Block_Amount") as §<"-§).setText(§+!j§ + §9"0§[0].toString());
         ((getItemByName("Container_AddBlock_2") as §1H§).getItemByName("TextField_Block_Amount") as §<"-§).setText(§+!j§ + §9"0§[1].toString());
         ((getItemByName("Container_AddBlock_3") as §1H§).getItemByName("TextField_Block_Amount") as §<"-§).setText(§+!j§ + §9"0§[2].toString());
         ((getItemByName("Container_AddBlock_4") as §1H§).getItemByName("TextField_Block_Amount") as §<"-§).setText(§+!j§ + §9"0§[3].toString());
         ((getItemByName("Container_AddBlock_5") as §1H§).getItemByName("TextField_Block_Amount") as §<"-§).setText(§+!j§ + §9"0§[4].toString());
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
               §5;§.playSound("Menu_Confirm");
               this.deActivate();
         }
         if(param2.indexOf("ADD_BLOCKS") != -1)
         {
            _loc4_ = parseInt(param2.substr(param2.length - 1,1)) - 1;
            §3h§.§7!?§.§]!f§(§3h§.INCREASE_ITEM_COUNT,§9"0§[_loc4_]);
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

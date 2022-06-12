package §+h§
{
   import §'!A§.§-!S§;
   import §'p§.§`!<§;
   import §'p§.§`!T§;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §6!U§.§+!!§;
   import §9!O§.§0x§;
   
   public class §="-§ extends Popup
   {
      
      private static const §^"=§:Array = [1,2,5,20,50];
      
      private static const §0!b§:Array = [5,10,50,200,500];
      
      private static const §2q§:String = "X ";
      
      private static const §6!I§:String = "+";
       
      
      private var §2P§:StatePopupManager;
      
      public function §="-§(param1:§'s§, param2:StatePopupManager)
      {
         super(§`7§.§>"?§.Views.PopupView_AddBlocks[0],param1);
         this.§2P§ = param2;
         param2.addEventListener(§+!!§.§]!M§,this.onUiInteraction);
         (getItemByName("TextField_Blocks_Header") as §`!<§).setText("More Building Objects");
         (((getItemByName("Container_AddBlock_1") as §`!T§).getItemByName("Container_AddBlocks") as §`!T§).getItemByName("Textfield_Amount") as §`!<§).setText(§2q§ + §^"=§[0].toString());
         (((getItemByName("Container_AddBlock_2") as §`!T§).getItemByName("Container_AddBlocks") as §`!T§).getItemByName("Textfield_Amount") as §`!<§).setText(§2q§ + §^"=§[1].toString());
         (((getItemByName("Container_AddBlock_3") as §`!T§).getItemByName("Container_AddBlocks") as §`!T§).getItemByName("Textfield_Amount") as §`!<§).setText(§2q§ + §^"=§[2].toString());
         (((getItemByName("Container_AddBlock_4") as §`!T§).getItemByName("Container_AddBlocks") as §`!T§).getItemByName("Textfield_Amount") as §`!<§).setText(§2q§ + §^"=§[3].toString());
         (((getItemByName("Container_AddBlock_5") as §`!T§).getItemByName("Container_AddBlocks") as §`!T§).getItemByName("Textfield_Amount") as §`!<§).setText(§2q§ + §^"=§[4].toString());
         ((getItemByName("Container_AddBlock_1") as §`!T§).getItemByName("TextField_Block_Amount") as §`!<§).setText(§6!I§ + §0!b§[0].toString());
         ((getItemByName("Container_AddBlock_2") as §`!T§).getItemByName("TextField_Block_Amount") as §`!<§).setText(§6!I§ + §0!b§[1].toString());
         ((getItemByName("Container_AddBlock_3") as §`!T§).getItemByName("TextField_Block_Amount") as §`!<§).setText(§6!I§ + §0!b§[2].toString());
         ((getItemByName("Container_AddBlock_4") as §`!T§).getItemByName("TextField_Block_Amount") as §`!<§).setText(§6!I§ + §0!b§[3].toString());
         ((getItemByName("Container_AddBlock_5") as §`!T§).getItemByName("TextField_Block_Amount") as §`!<§).setText(§6!I§ + §0!b§[4].toString());
      }
      
      private function onUiInteraction(param1:§+!!§) : void
      {
         this.uiInteractionHandler(param1.§&!X§,param1.§1_§,param1.component);
      }
      
      private function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc4_:int = 0;
         switch(param2)
         {
            case "CLOSE_POPUP":
               §5!U§.playSound("Menu_Confirm");
               this.deActivate();
         }
         if(param2.indexOf("ADD_BLOCKS") != -1)
         {
            _loc4_ = parseInt(param2.substr(param2.length - 1,1)) - 1;
            §0x§.§2=§.§"""§(§0x§.INCREASE_ITEM_COUNT,§0!b§[_loc4_]);
            this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         this.§2P§.removeEventListener(§+!!§.§]!M§,this.onUiInteraction);
         super.deActivate();
         preClose();
      }
   }
}

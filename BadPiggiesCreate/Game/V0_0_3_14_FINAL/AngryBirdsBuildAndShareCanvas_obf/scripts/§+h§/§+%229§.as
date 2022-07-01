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
   
   public class §+"9§ extends Popup
   {
      
      private static const §^"=§:Array = [3,5,7,10];
      
      private static const §"!z§:Array = [1,2,3,5];
      
      private static const §8!I§:String = "X ";
       
      
      private var §2P§:StatePopupManager;
      
      public function §+"9§(param1:§'s§, param2:StatePopupManager)
      {
         super(§`7§.§>"?§.Views.PopupView_AddBolts[0],param1);
         this.§2P§ = param2;
         param2.addEventListener(§+!!§.§]!M§,this.onUiInteraction);
         (getItemByName("TextField_Bolts_Header") as §`!<§).setText("Out of Bolts!");
         (getItemByName("TextField_Bolts_Header_Small") as §`!<§).setText("Refill your Bolts to Build");
         ((getItemByName("Container_BoltsBar_1") as §`!T§).getItemByName("Textfield_Amount") as §`!<§).setText(§8!I§ + §^"=§[0].toString());
         ((getItemByName("Container_BoltsBar_2") as §`!T§).getItemByName("Textfield_Amount") as §`!<§).setText(§8!I§ + §^"=§[1].toString());
         ((getItemByName("Container_BoltsBar_3") as §`!T§).getItemByName("Textfield_Amount") as §`!<§).setText(§8!I§ + §^"=§[2].toString());
         ((getItemByName("Container_BoltsBar_4") as §`!T§).getItemByName("Textfield_Amount") as §`!<§).setText(§8!I§ + §^"=§[3].toString());
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
               §5!U§.playSound("Sound_Button_Back");
               this.deActivate();
         }
         if(param2.indexOf("ADD_BOLTS") != -1)
         {
            _loc4_ = parseInt(param2.substr(param2.length - 1,1)) - 1;
            §0x§.§2=§.§"""§(§0x§.§1!O§,§"!z§[_loc4_]);
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

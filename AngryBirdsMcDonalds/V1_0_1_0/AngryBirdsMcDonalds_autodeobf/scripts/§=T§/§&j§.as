package §=T§
{
   import §%<§.§+V§;
   import §-1§.§%#§;
   import §1!D§.§0S§;
   import §3l§.§9m§;
   import §8!X§.§'f§;
   import §9!8§.§0!7§;
   import §^5§.§]!,§;
   import §`!W§.§^!e§;
   
   public class §&j§ extends Popup
   {
      
      private static var §+!§:Class = §`![§;
       
      
      private var §>V§:StatePopupManager;
      
      private var §%O§:§]!,§;
      
      private var §6R§:String = "";
      
      public function §&j§(param1:§0!7§, param2:StatePopupManager, param3:§]!,§, param4:String)
      {
         super(§^!e§.§=j§(§+!§),param1);
         §+!H§ = param1;
         this.§>V§ = param2;
         this.§%O§ = param3;
         this.§6R§ = param4;
         this.§>V§.addEventListener(§'f§.§5a§,this.onUiInteraction);
         this.updateTextFields();
      }
      
      private function onUiInteraction(param1:§'f§) : void
      {
         this.uiInteractionHandler(param1.§7v§,param1.§;!'§,param1.§>!2§);
         this.§%O§.uiInteractionHandler(param1.§7v§,param1.§;!'§,param1.§>!2§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§%#§) : void
      {
         switch(param2)
         {
            case "BUTTON_OK":
               this.preClose();
         }
      }
      
      override public function updateTextFields() : void
      {
         if(this.§6R§ != "")
         {
            §+!H§.getItemByName("TextField_CodeActivatedError").setVisibility(true);
            §+!H§.getItemByName("TextField_CodeActivatedCongrat").setVisibility(false);
            §+!H§.getItemByName("TextField_CodeActivated").setVisibility(false);
            §0S§.§>E§.§@B§(§;!4§.§?-§.§]!d§().mUIView,"Error_Messages","TextField_CodeActivatedError",this.§6R§);
         }
         else
         {
            §+!H§.getItemByName("TextField_CodeActivatedError").setVisibility(false);
            §+!H§.getItemByName("TextField_CodeActivatedCongrat").setVisibility(true);
            §+!H§.getItemByName("TextField_CodeActivated").setVisibility(true);
            §0S§.§>E§.updateTextFields(§+!H§,"CodeActivated_Popup");
         }
      }
      
      override public function close() : void
      {
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         §+V§.sHighscoreSidebar.enableLogOutButton(false);
         §+V§.sHighscoreSidebar.enableCreditsButton(false);
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§>]§ != null)
            {
               §>]§.stop();
            }
            §>]§ = §9m§.§>E§.§"0§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§9m§.§'e§);
            §>]§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§>]§ != null)
            {
               §>]§.stop();
            }
            §>]§ = §9m§.§>E§.§"0§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§9m§.§+y§);
            §>]§.play();
         }
      }
      
      override public function deActivate() : void
      {
         §+V§.sHighscoreSidebar.enableLogOutButton(true);
         §+V§.sHighscoreSidebar.enableCreditsButton(true);
         this.§>V§.removeEventListener(§'f§.§5a§,this.onUiInteraction);
         super.deActivate();
      }
   }
}

package §37§
{
   import §#!q§.§`q§;
   import §+$§.§[!a§;
   import §0i§.§@^§;
   import §3!S§.§-!^§;
   import §3<§.§-2§;
   import §7E§.§ =§;
   import §^m§.§=!a§;
   
   public class §4!d§ extends Popup
   {
      
      private static var § T§:Class = §9h§;
       
      
      private var §-W§:StatePopupManager;
      
      private var §8p§:§ =§;
      
      private var §,Q§:String = "";
      
      public function §4!d§(param1:§-2§, param2:StatePopupManager, param3:§ =§, param4:String)
      {
         super(§@^§.§'K§(§ T§),param1);
         §9K§ = param1;
         this.§-W§ = param2;
         this.§8p§ = param3;
         this.§,Q§ = param4;
         this.§-W§.addEventListener(§-!^§.§?!G§,this.onUiInteraction);
         this.updateTextFields();
      }
      
      private function onUiInteraction(param1:§-!^§) : void
      {
         this.uiInteractionHandler(param1.§`[§,param1.§&!F§,param1.§?B§);
         this.§8p§.uiInteractionHandler(param1.§`[§,param1.§&!F§,param1.§?B§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§[!a§) : void
      {
         switch(param2)
         {
            case "BUTTON_OK":
               this.preClose();
         }
      }
      
      override public function updateTextFields() : void
      {
         if(this.§,Q§ != "")
         {
            §9K§.getItemByName("TextField_CodeActivatedError").setVisibility(true);
            §9K§.getItemByName("TextField_CodeActivatedCongrat").setVisibility(false);
            §9K§.getItemByName("TextField_CodeActivated").setVisibility(false);
            §`q§.§9$§.§]!l§(§9!_§.§@r§.§#!k§().mUIView,"Error_Messages","TextField_CodeActivatedError",this.§,Q§);
         }
         else
         {
            §9K§.getItemByName("TextField_CodeActivatedError").setVisibility(false);
            §9K§.getItemByName("TextField_CodeActivatedCongrat").setVisibility(true);
            §9K§.getItemByName("TextField_CodeActivated").setVisibility(true);
            §`q§.§9$§.updateTextFields(§9K§,"CodeActivated_Popup");
         }
      }
      
      override public function close() : void
      {
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         §2'§.sHighscoreSidebar.enableLogOutButton(false);
         §2'§.sHighscoreSidebar.enableCreditsButton(false);
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§+!Y§ != null)
            {
               §+!Y§.stop();
            }
            §+!Y§ = §=!a§.§9$§.§9!H§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§=!a§.§@!m§);
            §+!Y§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§+!Y§ != null)
            {
               §+!Y§.stop();
            }
            §+!Y§ = §=!a§.§9$§.§9!H§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§=!a§.§%!R§);
            §+!Y§.play();
         }
      }
      
      override public function deActivate() : void
      {
         §2'§.sHighscoreSidebar.enableLogOutButton(true);
         §2'§.sHighscoreSidebar.enableCreditsButton(true);
         this.§-W§.removeEventListener(§-!^§.§?!G§,this.onUiInteraction);
         super.deActivate();
      }
   }
}

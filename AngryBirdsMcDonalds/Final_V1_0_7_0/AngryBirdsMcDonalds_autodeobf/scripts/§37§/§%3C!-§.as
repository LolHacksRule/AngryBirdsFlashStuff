package §37§
{
   import §#!q§.§`q§;
   import §%!5§.§7;§;
   import §'!B§.§1!R§;
   import §+$§.§[!a§;
   import §+J§.§?!'§;
   import §-!F§.§2[§;
   import §0i§.§@^§;
   import §3!S§.§-!^§;
   import §3<§.§-2§;
   import §7!N§.§0-§;
   import §7!N§.§3!0§;
   import §7!N§.§9!o§;
   import §7E§.§ =§;
   import §9!$§.HighscoreSidebar;
   import §]w§.§8!L§;
   import §^m§.§=!a§;
   
   public class §<!-§ extends Popup
   {
      
      private static var § T§:Class = §5M§;
       
      
      private var §-W§:StatePopupManager;
      
      private var §8p§:§ =§;
      
      private var §2U§:Boolean = false;
      
      public function §<!-§(param1:§-2§, param2:StatePopupManager, param3:§ =§)
      {
         super(§@^§.§'K§(§ T§),param1);
         §9K§ = param1;
         this.§-W§ = param2;
         this.§8p§ = param3;
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
            case "LOGOUT_YES":
               this.preClose();
               this.§2U§ = true;
               break;
            case "LOGOUT_NO":
               this.preClose();
         }
      }
      
      override public function updateTextFields() : void
      {
         §`q§.§9$§.updateTextFields(§9K§,"Logout_Popup");
      }
      
      override public function close() : void
      {
         var _loc1_:int = 0;
         super.close();
         this.deActivate();
         if(this.§2U§)
         {
            while(§8!`§.§7!5§)
            {
               §8!`§.§2Q§();
            }
            _loc1_ = 0;
            while(_loc1_ < §&!;§.§?`§.length)
            {
               if(§&!;§.§?`§[_loc1_] is Popup)
               {
                  §&!;§.§?`§[_loc1_].close();
               }
               _loc1_++;
            }
            this.§2U§ = false;
            §1!R§.§;W§ = true;
            §9!_§.§1!?§ = new §9!o§("");
            §0-§.levelProfile = [];
            §0-§.§6!&§ = new §?!'§();
            §3!0§.§9$§.§=0§();
            §7;§.§-!3§();
            §7;§.§1h§.§4!@§(false);
            §7;§.§1h§.§^p§(false);
            §"e§.§[r§ = § try§.§[!1§;
            §2[§.§'!T§(§2[§.§`t§(HighscoreSidebar.§9!J§[2]));
            §9!_§.§@r§.§3N§(§"e§.§[!1§);
            §2'§.sHighscoreSidebar.reset();
            §8!L§.§9$§.§5!-§();
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         §2'§.sHighscoreSidebar.enableLogOutButton(false);
         §2'§.sHighscoreSidebar.enableCreditsButton(false);
         §2'§.sHighscoreSidebar.enableHelpButton(false);
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
         this.§-W§.removeEventListener(§-!^§.§?!G§,this.onUiInteraction);
         if(§9!_§.§@r§.§2!"§() == § try§.§[!1§)
         {
            §2'§.sHighscoreSidebar.enableCreditsButton(true);
         }
         super.deActivate();
      }
   }
}

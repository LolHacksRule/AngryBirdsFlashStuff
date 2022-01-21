package §=T§
{
   import §"!§.§`!A§;
   import §%<§.§%!$§;
   import §%<§.§+V§;
   import §%<§.§=@§;
   import §-1§.§%#§;
   import §1!D§.§0S§;
   import §2o§.§<H§;
   import §3#§.HighscoreSidebar;
   import §3l§.§9m§;
   import §8!P§.§5e§;
   import §8!X§.§'f§;
   import §9!8§.§0!7§;
   import §?H§.§3!X§;
   import §?H§.§>!!§;
   import §?H§.§>!X§;
   import §^5§.§]!,§;
   import §^u§.§5!U§;
   import §`!W§.§^!e§;
   import §`!d§.§7!§;
   
   public class §;!E§ extends Popup
   {
      
      private static var §+!§:Class = §!v§;
       
      
      private var §>V§:StatePopupManager;
      
      private var §%O§:§]!,§;
      
      private var §,'§:Boolean = false;
      
      public function §;!E§(param1:§0!7§, param2:StatePopupManager, param3:§]!,§)
      {
         super(§^!e§.§=j§(§+!§),param1);
         §+!H§ = param1;
         this.§>V§ = param2;
         this.§%O§ = param3;
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
            case "LOGOUT_YES":
               this.preClose();
               this.§,'§ = true;
               break;
            case "LOGOUT_NO":
               this.preClose();
         }
      }
      
      override public function updateTextFields() : void
      {
         §0S§.§>E§.updateTextFields(§+!H§,"Logout_Popup");
      }
      
      override public function close() : void
      {
         var _loc1_:int = 0;
         super.close();
         this.deActivate();
         if(this.§,'§)
         {
            while(§=W§.§,s§)
            {
               §=W§.§ E§();
            }
            _loc1_ = 0;
            while(_loc1_ < §0!%§.§]V§.length)
            {
               if(§0!%§.§]V§[_loc1_] is Popup)
               {
                  §0!%§.§]V§[_loc1_].close();
               }
               _loc1_++;
            }
            this.§,'§ = false;
            §`!A§.§7F§ = true;
            §;!4§.§8'§ = new §3!X§("");
            §>!!§.levelProfile = [];
            §>!!§.§^!4§ = new §5!U§();
            §>!X§.§>E§.§2!,§();
            §<H§.§5j§();
            §<H§.§=3§.§&e§(false);
            §<H§.§=3§.§]!<§(false);
            §%!$§.§`1§ = §=@§.§<P§;
            §7!§.§>!R§(§7!§.§?!n§(HighscoreSidebar.§8t§[2]));
            §;!4§.§?-§.§^!Z§(§%!$§.§<P§);
            §+V§.sHighscoreSidebar.reset();
            §5e§.§>E§.§in §();
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         §+V§.sHighscoreSidebar.enableLogOutButton(false);
         §+V§.sHighscoreSidebar.enableCreditsButton(false);
         §+V§.sHighscoreSidebar.enableHelpButton(false);
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
         this.§>V§.removeEventListener(§'f§.§5a§,this.onUiInteraction);
         if(§;!4§.§?-§.§>;§() == §=@§.§<P§)
         {
            §+V§.sHighscoreSidebar.enableCreditsButton(true);
         }
         super.deActivate();
      }
   }
}

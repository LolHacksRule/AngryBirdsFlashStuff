package §+F§
{
   import § !Y§.§2#§;
   import § #§.§[!B§;
   import §&!V§.§=O§;
   import §2Y§.§]!k§;
   import §3!R§.§81§;
   import §3g§.§"!n§;
   import §5K§.§1[§;
   import §7-§.§"_§;
   import §7-§.§-e§;
   import §7-§.§[!$§;
   import §8T§.§[!R§;
   import §=b§.§!!Z§;
   import §=b§.§&!1§;
   import §=b§.§,!G§;
   import §>!%§.HighscoreSidebar;
   import §?7§.§87§;
   import §?I§.§`E§;
   import §`!"§.§;i§;
   import §finally§.§8k§;
   
   public class §2!e§ extends Popup
   {
      
      private static var §8+§:Class = §`%§;
       
      
      private var §?E§:StatePopupManager;
      
      private var §'A§:§=O§;
      
      private var §?@§:Boolean = false;
      
      public function §2!e§(param1:§"!n§, param2:StatePopupManager, param3:§=O§)
      {
         super(§1[§.§4L§(§8+§),param1);
         §<D§ = param1;
         this.§?E§ = param2;
         this.§'A§ = param3;
         this.§?E§.addEventListener(§[!R§.§11§,this.onUiInteraction);
         this.updateTextFields();
      }
      
      private function onUiInteraction(param1:§[!R§) : void
      {
         this.uiInteractionHandler(param1.§2!n§,param1.§+!b§,param1.§?3§);
         this.§'A§.uiInteractionHandler(param1.§2!n§,param1.§+!b§,param1.§?3§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§81§) : void
      {
         switch(param2)
         {
            case "LOGOUT_YES":
               this.preClose();
               this.§?@§ = true;
               break;
            case "LOGOUT_NO":
               this.preClose();
         }
      }
      
      override public function updateTextFields() : void
      {
         §`E§.§@!7§.updateTextFields(§<D§,"Logout_Popup");
      }
      
      override public function close() : void
      {
         var _loc1_:int = 0;
         super.close();
         this.deActivate();
         if(this.§?@§)
         {
            while(§^!Y§.§,!=§)
            {
               §^!Y§.§^!g§();
            }
            _loc1_ = 0;
            while(_loc1_ < § !J§.§4!'§.length)
            {
               if(§ !J§.§4!'§[_loc1_] is Popup)
               {
                  § !J§.§4!'§[_loc1_].close();
               }
               _loc1_++;
            }
            this.§?@§ = false;
            §[!B§.§3?§ = true;
            §2!M§.§&!#§ = new §!!Z§("");
            §,!G§.levelProfile = [];
            §,!G§.§-!8§ = new §]!k§();
            §&!1§.§@!7§.§7!d§();
            §2#§.§2![§();
            §2#§.§"@§.§0f§(false);
            §2#§.§"@§.§5$§(false);
            §"_§.§@!m§ = §-e§.§<@§;
            §8k§.§;z§(§8k§.§]x§(HighscoreSidebar.§[d§[2]));
            §2!M§.§7!F§.§>R§(§"_§.§<@§);
            §[!$§.sHighscoreSidebar.reset();
            §87§.§@!7§.§'5§();
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         §[!$§.sHighscoreSidebar.enableLogOutButton(false);
         §[!$§.sHighscoreSidebar.enableCreditsButton(false);
         §[!$§.sHighscoreSidebar.enableHelpButton(false);
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§"! § != null)
            {
               §"! §.stop();
            }
            §"! § = §;i§.§@!7§.§@!6§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§;i§.§<l§);
            §"! §.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§"! § != null)
            {
               §"! §.stop();
            }
            §"! § = §;i§.§@!7§.§@!6§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§;i§.§3C§);
            §"! §.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§?E§.removeEventListener(§[!R§.§11§,this.onUiInteraction);
         if(§2!M§.§7!F§.§@!,§() == §-e§.§<@§)
         {
            §[!$§.sHighscoreSidebar.enableCreditsButton(true);
         }
         super.deActivate();
      }
   }
}

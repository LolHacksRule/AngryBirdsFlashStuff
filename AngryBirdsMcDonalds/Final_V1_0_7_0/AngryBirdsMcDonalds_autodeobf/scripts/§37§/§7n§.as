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
   import §7!N§.§9!o§;
   import §7E§.§ =§;
   import §9!$§.HighscoreSidebar;
   import §^m§.§=!a§;
   
   public class §7n§ extends Popup
   {
      
      private static var § T§:Class = §"!!§;
       
      
      private var §-W§:StatePopupManager;
      
      private var §8p§:§ =§;
      
      private var §if §:Boolean = false;
      
      public function §7n§(param1:§-2§, param2:StatePopupManager, param3:§ =§)
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
            case "LOGIN_YES":
               this.preClose();
               this.§if § = true;
               break;
            case "LOGIN_NO":
               this.preClose();
         }
      }
      
      override public function updateTextFields() : void
      {
         §`q§.§9$§.updateTextFields(§9K§,"ConfirmLogin_Popup");
      }
      
      override public function close() : void
      {
         var _loc1_:int = 0;
         super.close();
         this.deActivate();
         if(this.§if §)
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
            this.§if § = false;
            §1!R§.§;W§ = true;
            §9!_§.§1!?§ = new §9!o§("");
            §0-§.levelProfile = [];
            §0-§.§6!&§ = new §?!'§();
            § try§.§>!^§ = true;
            §7;§.§-!3§();
            §7;§.§1h§.§4!@§(false);
            §7;§.§1h§.§^p§(false);
            §"e§.§[r§ = § try§.§[!1§;
            §2[§.§'!T§(§2[§.§`t§(HighscoreSidebar.§9!J§[2]));
            §9!_§.§@r§.§3N§(§"e§.§[!1§);
            §2'§.sHighscoreSidebar.reset();
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         §2'§.sHighscoreSidebar.enableLoginButton(false);
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
         super.deActivate();
      }
   }
}

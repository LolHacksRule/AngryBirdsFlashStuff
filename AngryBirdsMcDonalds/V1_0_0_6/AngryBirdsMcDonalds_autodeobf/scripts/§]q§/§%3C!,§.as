package §]q§
{
   import § !O§.§9!F§;
   import § e§.§&!&§;
   import §"f§.§%1§;
   import §#M§.§+!Z§;
   import §,§.§6!,§;
   import §0;§.§3=§;
   import §5!5§.§1!b§;
   import §6@§.§[! §;
   import §6Y§.§>!F§;
   import §7!>§.§0!_§;
   import §7!Q§.§;_§;
   import §7!Q§.§=!G§;
   import §7!Q§.§[!5§;
   import §7_§.§^d§;
   import §8<§.§with§;
   import §<!R§.HighscoreSidebar;
   import §[l§.§ A§;
   import §[l§.§,Q§;
   import §[l§.§26§;
   
   public class §<!,§ extends Popup
   {
      
      private static var §,c§:Class = §?!G§;
       
      
      private var §=!P§:StatePopupManager;
      
      private var §43§:§1!b§;
      
      private var §[@§:Boolean = false;
      
      public function §<!,§(param1:§3=§, param2:StatePopupManager, param3:§1!b§)
      {
         super(§with§.§ !0§(§,c§),param1);
         §"]§ = param1;
         this.§=!P§ = param2;
         this.§43§ = param3;
         this.§=!P§.addEventListener(§6!,§.§;I§,this.onUiInteraction);
         this.updateTextFields();
      }
      
      private function onUiInteraction(param1:§6!,§) : void
      {
         this.uiInteractionHandler(param1.§=v§,param1.§ !I§,param1.§+!P§);
         this.§43§.uiInteractionHandler(param1.§=v§,param1.§ !I§,param1.§+!P§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§[! §) : void
      {
         switch(param2)
         {
            case "LOGOUT_YES":
               this.preClose();
               this.§[@§ = true;
               break;
            case "LOGOUT_NO":
               this.preClose();
         }
      }
      
      override public function updateTextFields() : void
      {
         §&!&§.§+j§.updateTextFields(§"]§,"Logout_Popup");
      }
      
      override public function close() : void
      {
         var _loc1_:int = 0;
         super.close();
         this.deActivate();
         if(this.§[@§)
         {
            while(§+$§.§+!l§)
            {
               §+$§.§[2§();
            }
            _loc1_ = 0;
            while(_loc1_ < §6l§.§#!Y§.length)
            {
               if(§6l§.§#!Y§[_loc1_] is Popup)
               {
                  §6l§.§#!Y§[_loc1_].close();
               }
               _loc1_++;
            }
            this.§[@§ = false;
            §>!F§.§5i§ = true;
            § 4§.§?H§ = new §;_§("");
            §[!5§.levelProfile = [];
            §[!5§.§7!h§ = new §9!F§();
            §=!G§.§+j§.§0!D§();
            §+!Z§.§2!§();
            §+!Z§.§?!<§.§,!7§(false);
            §+!Z§.§?!<§.§#!Z§(false);
            §26§.§`!,§ = § A§.§!_§;
            §^d§.§^N§(§^d§.§?;§(HighscoreSidebar.§^7§[2]));
            § 4§.§6q§.§]!D§(§26§.§!_§);
            §,Q§.sHighscoreSidebar.reset();
            §0!_§.§+j§.§2D§();
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         §,Q§.sHighscoreSidebar.enableLogOutButton(false);
         §,Q§.sHighscoreSidebar.enableCreditsButton(false);
         §,Q§.sHighscoreSidebar.enableHelpButton(false);
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§<!J§ != null)
            {
               §<!J§.stop();
            }
            §<!J§ = §%1§.§+j§.§78§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§%1§.§=!1§);
            §<!J§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§<!J§ != null)
            {
               §<!J§.stop();
            }
            §<!J§ = §%1§.§+j§.§78§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§%1§.§&!P§);
            §<!J§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§=!P§.removeEventListener(§6!,§.§;I§,this.onUiInteraction);
         if(§ 4§.§6q§.§<!i§() == § A§.§!_§)
         {
            §,Q§.sHighscoreSidebar.enableCreditsButton(true);
         }
         super.deActivate();
      }
   }
}

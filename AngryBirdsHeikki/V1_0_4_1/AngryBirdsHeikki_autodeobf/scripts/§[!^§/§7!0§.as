package §[!^§
{
   import §%!$§.§2!I§;
   import §+!9§.§ 4§;
   import §+!9§.§0!M§;
   import §+!9§.§3!!§;
   import §,J§.§7!A§;
   import §1!6§.§ !3§;
   import §1!6§.§-%§;
   import §6-§.§"H§;
   import §7!X§.§7g§;
   import §;D§.§]T§;
   import §>R§.§4%§;
   import §?!P§.§@@§;
   import §var§.§+!^§;
   
   public class §7!0§ extends Popup
   {
      
      private static var §[[§:Class = §8!F§;
       
      
      private var §!`§:StatePopupManager;
      
      private var §]K§:Boolean = false;
      
      public function §7!0§(param1:§7g§, param2:StatePopupManager)
      {
         super(§2!I§.§;n§(§[[§),param1);
         § !D§ = param1;
         this.§!`§ = param2;
         this.§!`§.addEventListener(§4%§.§"! §,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§4%§) : void
      {
         this.uiInteractionHandler(param1.§'P§,param1.§@O§,param1.§!J§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§+!^§) : void
      {
         switch(param2)
         {
            case "LOGOUT_YES":
               this.preClose();
               this.§]K§ = true;
               break;
            case "LOGOUT_NO":
               this.preClose();
         }
      }
      
      override public function close() : void
      {
         var _loc1_:int = 0;
         super.close();
         this.deActivate();
         if(this.§]K§)
         {
            while(§-m§.§'!E§)
            {
               §-m§.§,Q§();
            }
            _loc1_ = 0;
            while(_loc1_ < §^2§.§<!4§.length)
            {
               if(§^2§.§<!4§[_loc1_] is Popup)
               {
                  §^2§.§<!4§[_loc1_].close();
               }
               _loc1_++;
            }
            this.§]K§ = false;
            §0!M§.§'!]§ = true;
            §1F§.§=l§ = new §-%§("");
            § !3§.§@!`§ = new §]T§();
            §@@§.§9@§();
            §@@§.§ !8§.§5!?§(false);
            §@@§.§ !8§.§,!Y§(false);
            § 4§.§=D§ = §0!M§.§6! §;
            §7!A§.§get §(§7!A§.§]a§(HighscoreSidebar.§4!D§));
            §1F§.§8%§.§,!a§(§ 4§.§6! §);
            §3!!§.sHighscoreSidebar.reset();
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§&&§ != null)
            {
               §&&§.stop();
            }
            §&&§ = §"H§.§'![§.§8Y§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§"H§.§ Y§);
            §&&§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§&&§ != null)
            {
               §&&§.stop();
            }
            §&&§ = §"H§.§'![§.§8Y§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§"H§.§!u§);
            §&&§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§!`§.removeEventListener(§4%§.§"! §,this.onUiInteraction);
         super.deActivate();
      }
   }
}

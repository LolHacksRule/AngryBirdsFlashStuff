package §;C§
{
   import §1!'§.HighscoreSidebar;
   import §3!`§.§8h§;
   import §6!§.§%H§;
   import §6!Q§.§,![§;
   import §6l§.§#!Z§;
   import §>!8§.§4!0§;
   import §@!2§.§%!W§;
   import §@!P§.§3!%§;
   import §@!P§.§7!<§;
   import §`!7§.§[5§;
   import §`!7§.§^!,§;
   
   public class §3O§ extends Popup
   {
      
      private static var §[!H§:Class = §0i§;
       
      
      private var §;!B§:StatePopupManager;
      
      private var §4h§:Boolean = false;
      
      public function §3O§(param1:§4!0§, param2:StatePopupManager)
      {
         super(§,![§.§6b§(§[!H§),param1);
         §0D§ = param1;
         this.§;!B§ = param2;
         this.§;!B§.addEventListener(§%H§.§&!6§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§%H§) : void
      {
         this.uiInteractionHandler(param1.§%+§,param1.§=a§,param1.§&2§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§#!Z§) : void
      {
         switch(param2)
         {
            case "LOGOUT_YES":
               this.preClose();
               this.§4h§ = true;
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
         if(this.§4h§)
         {
            while(§9!P§.isOpen)
            {
               §9!P§.§22§();
            }
            _loc1_ = 0;
            while(_loc1_ < §+!M§.§14§.length)
            {
               if(§+!M§.§14§[_loc1_] is Popup)
               {
                  §+!M§.§14§[_loc1_].close();
               }
               _loc1_++;
            }
            this.§4h§ = false;
            §7!<§.§&>§ = true;
            §=i§.§2S§ = new §^!,§("");
            §[5§.§0c§ = new §%!W§();
            §3!%§.§@<§.reset();
            §3!%§.§@<§.changeState(HighscoreSidebar.§-!G§);
            §=i§.§5!D§.§!d§(§7!<§.§'2§);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§,!_§ != null)
            {
               §,!_§.stop();
            }
            §,!_§ = §8h§.§`G§.§[O§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§8h§.§#H§);
            §,!_§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§,!_§ != null)
            {
               §,!_§.stop();
            }
            §,!_§ = §8h§.§`G§.§[O§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§8h§.§3!E§);
            §,!_§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§;!B§.removeEventListener(§%H§.§&!6§,this.onUiInteraction);
         super.deActivate();
      }
   }
}

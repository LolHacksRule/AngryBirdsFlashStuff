package §]n§
{
   import § ]§.HighscoreSidebar;
   import §"! §.§=s§;
   import §&V§.§9t§;
   import §-"§.§,_§;
   import §-"§.§0!O§;
   import §7H§.§8Q§;
   import §>I§.§1!Q§;
   import §>I§.§for §;
   import §?8§.§%!]§;
   import §^6§.§;l§;
   import §^=§.§4S§;
   
   public class §3!#§ extends Popup
   {
      
      private static var §@!2§:Class = §0!G§;
       
      
      private var §4!]§:StatePopupManager;
      
      private var §[!_§:Boolean = false;
      
      public function §3!#§(param1:§;l§, param2:StatePopupManager)
      {
         super(§4S§.§+X§(§@!2§),param1);
         §'B§ = param1;
         this.§4!]§ = param2;
         this.§4!]§.addEventListener(§%!]§.§]V§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§%!]§) : void
      {
         this.uiInteractionHandler(param1.§>N§,param1.§ !=§,param1.§?E§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§9t§) : void
      {
         switch(param2)
         {
            case "LOGOUT_YES":
               this.preClose();
               this.§[!_§ = true;
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
         if(this.§[!_§)
         {
            while(§9!-§.isOpen)
            {
               §9!-§.§'!$§();
            }
            _loc1_ = 0;
            while(_loc1_ < §=!O§.§5!9§.length)
            {
               if(§=!O§.§5!9§[_loc1_] is Popup)
               {
                  §=!O§.§5!9§[_loc1_].close();
               }
               _loc1_++;
            }
            this.§[!_§ = false;
            §1!Q§.§6!§ = true;
            §-!#§.§4,§ = new §0!O§("");
            §,_§.§9;§ = new §=s§();
            §for §.§^c§.reset();
            §for §.§^c§.changeState(HighscoreSidebar.§7!3§);
            §-!#§.§!!8§.§"G§(§1!Q§.§ !P§);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§@!M§ != null)
            {
               §@!M§.stop();
            }
            §@!M§ = §8Q§.§]!D§.§^w§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§8Q§.§,j§);
            §@!M§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§@!M§ != null)
            {
               §@!M§.stop();
            }
            §@!M§ = §8Q§.§]!D§.§^w§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§8Q§.§;!'§);
            §@!M§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§4!]§.removeEventListener(§%!]§.§]V§,this.onUiInteraction);
         super.deActivate();
      }
   }
}

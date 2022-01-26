package §]c§
{
   import § !Y§.§if§;
   import §"W§.§7`§;
   import §1!K§.§=t§;
   import §3-§.§1L§;
   import §6p§.§,!K§;
   import §93§.§^!H§;
   import §97§.§1j§;
   import §97§.§62§;
   import §97§.§]!X§;
   import §=X§.§7!4§;
   import §>!_§.§9!+§;
   import §?!"§.§?!N§;
   import §?!"§.§^!`§;
   import §[!C§.HighscoreSidebar;
   
   public class §64§ extends Popup
   {
      
      private static var §'X§:Class = §@a§;
       
      
      private var §]A§:StatePopupManager;
      
      private var §7"§:Boolean = false;
      
      public function §64§(param1:§if§, param2:StatePopupManager)
      {
         super(§=t§.§1X§(§'X§),param1);
         §%a§ = param1;
         this.§]A§ = param2;
         this.§]A§.addEventListener(§,!K§.§+!,§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§,!K§) : void
      {
         this.uiInteractionHandler(param1.§,Z§,param1.§@!F§,param1.§+!=§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§^!H§) : void
      {
         switch(param2)
         {
            case "LOGOUT_YES":
               this.preClose();
               this.§7"§ = true;
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
         if(this.§7"§)
         {
            while(§>g§.§]!$§)
            {
               §>g§.§7!U§();
            }
            _loc1_ = 0;
            while(_loc1_ < §6S§.§^7§.length)
            {
               if(§6S§.§^7§[_loc1_] is Popup)
               {
                  §6S§.§^7§[_loc1_].close();
               }
               _loc1_++;
            }
            this.§7"§ = false;
            §1j§.§ !`§ = true;
            §,-§.§?+§ = new §?!N§("");
            §^!`§.§[K§ = new §7`§();
            §1L§.§;!Q§();
            §1L§.§"f§.§2!A§(false);
            §1L§.§"f§.§`f§(false);
            §]!X§.§]!?§ = §1j§.§4l§;
            §7!4§.§^!>§(§7!4§.§!!"§(HighscoreSidebar.§]"§));
            §,-§.§4-§.§8!P§(§]!X§.§4l§);
            §62§.sHighscoreSidebar.reset();
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§%T§ != null)
            {
               §%T§.stop();
            }
            §%T§ = §9!+§.§;!F§.§`!'§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§9!+§.§8!_§);
            §%T§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§%T§ != null)
            {
               §%T§.stop();
            }
            §%T§ = §9!+§.§;!F§.§`!'§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§9!+§.§#! §);
            §%T§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§]A§.removeEventListener(§,!K§.§+!,§,this.onUiInteraction);
         super.deActivate();
      }
   }
}

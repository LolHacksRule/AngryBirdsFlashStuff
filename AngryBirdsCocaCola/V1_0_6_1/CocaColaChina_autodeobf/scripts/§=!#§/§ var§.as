package §=!#§
{
   import §%!c§.§1T§;
   import §%!c§.§@2§;
   import §%3§.§7b§;
   import §+!6§.HighscoreSidebar;
   import §,H§.§1!a§;
   import §,H§.§4!L§;
   import §6a§.§;!a§;
   import §7!H§.§12§;
   import §<!!§.§=§;
   import §<"§.§7!'§;
   import §each §.§>!;§;
   
   public class § var§ extends Popup
   {
      
      private static var §[!6§:Class = §,!]§;
       
      
      private var §]a§:StatePopupManager;
      
      private var §>+§:Boolean = false;
      
      public function § var§(param1:§7b§, param2:StatePopupManager)
      {
         super(§=§.§!B§(§[!6§),param1);
         §]o§ = param1;
         this.§]a§ = param2;
         this.§]a§.addEventListener(§7!'§.§=&§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§7!'§) : void
      {
         this.uiInteractionHandler(param1.§,!<§,param1.§`+§,param1.§<?§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§12§) : void
      {
         switch(param2)
         {
            case "LOGOUT_YES":
               this.preClose();
               this.§>+§ = true;
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
         if(this.§>+§)
         {
            while(§^!>§.isOpen)
            {
               §^!>§.§++§();
            }
            _loc1_ = 0;
            while(_loc1_ < §4i§.§ $§.length)
            {
               if(§4i§.§ $§[_loc1_] is Popup)
               {
                  §4i§.§ $§[_loc1_].close();
               }
               _loc1_++;
            }
            this.§>+§ = false;
            §4!L§.§"=§ = true;
            §6T§.§>c§ = new §1T§("");
            §@2§.§=!'§ = new §>!;§();
            §1!a§.§+D§.reset();
            §1!a§.§+D§.changeState(HighscoreSidebar.§#P§);
            §6T§.§!Z§.§ 7§(§4!L§.§^!O§);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§3!_§ != null)
            {
               §3!_§.stop();
            }
            §3!_§ = §;!a§.§0%§.§,w§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§;!a§.§!!D§);
            §3!_§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§3!_§ != null)
            {
               §3!_§.stop();
            }
            §3!_§ = §;!a§.§0%§.§,w§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§;!a§.§5!L§);
            §3!_§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§]a§.removeEventListener(§7!'§.§=&§,this.onUiInteraction);
         super.deActivate();
      }
   }
}

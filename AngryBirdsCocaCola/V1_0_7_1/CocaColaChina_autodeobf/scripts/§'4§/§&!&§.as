package §'4§
{
   import §%!G§.§ !G§;
   import §%!X§.§=,§;
   import §%n§.§91§;
   import §%n§.§^3§;
   import §1"§.HighscoreSidebar;
   import §2!$§.§<!%§;
   import §?@§.§^!M§;
   import §@O§.§7;§;
   import §[!=§.§!!K§;
   import §^!5§.§+^§;
   import §^!5§.§>9§;
   
   public class §&!&§ extends Popup
   {
      
      private static var §=%§:Class = §!s§;
       
      
      private var §1%§:StatePopupManager;
      
      private var §'!0§:Boolean = false;
      
      public function §&!&§(param1:§ !G§, param2:StatePopupManager)
      {
         super(§^!M§.§2!^§(§=%§),param1);
         §!!#§ = param1;
         this.§1%§ = param2;
         this.§1%§.addEventListener(§7;§.§;D§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§7;§) : void
      {
         this.uiInteractionHandler(param1.§2!<§,param1.§<!R§,param1.§+!P§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§<!%§) : void
      {
         switch(param2)
         {
            case "LOGOUT_YES":
               this.preClose();
               this.§'!0§ = true;
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
         if(this.§'!0§)
         {
            while(§@;§.isOpen)
            {
               §@;§.§,S§();
            }
            _loc1_ = 0;
            while(_loc1_ < §0!D§.§[]§.length)
            {
               if(§0!D§.§[]§[_loc1_] is Popup)
               {
                  §0!D§.§[]§[_loc1_].close();
               }
               _loc1_++;
            }
            this.§'!0§ = false;
            §^3§.§'!V§ = true;
            §"!@§.§6!-§ = new §>9§("");
            §+^§.§@U§ = new §=,§();
            §91§.§'! §.reset();
            §91§.§'! §.changeState(HighscoreSidebar.§^@§);
            §"!@§.§5!8§.§3!9§(§^3§.§^6§);
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§6!L§ != null)
            {
               §6!L§.stop();
            }
            §6!L§ = §!!K§.§'!C§.§'!H§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§!!K§.§#,§);
            §6!L§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§6!L§ != null)
            {
               §6!L§.stop();
            }
            §6!L§ = §!!K§.§'!C§.§'!H§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§!!K§.§<!G§);
            §6!L§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§1%§.removeEventListener(§7;§.§;D§,this.onUiInteraction);
         super.deActivate();
      }
   }
}

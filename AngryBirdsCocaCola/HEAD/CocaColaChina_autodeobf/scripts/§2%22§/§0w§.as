package §2"§
{
   import §%n§.§91§;
   import §%n§.§^3§;
   import §'!G§.§4!§;
   import §2!<§.§<!R§;
   import §32§.HighscoreSidebar;
   import §7]§.§;T§;
   import §=J§.§^<§;
   import §>9§.§9!V§;
   import §>9§.§;!?§;
   import §[!=§.§!!K§;
   
   public class §0w§ extends Popup
   {
      
      private static var §4P§:Class = §%!5§;
       
      
      private var §#Z§:StatePopupManager;
      
      private var §4!>§:Boolean = false;
      
      public function §0w§(param1:§^R§, param2:StatePopupManager)
      {
         super(§4!§.§[!a§(§4P§),param1);
         §&!Q§ = param1;
         this.§#Z§ = param2;
         this.§#Z§.addEventListener(§<!R§.§]!K§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§<!R§) : void
      {
         this.uiInteractionHandler(param1.§+!P§,param1.§;D§,param1.§in§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§;T§) : void
      {
         switch(param2)
         {
            case "LOGOUT_YES":
               this.preClose();
               this.§4!>§ = true;
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
         if(this.§4!>§)
         {
            while(§76§.isOpen)
            {
               §76§.§@!R§();
            }
            _loc1_ = 0;
            while(_loc1_ < §#!P§.§%U§.length)
            {
               if(§#!P§.§%U§[_loc1_] is Popup)
               {
                  §#!P§.§%U§[_loc1_].close();
               }
               _loc1_++;
            }
            this.§4!>§ = false;
            §^3§.§'!V§ = true;
            §"!@§.§-5§ = new §;!?§("");
            §9!V§.§%!§ = new §^<§();
            §91§.§'! §.reset();
            §91§.§'! §.changeState(HighscoreSidebar.§!!;§);
            §"!@§.§!!_§.§3!9§(§^3§.§^6§);
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
            §6!L§ = §!!K§.§@!c§.§'!H§(this.mClip,{
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
            §6!L§ = §!!K§.§@!c§.§'!H§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§!!K§.§<!G§);
            §6!L§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§#Z§.removeEventListener(§<!R§.§]!K§,this.onUiInteraction);
         super.deActivate();
      }
   }
}

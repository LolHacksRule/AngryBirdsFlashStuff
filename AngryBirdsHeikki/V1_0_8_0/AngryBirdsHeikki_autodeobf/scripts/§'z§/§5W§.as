package §'z§
{
   import § !3§.§[a§;
   import §#!+§.§"$§;
   import §#!T§.§&2§;
   import §0!&§.§@=§;
   import §0;§.§%"§;
   import §0;§.§]U§;
   import §2!D§.§'!7§;
   import §;!0§.§4!I§;
   import §[,§.§3!<§;
   import §[,§.§4!M§;
   import §[,§.§<!Y§;
   import §]b§.§'!O§;
   import §]e§.§&!U§;
   import §`V§.HighscoreSidebar;
   
   public class §5W§ extends Popup
   {
      
      private static var §@!K§:Class = §#!>§;
       
      
      private var §`9§:StatePopupManager;
      
      private var §-!D§:Boolean = false;
      
      public function §5W§(param1:§"$§, param2:StatePopupManager)
      {
         super(§[a§.§`l§(§@!K§),param1);
         §8T§ = param1;
         this.§`9§ = param2;
         this.§`9§.addEventListener(§&!U§.§^!b§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§&!U§) : void
      {
         this.uiInteractionHandler(param1.§5!f§,param1.§]!@§,param1.§6!7§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§4!I§) : void
      {
         switch(param2)
         {
            case "LOGOUT_YES":
               this.preClose();
               this.§-!D§ = true;
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
         if(this.§-!D§)
         {
            while(§super§.§6!U§)
            {
               §super§.§<1§();
            }
            _loc1_ = 0;
            while(_loc1_ < §3?§.§[!D§.length)
            {
               if(§3?§.§[!D§[_loc1_] is Popup)
               {
                  §3?§.§[!D§[_loc1_].close();
               }
               _loc1_++;
            }
            this.§-!D§ = false;
            §3!<§.§7!7§ = true;
            §2!S§.§<P§ = new §%"§("");
            §]U§.§-v§ = new §'!O§();
            §&2§.§"!J§();
            §&2§.§4!1§.§5h§(false);
            §&2§.§4!1§.§-H§(false);
            §4!M§.§!`§ = §3!<§.§+Z§;
            §@=§.§-!Q§(§@=§.§%^§(HighscoreSidebar.§0!I§));
            §2!S§.§'!5§.§@z§(§4!M§.§+Z§);
            §<!Y§.sHighscoreSidebar.reset();
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§`s§ != null)
            {
               §`s§.stop();
            }
            §`s§ = §'!7§.§=,§.§5Z§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§'!7§.§4z§);
            §`s§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§`s§ != null)
            {
               §`s§.stop();
            }
            §`s§ = §'!7§.§=,§.§5Z§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§'!7§.§+d§);
            §`s§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§`9§.removeEventListener(§&!U§.§^!b§,this.onUiInteraction);
         super.deActivate();
      }
   }
}

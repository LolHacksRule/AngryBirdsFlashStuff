package §'!F§
{
   import §#%§.§,!E§;
   import §#%§.§70§;
   import §&!b§.§2!L§;
   import §+!M§.§7!0§;
   import §+B§.§#!b§;
   import §+B§.§-2§;
   import §+B§.§1!g§;
   import §-!9§.§9!!§;
   import §-!f§.§ else§;
   import §1!d§.§9m§;
   import §7e§.§#w§;
   import §8O§.§&#§;
   import §9!f§.§3!N§;
   import §=!§.HighscoreSidebar;
   
   public class §!H§ extends Popup
   {
      
      private static var §6![§:Class = §<!`§;
       
      
      private var §+M§:StatePopupManager;
      
      private var §#!O§:Boolean = false;
      
      public function §!H§(param1:§ else§, param2:StatePopupManager)
      {
         super(§2!L§.§-!7§(§6![§),param1);
         §<8§ = param1;
         this.§+M§ = param2;
         this.§+M§.addEventListener(§3!N§.§+<§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§3!N§) : void
      {
         this.uiInteractionHandler(param1.§`!g§,param1.§[t§,param1.§^r§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§7!0§) : void
      {
         switch(param2)
         {
            case "LOGOUT_YES":
               this.preClose();
               this.§#!O§ = true;
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
         if(this.§#!O§)
         {
            while(§6!_§.§3!G§)
            {
               §6!_§.§=y§();
            }
            _loc1_ = 0;
            while(_loc1_ < §>1§.§9!?§.length)
            {
               if(§>1§.§9!?§[_loc1_] is Popup)
               {
                  §>1§.§9!?§[_loc1_].close();
               }
               _loc1_++;
            }
            this.§#!O§ = false;
            §#!b§.§7b§ = true;
            §"!R§.§0!P§ = new §,!E§("");
            §70§.§6d§ = new §9!!§();
            §&#§.§?p§();
            §&#§.§3!D§.§"!E§(false);
            §&#§.§3!D§.§>!?§(false);
            §1!g§.§9!F§ = §#!b§.§[!%§;
            §#w§.§8>§(§#w§.§0?§(HighscoreSidebar.§!!Q§));
            §"!R§.§=>§.§0!9§(§1!g§.§[!%§);
            §-2§.sHighscoreSidebar.reset();
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§3x§ != null)
            {
               §3x§.stop();
            }
            §3x§ = §9m§.§?! §.§]C§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§9m§.§7l§);
            §3x§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§3x§ != null)
            {
               §3x§.stop();
            }
            §3x§ = §9m§.§?! §.§]C§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§9m§.§4`§);
            §3x§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§+M§.removeEventListener(§3!N§.§+<§,this.onUiInteraction);
         super.deActivate();
      }
   }
}

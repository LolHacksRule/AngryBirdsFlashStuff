package §1!F§
{
   import §!!8§.§-!D§;
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §#!4§.§+!S§;
   import §-!0§.§=J§;
   import §1j§.§=q§;
   import §5!`§.§%!Y§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import §@!i§.§@!n§;
   
   public class §2!i§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "LevelEndFailStateBS";
       
      
      private var §7H§:§%!Y§;
      
      public function §2!i§(param1:Boolean = false, param2:String = "LevelEndFailStateBS")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!$§ = new §2U§(this);
         §+!$§.init(§=!Z§.§;K§.Views.View_LevelEndFailBS[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §'!V§.pause();
         this.§7H§ = new §%!Y§(0,0,0,0);
         §+!$§.movieClip.addChildAt(this.§7H§,§+!$§.movieClip.numChildren - 1);
         this.§7H§.§#[§(0.7);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§7H§)
         {
            if(§+!$§.movieClip.contains(this.§7H§))
            {
               §+!$§.movieClip.removeChild(this.§7H§);
            }
            this.§7H§.clean();
            this.§7H§ = null;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §;!!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §;!!§.STATE_STATUS_COMPLETED;
         }
         return §;!!§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §@!n§.§!=§(StatePlayBS.STATE_NAME);
               mNextState = §@!n§.STATE_NAME;
               break;
            case "MENU":
               §-!D§.§?5§("onLevelMenuOpened");
               mNextState = §6+§.STATE_NAME;
               break;
            case "FULLSCREEN_BUTTON":
               §-!D§.§?5§("onFullscreenToggle");
               break;
            case "LIKE":
               §-!D§.§?5§("onLevelLiked");
               break;
            case "SHARE":
               §-!D§.§?5§("onLevelShared");
               break;
            case "NEXT":
               §-!D§.§?5§("onNextLevel");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function §-w§(param1:Object) : void
      {
         if(§=q§.§?!2§ is §=J§)
         {
            (§=q§.§?!2§ as §=J§).§'!t§ = 1;
         }
      }
   }
}

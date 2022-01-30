package §2x§
{
   import §#!8§.§&!'§;
   import §&k§.§3l§;
   import §0!C§.§,!h§;
   import §0!C§.§=!]§;
   import §07§.§^P§;
   import §0s§.§?!?§;
   import §4!j§.§0p§;
   import §=!<§.§5!U§;
   import §>!5§.§>!T§;
   import §^^§.§1§;
   
   public class §<!`§ extends §>!T§
   {
      
      public static const §>H§:String = "LevelEndFailStateBS";
       
      
      private var §!<§:§3l§;
      
      public function §<!`§(param1:Boolean = false, param2:String = "LevelEndFailStateBS")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3?§ = new §=!]§(this);
         §3?§.init(§,!h§.§`C§.Views.View_LevelEndFailBS[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §5!U§.pause();
         this.§!<§ = new §3l§(0,0,0,0);
         §3?§.movieClip.addChildAt(this.§!<§,§3?§.movieClip.numChildren - 1);
         this.§!<§.§[5§(0.7);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§!<§)
         {
            if(§3?§.movieClip.contains(this.§!<§))
            {
               §3?§.movieClip.removeChild(this.§!<§);
            }
            this.§!<§.clean();
            this.§!<§ = null;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>!T§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §>!T§.STATE_STATUS_COMPLETED;
         }
         return §>!T§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0p§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §1§.§+!u§(StatePlayBS.§>H§);
               mNextState = §1§.§>H§;
               break;
            case "MENU":
               §&!'§.doJsCall("onLevelMenuOpened");
               mNextState = §!!6§.§>H§;
               break;
            case "FULLSCREEN_BUTTON":
               §&!'§.doJsCall("onFullscreenToggle");
               break;
            case "LIKE":
               §&!'§.doJsCall("onLevelLiked");
               break;
            case "SHARE":
               §&!'§.doJsCall("onLevelShared");
               break;
            case "NEXT":
               §&!'§.doJsCall("onNextLevel");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function §%N§(param1:Object) : void
      {
         if(§^P§.§0! § is §?!?§)
         {
            (§^P§.§0! § as §?!?§).§'"5§ = 1;
         }
      }
   }
}

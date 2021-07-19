package §^U§
{
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §,P§.§'_§;
   import §05§.§?s§;
   import §5u§.§-"#§;
   import §;<§.§'B§;
   import §;b§.§@"0§;
   import §<!]§.§]!v§;
   import §<i§.§-"?§;
   import §@y§.§0=§;
   
   public class §7!r§ extends §'B§
   {
      
      public static const §%!Q§:String = "LevelEndFailStateBS";
       
      
      private var §<E§:§]!v§;
      
      public function §7!r§(param1:Boolean = false, param2:String = "LevelEndFailStateBS")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`!v§ = new §>!V§(this);
         §`!v§.init(§]!M§.§"!V§.Views.View_LevelEndFailBS[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §'_§.pause();
         this.§<E§ = new §]!v§(0,0,0,0);
         §`!v§.movieClip.addChildAt(this.§<E§,§`!v§.movieClip.numChildren - 1);
         this.§<E§.§[!r§(0.7);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§<E§)
         {
            if(§`!v§.movieClip.contains(this.§<E§))
            {
               §`!v§.movieClip.removeChild(this.§<E§);
            }
            this.§<E§.clean();
            this.§<E§ = null;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'B§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §'B§.STATE_STATUS_COMPLETED;
         }
         return §'B§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §@"0§.§%P§(StatePlayBS.§%!Q§);
               mNextState = §@"0§.§%!Q§;
               break;
            case "MENU":
               §?s§.doJsCall("onLevelMenuOpened");
               mNextState = §&y§.§%!Q§;
               break;
            case "FULLSCREEN_BUTTON":
               §?s§.doJsCall("onFullscreenToggle");
               break;
            case "LIKE":
               §?s§.doJsCall("onLevelLiked");
               break;
            case "SHARE":
               §?s§.doJsCall("onLevelShared");
               break;
            case "NEXT":
               §?s§.doJsCall("onNextLevel");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function §6<§(param1:Object) : void
      {
         if(§-"#§.§3"=§ is §-"?§)
         {
            (§-"#§.§3"=§ as §-"?§).§9e§ = 1;
         }
      }
   }
}

package §-P§
{
   import §!!T§.§"!S§;
   import §!",§.§"F§;
   import §'!O§.§5!v§;
   import §0!!§.§%!w§;
   import §9!7§.§#p§;
   import §;!+§.§`!#§;
   import §>w§.§4E§;
   import §?!V§.§ T§;
   import §?!V§.§"a§;
   import §`%§.§8!0§;
   
   public class §1!I§ extends §4E§
   {
      
      public static const §#!w§:String = "LevelEndFailStateBS";
       
      
      private var §;!z§:§%!w§;
      
      public function §1!I§(param1:Boolean = false, param2:String = "LevelEndFailStateBS")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §1!j§ = new § T§(this);
         §1!j§.init(§"a§.§-!g§.Views.View_LevelEndFailBS[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §8!0§.pause();
         this.§;!z§ = new §%!w§(0,0,0,0);
         §1!j§.movieClip.addChildAt(this.§;!z§,§1!j§.movieClip.numChildren - 1);
         this.§;!z§.§4g§(0.7);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§;!z§)
         {
            if(§1!j§.movieClip.contains(this.§;!z§))
            {
               §1!j§.movieClip.removeChild(this.§;!z§);
            }
            this.§;!z§.clean();
            this.§;!z§ = null;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §4E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §4E§.STATE_STATUS_COMPLETED;
         }
         return §4E§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#p§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §"F§.§%!,§(StatePlayBS.§#!w§);
               mNextState = §"F§.§#!w§;
               break;
            case "MENU":
               §"!S§.doJsCall("onLevelMenuOpened");
               mNextState = §1Z§.§#!w§;
               break;
            case "FULLSCREEN_BUTTON":
               §"!S§.doJsCall("onFullscreenToggle");
               break;
            case "LIKE":
               §"!S§.doJsCall("onLevelLiked");
               break;
            case "SHARE":
               §"!S§.doJsCall("onLevelShared");
               break;
            case "NEXT":
               §"!S§.doJsCall("onNextLevel");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function § !F§(param1:Object) : void
      {
         if(§`!#§.§>! § is §5!v§)
         {
            (§`!#§.§>! § as §5!v§).§!!J§ = 1;
         }
      }
   }
}

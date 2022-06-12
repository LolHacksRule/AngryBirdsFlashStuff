package §0![§
{
   import § "@§.§%!3§;
   import §"v§.§]!B§;
   import §%_§.§4m§;
   import §%c§.§=!X§;
   import §'!A§.§-!S§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   import §="6§.§^"8§;
   import §[!w§.§4!i§;
   
   public class §7!Y§ extends §5y§
   {
      
      public static const §'=§:String = "LevelEndFailStateBS";
       
      
      private var §?!+§:§4!i§;
      
      public function §7!Y§(param1:Boolean = false, param2:String = "LevelEndFailStateBS")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?E§ = new §'s§(this);
         §?E§.init(§`7§.§>"?§.Views.View_LevelEndFailBS[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §=!X§.pause();
         this.§?!+§ = new §4!i§(0,0,0,0);
         §?E§.movieClip.addChildAt(this.§?!+§,§?E§.movieClip.numChildren - 1);
         this.§?!+§.§>=§(0.7);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§?!+§)
         {
            if(§?E§.movieClip.contains(this.§?!+§))
            {
               §?E§.movieClip.removeChild(this.§?!+§);
            }
            this.§?!+§.clean();
            this.§?!+§ = null;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §5y§.STATE_STATUS_COMPLETED;
         }
         return §5y§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §%!3§.§4[§(StatePlayBS.§'=§);
               mNextState = §%!3§.§'=§;
               break;
            case "MENU":
               §4m§.doJsCall("onLevelMenuOpened");
               mNextState = §^! §.§'=§;
               break;
            case "FULLSCREEN_BUTTON":
               §4m§.doJsCall("onFullscreenToggle");
               break;
            case "LIKE":
               §4m§.doJsCall("onLevelLiked");
               break;
            case "SHARE":
               §4m§.doJsCall("onLevelShared");
               break;
            case "NEXT":
               §4m§.doJsCall("onNextLevel");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function §!!G§(param1:Object) : void
      {
         if(§^"8§.§7K§ is §]!B§)
         {
            (§^"8§.§7K§ as §]!B§).§=p§ = 1;
         }
      }
   }
}

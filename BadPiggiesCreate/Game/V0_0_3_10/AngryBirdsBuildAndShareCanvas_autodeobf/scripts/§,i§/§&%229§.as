package §,i§
{
   import §!!+§.§4!l§;
   import §+!v§.§`!t§;
   import §1U§.§"!V§;
   import §3[§.§0!K§;
   import §4!t§.§1!=§;
   import §4!t§.§=p§;
   import §7M§.§7!#§;
   import §8"'§.§?!`§;
   import §<8§.§7!n§;
   import §]!X§.§?7§;
   
   public class §&"9§ extends §0!K§
   {
      
      public static const §]"2§:String = "LevelEndFailStateBS";
       
      
      private var §`H§:§?7§;
      
      public function §&"9§(param1:Boolean = false, param2:String = "LevelEndFailStateBS")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §'K§ = new §=p§(this);
         §'K§.init(§1!=§.§8X§.Views.View_LevelEndFailBS[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §"!V§.pause();
         this.§`H§ = new §?7§(0,0,0,0);
         §'K§.movieClip.addChildAt(this.§`H§,§'K§.movieClip.numChildren - 1);
         this.§`H§.§%H§(0.7);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§`H§)
         {
            if(§'K§.movieClip.contains(this.§`H§))
            {
               §'K§.movieClip.removeChild(this.§`H§);
            }
            this.§`H§.clean();
            this.§`H§ = null;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!K§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §0!K§.STATE_STATUS_COMPLETED;
         }
         return §0!K§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!n§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §4!l§.§"l§(StatePlayBS.§]"2§);
               mNextState = §4!l§.§]"2§;
               break;
            case "MENU":
               §?!`§.doJsCall("onLevelMenuOpened");
               mNextState = §8!0§.§]"2§;
               break;
            case "FULLSCREEN_BUTTON":
               §?!`§.doJsCall("onFullscreenToggle");
               break;
            case "LIKE":
               §?!`§.doJsCall("onLevelLiked");
               break;
            case "SHARE":
               §?!`§.doJsCall("onLevelShared");
               break;
            case "NEXT":
               §?!`§.doJsCall("onNextLevel");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function § "4§(param1:Object) : void
      {
         if(§`!t§.§@o§ is §7!#§)
         {
            (§`!t§.§@o§ as §7!#§).§]N§ = 1;
         }
      }
   }
}

package §""6§
{
   import § J§.§6"6§;
   import §'x§.§?z§;
   import §+!d§.§6=§;
   import §+%§.§5!O§;
   import §,Q§.§="2§;
   import §2!O§.§,w§;
   import §;"$§.§8!O§;
   import §;"$§.§`5§;
   import §<!k§.§!!g§;
   import §]X§.§<!-§;
   
   public class §^"'§ extends §,w§
   {
      
      public static const §^z§:String = "LevelEndFailStateBS";
       
      
      private var §;v§:§!!g§;
      
      public function §^"'§(param1:Boolean = false, param2:String = "LevelEndFailStateBS")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §%""§ = new §`5§(this);
         §%""§.init(§8!O§.§'!J§.Views.View_LevelEndFailBS[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §?z§.pause();
         this.§;v§ = new §!!g§(0,0,0,0);
         §%""§.movieClip.addChildAt(this.§;v§,§%""§.movieClip.numChildren - 1);
         this.§;v§.§6"+§(0.7);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§;v§)
         {
            if(§%""§.movieClip.contains(this.§;v§))
            {
               §%""§.movieClip.removeChild(this.§;v§);
            }
            this.§;v§.clean();
            this.§;v§ = null;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,w§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §,w§.STATE_STATUS_COMPLETED;
         }
         return §,w§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6=§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §6"6§.§0!f§(StatePlayBS.§^z§);
               mNextState = §6"6§.§^z§;
               break;
            case "MENU":
               §="2§.doJsCall("onLevelMenuOpened");
               mNextState = §1f§.§^z§;
               break;
            case "FULLSCREEN_BUTTON":
               §="2§.doJsCall("onFullscreenToggle");
               break;
            case "LIKE":
               §="2§.doJsCall("onLevelLiked");
               break;
            case "SHARE":
               §="2§.doJsCall("onLevelShared");
               break;
            case "NEXT":
               §="2§.doJsCall("onNextLevel");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function §#!H§(param1:Object) : void
      {
         if(§<!-§.§3^§ is §5!O§)
         {
            (§<!-§.§3^§ as §5!O§).§>3§ = 1;
         }
      }
   }
}

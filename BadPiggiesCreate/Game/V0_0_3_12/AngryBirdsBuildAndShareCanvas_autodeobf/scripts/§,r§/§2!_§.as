package §,r§
{
   import §%!,§.§,v§;
   import §0E§.§@R§;
   import §2I§.§,"+§;
   import §7"1§.§%W§;
   import §7N§.§@!x§;
   import §=e§.§1!@§;
   import §>!#§.§-""§;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   import §^x§.§<!w§;
   
   public class §2!_§ extends §,v§
   {
      
      public static const §8n§:String = "LevelEndFailStateBS";
       
      
      private var §1!<§:§,"+§;
      
      public function §2!_§(param1:Boolean = false, param2:String = "LevelEndFailStateBS")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?F§ = new §%!u§(this);
         §?F§.init(§#! §.§5!;§.Views.View_LevelEndFailBS[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §%W§.pause();
         this.§1!<§ = new §,"+§(0,0,0,0);
         §?F§.movieClip.addChildAt(this.§1!<§,§?F§.movieClip.numChildren - 1);
         this.§1!<§.§%r§(0.7);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§1!<§)
         {
            if(§?F§.movieClip.contains(this.§1!<§))
            {
               §?F§.movieClip.removeChild(this.§1!<§);
            }
            this.§1!<§.clean();
            this.§1!<§ = null;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,v§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §,v§.STATE_STATUS_COMPLETED;
         }
         return §,v§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!w§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §@!x§.§8U§(StatePlayBS.§8n§);
               mNextState = §@!x§.§8n§;
               break;
            case "MENU":
               §1!@§.doJsCall("onLevelMenuOpened");
               mNextState = §5!L§.§8n§;
               break;
            case "FULLSCREEN_BUTTON":
               §1!@§.doJsCall("onFullscreenToggle");
               break;
            case "LIKE":
               §1!@§.doJsCall("onLevelLiked");
               break;
            case "SHARE":
               §1!@§.doJsCall("onLevelShared");
               break;
            case "NEXT":
               §1!@§.doJsCall("onNextLevel");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function §>@§(param1:Object) : void
      {
         if(§-""§.§,,§ is §@R§)
         {
            (§-""§.§,,§ as §@R§).§ "7§ = 1;
         }
      }
   }
}

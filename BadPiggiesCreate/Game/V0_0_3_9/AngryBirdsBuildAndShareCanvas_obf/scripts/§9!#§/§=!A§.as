package §9!#§
{
   import §"h§.§<"+§;
   import §&!&§.§7!8§;
   import §&"&§.§8!"§;
   import §0Q§.§]`§;
   import §3!S§.§%s§;
   import §6!&§.§",§;
   import §<Z§.§"!f§;
   import §<Z§.§7!!§;
   import §=;§.§=!"§;
   import §]'§.§0r§;
   
   public class §=!A§ extends §<"+§
   {
      
      public static const §8G§:String = "LevelEndFailStateBS";
       
      
      private var §#h§:§]`§;
      
      public function §=!A§(param1:Boolean = false, param2:String = "LevelEndFailStateBS")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §;i§ = new §7!!§(this);
         §;i§.init(§"!f§.§%!1§.Views.View_LevelEndFailBS[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §%s§.pause();
         this.§#h§ = new §]`§(0,0,0,0);
         §;i§.movieClip.addChildAt(this.§#h§,§;i§.movieClip.numChildren - 1);
         this.§#h§.§8!%§(0.7);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§#h§)
         {
            if(§;i§.movieClip.contains(this.§#h§))
            {
               §;i§.movieClip.removeChild(this.§#h§);
            }
            this.§#h§.clean();
            this.§#h§ = null;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<"+§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §<"+§.STATE_STATUS_COMPLETED;
         }
         return §<"+§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!8§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §=!"§.§2!2§(StatePlayBS.§8G§);
               mNextState = §=!"§.§8G§;
               break;
            case "MENU":
               §8!"§.doJsCall("onLevelMenuOpened");
               mNextState = §?w§.§8G§;
               break;
            case "FULLSCREEN_BUTTON":
               §8!"§.doJsCall("onFullscreenToggle");
               break;
            case "LIKE":
               §8!"§.doJsCall("onLevelLiked");
               break;
            case "SHARE":
               §8!"§.doJsCall("onLevelShared");
               break;
            case "NEXT":
               §8!"§.doJsCall("onNextLevel");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      public function §<t§(param1:Object) : void
      {
         if(§0r§.§,!R§ is §",§)
         {
            (§0r§.§,!R§ as §",§).§@!e§ = 1;
         }
      }
   }
}

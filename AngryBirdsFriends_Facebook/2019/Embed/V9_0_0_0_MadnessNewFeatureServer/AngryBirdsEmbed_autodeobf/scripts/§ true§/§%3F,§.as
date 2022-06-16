package § true§
{
   import §"!B§.§"t§;
   import §"!B§.§+!9§;
   import §"!B§.§58§;
   import §+[§.§%G§;
   import §+_§.§,f§;
   import §3y§.§ L§;
   import §<!A§.§,!?§;
   import §>!O§.§[+§;
   import §@a§.§'p§;
   import §@a§.§8H§;
   import §]!=§.§&P§;
   import §]!=§.§;!6§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §?,§ extends §,!?§
   {
      
      public static const §`W§:String = "LevelStartState";
      
      private static var §]9§:BitmapData = null;
       
      
      private var §`H§:Boolean = false;
      
      private var § $§:Boolean = false;
      
      private var §7%§:§,f§ = null;
      
      private var §'g§:Boolean = false;
      
      private var §'Q§:Boolean = false;
      
      private var §@2§:Number = 0;
      
      private var §,W§:Number = 0;
      
      private var §9+§:Number = 0;
      
      private var §>[§:Number = 0;
      
      private var §[5§:Number;
      
      private var §0!0§:Number;
      
      private var §99§:Number;
      
      private var §=q§:Number;
      
      private var §;O§:§ L§;
      
      public function §?,§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §8§() : BitmapData
      {
         return §]9§;
      }
      
      override public function init() : void
      {
         super.init();
         §while§ = new §8H§(this);
         §while§.init(§'p§.§ ,§.Views.View_LevelStart[0]);
         this.§7%§ = new §,f§(§[+§.§,!&§);
         this.§[5§ = (§while§.getItemByName("Container_MenuLeftButtons") as §58§).height;
         this.§0!0§ = (§while§.getItemByName("Container_MenuRightButtons") as §58§).height;
         this.§99§ = §while§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§=q§ = §while§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §[+§.§,!&§.§`9§(true);
         §[+§.§^!0§(this.§7%§);
         this.§7%§.init();
         this.§&n§();
         §while§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§3!D§());
         §while§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§[+§.§1!8§());
         §while§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§`4§ ? false : true);
      }
      
      protected function §&n§() : void
      {
         AngryBirdsFP11.§&n§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!?§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§99§ = §while§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§=q§ = §while§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§65§(param1);
         if(!this.§ $§)
         {
            §[+§.controller.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §,!?§.STATE_STATUS_COMPLETED;
         }
         return §,!?§.STATE_STATUS_RUNNING;
      }
      
      private function §65§(param1:Number) : void
      {
         (§while§.getItemByName("Container_MenuLeftButtons") as §58§).mClip.scrollRect = new Rectangle(0,0,(§while§.getItemByName("Container_MenuLeftButtons") as §58§).width,this.§[5§ + 20 - (this.§[5§ - this.§9+§));
         (§while§.getItemByName("Container_MenuRightButtons") as §58§).mClip.scrollRect = new Rectangle(0,0,(§while§.getItemByName("Container_MenuRightButtons") as §58§).width,this.§0!0§ + 20 - (this.§0!0§ - this.§>[§));
         if(this.§'g§)
         {
            (§while§.getItemByName("Container_MenuLeftButtons") as §58§).setVisibility(true);
            if(this.§@2§ < 90)
            {
               this.§@2§ += 0.3 * param1;
            }
            if(this.§@2§ > 90)
            {
               this.§@2§ = 90;
            }
            if(this.§9+§ < this.§[5§)
            {
               this.§9+§ += 0.5 * param1;
            }
            if(this.§9+§ > this.§[5§)
            {
               this.§9+§ = this.§[5§;
            }
         }
         else
         {
            if(this.§@2§ > 0)
            {
               this.§@2§ -= 0.3 * param1;
            }
            if(this.§@2§ < 0)
            {
               this.§@2§ = 0;
            }
            if(this.§9+§ > 0)
            {
               this.§9+§ -= 0.5 * param1;
            }
            if(this.§9+§ < 0)
            {
               (§while§.getItemByName("Container_MenuLeftButtons") as §58§).setVisibility(false);
               this.§9+§ = 0;
            }
         }
         if(this.§'Q§)
         {
            (§while§.getItemByName("Container_MenuRightButtons") as §58§).setVisibility(true);
            if(this.§,W§ < 180)
            {
               this.§,W§ += 0.5 * param1;
               (§while§.getItemByName("Container_MenuRightButtons") as §58§).y = (§while§.getItemByName("Container_MenuRightButtons") as §58§).y - 0.5 * param1;
            }
            if(this.§,W§ > 180)
            {
               this.§,W§ = 180;
            }
            if(this.§>[§ < this.§0!0§)
            {
               this.§>[§ += 0.5 * param1;
            }
            if(this.§>[§ > this.§0!0§)
            {
               this.§>[§ = this.§0!0§;
            }
         }
         else
         {
            if(this.§,W§ > 0)
            {
               this.§,W§ -= 0.5 * param1;
               (§while§.getItemByName("Container_MenuRightButtons") as §58§).y = (§while§.getItemByName("Container_MenuRightButtons") as §58§).y + 0.5 * param1;
            }
            if(this.§,W§ < 0)
            {
               this.§,W§ = 0;
            }
            if(this.§>[§ > 0)
            {
               this.§>[§ -= 0.5 * param1;
            }
            if(this.§>[§ < 0)
            {
               (§while§.getItemByName("Container_MenuRightButtons") as §58§).setVisibility(false);
               this.§>[§ = 0;
            }
         }
         (§while§.getItemByName("Button_LeftMenuOpen") as §+!9§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§while§.getItemByName("Button_RightMenuOpen") as §+!9§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§while§.getItemByName("Button_LeftMenuOpen") as §+!9§).mClip.MovieClip_LeftMenuImage.rotation = this.§@2§;
         (§while§.getItemByName("Button_RightMenuOpen") as §+!9§).mClip.MovieClip_RightMenuImage.rotation = this.§,W§;
         (§while§.getItemByName("Container_MenuLeftButtons") as §58§).y = this.§99§ - this.§9+§;
         (§while§.getItemByName("Container_MenuRightButtons") as §58§).y = this.§=q§ - this.§>[§;
      }
      
      override public function deActivate() : void
      {
         (§while§.getItemByName("Button_Play") as §+!9§).setComponentVisualState(§&P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§`H§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§;!6§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§'g§)
               {
                  this.§'g§ = false;
               }
               else
               {
                  this.§'g§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§'Q§)
               {
                  this.§'Q§ = false;
               }
               else
               {
                  this.§'Q§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §%G§.§48§("Menu_Confirm");
               mNextState = §&D§.§`W§;
               break;
            case "OPEN_MENU":
               §while§.setItemVisibility("Container_MenuButtons",!§while§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§[+§.§1!8§();
               §[+§.§?m§(_loc4_);
               §while§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §%G§.§48§("Menu_Confirm");
               AngryBirdsFP11.§6Z§.§9#§();
               break;
            case "OPEN_CREDITS":
               §%G§.§48§("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §%G§.§48§("Menu_Confirm");
               mNextState = §>x§.§`W§;
               this.§'g§ = false;
               break;
            case "SOUNDS_BUTTON":
               §%G§.§48§("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§3!D§();
               AngryBirdsFP11.§-!A§(_loc5_);
               if(_loc5_)
               {
                  this.§&n§();
               }
               §while§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§;O§ == null)
               {
                  this.§;O§ = new § L§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§while§.getItemByName("MovieClip_YouTubeArea") as §"t§).changeMovieClip(this.§;O§);
                  (§while§.getItemByName("MovieClip_YouTubeArea") as §"t§).setVisibility(true);
               }
         }
      }
   }
}

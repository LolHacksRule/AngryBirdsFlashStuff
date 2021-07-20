package §`@§
{
   import § !;§.§<!!§;
   import §"!5§.§,!!§;
   import §0!§.§0!5§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §1h§.§ use§;
   import §1h§.§@s§;
   import §2!<§.§?!?§;
   import §@P§.§`;§;
   import §^@§.§!"§;
   import §^@§.§2q§;
   import §^@§.§=^§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §9!@§ extends §0!5§
   {
      
      public static const §0!7§:String = "LevelStartState";
      
      private static var §^!@§:BitmapData = null;
       
      
      private var §!m§:Boolean = false;
      
      private var §88§:Boolean = false;
      
      private var §2U§:§`;§ = null;
      
      private var §[!4§:Boolean = false;
      
      private var §`!4§:Boolean = false;
      
      private var §6!2§:Number = 0;
      
      private var §!J§:Number = 0;
      
      private var §@C§:Number = 0;
      
      private var §5?§:Number = 0;
      
      private var §[p§:Number;
      
      private var §function§:Number;
      
      private var §=!+§:Number;
      
      private var §9!#§:Number;
      
      private var §0!2§:§<!!§;
      
      public function §9!@§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §=S§() : BitmapData
      {
         return §^!@§;
      }
      
      override public function init() : void
      {
         super.init();
         §#Z§ = new §!!1§(this);
         §#Z§.init(§0!&§.§'^§.Views.View_LevelStart[0]);
         this.§2U§ = new §`;§(§,!!§.§;4§);
         this.§[p§ = (§#Z§.getItemByName("Container_MenuLeftButtons") as §2q§).height;
         this.§function§ = (§#Z§.getItemByName("Container_MenuRightButtons") as §2q§).height;
         this.§=!+§ = §#Z§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§9!#§ = §#Z§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §,!!§.§;4§.§69§(true);
         §,!!§.§ ]§(this.§2U§);
         this.§2U§.init();
         AngryBirdsFP11.§'!F§();
         §#Z§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§[l§());
         §#Z§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§,!!§.§1q§());
         §#Z§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§56§ ? false : true);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!5§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§=!+§ = §#Z§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§9!#§ = §#Z§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§+D§(param1);
         if(!this.§88§)
         {
            §,!!§.controller.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §0!5§.STATE_STATUS_COMPLETED;
         }
         return §0!5§.STATE_STATUS_RUNNING;
      }
      
      private function §+D§(param1:Number) : void
      {
         (§#Z§.getItemByName("Container_MenuLeftButtons") as §2q§).mClip.scrollRect = new Rectangle(0,0,(§#Z§.getItemByName("Container_MenuLeftButtons") as §2q§).width,this.§[p§ + 20 - (this.§[p§ - this.§@C§));
         (§#Z§.getItemByName("Container_MenuRightButtons") as §2q§).mClip.scrollRect = new Rectangle(0,0,(§#Z§.getItemByName("Container_MenuRightButtons") as §2q§).width,this.§function§ + 20 - (this.§function§ - this.§5?§));
         if(this.§[!4§)
         {
            (§#Z§.getItemByName("Container_MenuLeftButtons") as §2q§).setVisibility(true);
            if(this.§6!2§ < 90)
            {
               this.§6!2§ += 0.3 * param1;
            }
            if(this.§6!2§ > 90)
            {
               this.§6!2§ = 90;
            }
            if(this.§@C§ < this.§[p§)
            {
               this.§@C§ += 0.5 * param1;
            }
            if(this.§@C§ > this.§[p§)
            {
               this.§@C§ = this.§[p§;
            }
         }
         else
         {
            if(this.§6!2§ > 0)
            {
               this.§6!2§ -= 0.3 * param1;
            }
            if(this.§6!2§ < 0)
            {
               this.§6!2§ = 0;
            }
            if(this.§@C§ > 0)
            {
               this.§@C§ -= 0.5 * param1;
            }
            if(this.§@C§ < 0)
            {
               (§#Z§.getItemByName("Container_MenuLeftButtons") as §2q§).setVisibility(false);
               this.§@C§ = 0;
            }
         }
         if(this.§`!4§)
         {
            (§#Z§.getItemByName("Container_MenuRightButtons") as §2q§).setVisibility(true);
            if(this.§!J§ < 180)
            {
               this.§!J§ += 0.5 * param1;
               (§#Z§.getItemByName("Container_MenuRightButtons") as §2q§).y = (§#Z§.getItemByName("Container_MenuRightButtons") as §2q§).y - 0.5 * param1;
            }
            if(this.§!J§ > 180)
            {
               this.§!J§ = 180;
            }
            if(this.§5?§ < this.§function§)
            {
               this.§5?§ += 0.5 * param1;
            }
            if(this.§5?§ > this.§function§)
            {
               this.§5?§ = this.§function§;
            }
         }
         else
         {
            if(this.§!J§ > 0)
            {
               this.§!J§ -= 0.5 * param1;
               (§#Z§.getItemByName("Container_MenuRightButtons") as §2q§).y = (§#Z§.getItemByName("Container_MenuRightButtons") as §2q§).y + 0.5 * param1;
            }
            if(this.§!J§ < 0)
            {
               this.§!J§ = 0;
            }
            if(this.§5?§ > 0)
            {
               this.§5?§ -= 0.5 * param1;
            }
            if(this.§5?§ < 0)
            {
               (§#Z§.getItemByName("Container_MenuRightButtons") as §2q§).setVisibility(false);
               this.§5?§ = 0;
            }
         }
         (§#Z§.getItemByName("Button_LeftMenuOpen") as §=^§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§#Z§.getItemByName("Button_RightMenuOpen") as §=^§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§#Z§.getItemByName("Button_LeftMenuOpen") as §=^§).mClip.MovieClip_LeftMenuImage.rotation = this.§6!2§;
         (§#Z§.getItemByName("Button_RightMenuOpen") as §=^§).mClip.MovieClip_RightMenuImage.rotation = this.§!J§;
         (§#Z§.getItemByName("Container_MenuLeftButtons") as §2q§).y = this.§=!+§ - this.§@C§;
         (§#Z§.getItemByName("Container_MenuRightButtons") as §2q§).y = this.§9!#§ - this.§5?§;
      }
      
      override public function deActivate() : void
      {
         (§#Z§.getItemByName("Button_Play") as §=^§).setComponentVisualState(§ use§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§!m§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§@s§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§[!4§)
               {
                  this.§[!4§ = false;
               }
               else
               {
                  this.§[!4§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§`!4§)
               {
                  this.§`!4§ = false;
               }
               else
               {
                  this.§`!4§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §?!?§.§#'§("Menu_Confirm");
               mNextState = §-7§.§0!7§;
               break;
            case "OPEN_MENU":
               §#Z§.setItemVisibility("Container_MenuButtons",!§#Z§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§,!!§.§1q§();
               §,!!§.§#,§(_loc4_);
               §#Z§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §?!?§.§#'§("Menu_Confirm");
               AngryBirdsFP11.§@t§.§"&§();
               break;
            case "OPEN_CREDITS":
               §?!?§.§#'§("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §?!?§.§#'§("Menu_Confirm");
               mNextState = §4N§.§0!7§;
               this.§[!4§ = false;
               break;
            case "SOUNDS_BUTTON":
               §?!?§.§#'§("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§[l§();
               AngryBirdsFP11.§-E§(_loc5_);
               if(_loc5_)
               {
                  AngryBirdsFP11.§'!F§();
               }
               §#Z§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§0!2§ == null)
               {
                  this.§0!2§ = new §<!!§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§#Z§.getItemByName("MovieClip_YouTubeArea") as §!"§).changeMovieClip(this.§0!2§);
                  (§#Z§.getItemByName("MovieClip_YouTubeArea") as §!"§).setVisibility(true);
               }
         }
      }
   }
}

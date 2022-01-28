package §1!F§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §"!E§.§%O§;
   import §"!E§.§[!s§;
   import §#!4§.§+!S§;
   import §#!4§.§<f§;
   import §1?§.§+!§;
   import §5#§.§]]§;
   import §8!Q§.§`!n§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §#!@§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "LevelStartState";
      
      private static var §5!&§:BitmapData = null;
       
      
      private var §#!<§:Boolean = false;
      
      private var §5!i§:Boolean = false;
      
      private var §7!D§:§]]§ = null;
      
      private var §<U§:Boolean = false;
      
      private var §]=§:Boolean = false;
      
      private var §9]§:Number = 0;
      
      private var §!V§:Number = 0;
      
      private var §9w§:Number = 0;
      
      private var §=o§:Number = 0;
      
      private var §6t§:Number;
      
      private var §9!e§:Number;
      
      private var §=!0§:Number;
      
      private var §"!G§:Number;
      
      private var §-U§:§`!n§;
      
      public function §#!@§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §,!;§() : BitmapData
      {
         return §5!&§;
      }
      
      override public function init() : void
      {
         super.init();
         §+!$§ = new §2U§(this);
         §+!$§.init(§=!Z§.§;K§.Views.View_LevelStart[0]);
         this.§7!D§ = new §]]§(§'!V§.§1!2§);
         this.§6t§ = (§+!$§.getItemByName("Container_MenuLeftButtons") as §[!s§).height;
         this.§9!e§ = (§+!$§.getItemByName("Container_MenuRightButtons") as §[!s§).height;
         this.§=!0§ = §+!$§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§"!G§ = §+!$§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §'!V§.§1!2§.§-I§(true);
         §'!V§.§>_§(this.§7!D§);
         this.§7!D§.init();
         AngryBirdsFP11.§?!7§();
         §+!$§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§;!f§());
         §+!$§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§'!V§.§'V§());
         §+!$§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§throw§ ? false : true);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §;!!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§=!0§ = §+!$§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§"!G§ = §+!$§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§5[§(param1);
         if(!this.§5!i§)
         {
            §'!V§.§?!G§.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §;!!§.STATE_STATUS_COMPLETED;
         }
         return §;!!§.STATE_STATUS_RUNNING;
      }
      
      private function §5[§(param1:Number) : void
      {
         (§+!$§.getItemByName("Container_MenuLeftButtons") as §[!s§).mClip.scrollRect = new Rectangle(0,0,(§+!$§.getItemByName("Container_MenuLeftButtons") as §[!s§).width,this.§6t§ + 20 - (this.§6t§ - this.§9w§));
         (§+!$§.getItemByName("Container_MenuRightButtons") as §[!s§).mClip.scrollRect = new Rectangle(0,0,(§+!$§.getItemByName("Container_MenuRightButtons") as §[!s§).width,this.§9!e§ + 20 - (this.§9!e§ - this.§=o§));
         if(this.§<U§)
         {
            (§+!$§.getItemByName("Container_MenuLeftButtons") as §[!s§).setVisibility(true);
            if(this.§9]§ < 90)
            {
               this.§9]§ += 0.3 * param1;
            }
            if(this.§9]§ > 90)
            {
               this.§9]§ = 90;
            }
            if(this.§9w§ < this.§6t§)
            {
               this.§9w§ += 0.5 * param1;
            }
            if(this.§9w§ > this.§6t§)
            {
               this.§9w§ = this.§6t§;
            }
         }
         else
         {
            if(this.§9]§ > 0)
            {
               this.§9]§ -= 0.3 * param1;
            }
            if(this.§9]§ < 0)
            {
               this.§9]§ = 0;
            }
            if(this.§9w§ > 0)
            {
               this.§9w§ -= 0.5 * param1;
            }
            if(this.§9w§ < 0)
            {
               (§+!$§.getItemByName("Container_MenuLeftButtons") as §[!s§).setVisibility(false);
               this.§9w§ = 0;
            }
         }
         if(this.§]=§)
         {
            (§+!$§.getItemByName("Container_MenuRightButtons") as §[!s§).setVisibility(true);
            if(this.§!V§ < 180)
            {
               this.§!V§ += 0.5 * param1;
               (§+!$§.getItemByName("Container_MenuRightButtons") as §[!s§).y = (§+!$§.getItemByName("Container_MenuRightButtons") as §[!s§).y - 0.5 * param1;
            }
            if(this.§!V§ > 180)
            {
               this.§!V§ = 180;
            }
            if(this.§=o§ < this.§9!e§)
            {
               this.§=o§ += 0.5 * param1;
            }
            if(this.§=o§ > this.§9!e§)
            {
               this.§=o§ = this.§9!e§;
            }
         }
         else
         {
            if(this.§!V§ > 0)
            {
               this.§!V§ -= 0.5 * param1;
               (§+!$§.getItemByName("Container_MenuRightButtons") as §[!s§).y = (§+!$§.getItemByName("Container_MenuRightButtons") as §[!s§).y + 0.5 * param1;
            }
            if(this.§!V§ < 0)
            {
               this.§!V§ = 0;
            }
            if(this.§=o§ > 0)
            {
               this.§=o§ -= 0.5 * param1;
            }
            if(this.§=o§ < 0)
            {
               (§+!$§.getItemByName("Container_MenuRightButtons") as §[!s§).setVisibility(false);
               this.§=o§ = 0;
            }
         }
         (§+!$§.getItemByName("Button_LeftMenuOpen") as §#!'§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§+!$§.getItemByName("Button_RightMenuOpen") as §#!'§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§+!$§.getItemByName("Button_LeftMenuOpen") as §#!'§).mClip.MovieClip_LeftMenuImage.rotation = this.§9]§;
         (§+!$§.getItemByName("Button_RightMenuOpen") as §#!'§).mClip.MovieClip_RightMenuImage.rotation = this.§!V§;
         (§+!$§.getItemByName("Container_MenuLeftButtons") as §[!s§).y = this.§=!0§ - this.§9w§;
         (§+!$§.getItemByName("Container_MenuRightButtons") as §[!s§).y = this.§"!G§ - this.§=o§;
      }
      
      override public function deActivate() : void
      {
         (§+!$§.getItemByName("Button_Play") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§#!<§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§<U§)
               {
                  this.§<U§ = false;
                  break;
               }
               this.§<U§ = true;
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§]=§)
               {
                  this.§]=§ = false;
                  break;
               }
               this.§]=§ = true;
               break;
            case "PLAY_LEVEL":
               §+!§.§4c§("Menu_Confirm");
               mNextState = §9!h§.STATE_NAME;
               break;
            case "OPEN_MENU":
               §+!$§.setItemVisibility("Container_MenuButtons",!§+!$§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§'!V§.§'V§();
               §'!V§.§6!Y§(_loc4_);
               §+!$§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §+!§.§4c§("Menu_Confirm");
               AngryBirdsFP11.§`!d§.§!5§();
               break;
            case "OPEN_CREDITS":
               §+!§.§4c§("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §+!§.§4c§("Menu_Confirm");
               mNextState = §?!M§.STATE_NAME;
               this.§<U§ = false;
               break;
            case "SOUNDS_BUTTON":
               §+!§.§4c§("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§;!f§();
               AngryBirdsFP11.§;z§(_loc5_);
               if(_loc5_)
               {
                  AngryBirdsFP11.§?!7§();
               }
               §+!$§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§-U§ == null)
               {
                  this.§-U§ = new §`!n§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§+!$§.getItemByName("MovieClip_YouTubeArea") as §%O§).changeMovieClip(this.§-U§);
                  (§+!$§.getItemByName("MovieClip_YouTubeArea") as §%O§).setVisibility(true);
                  break;
               }
         }
      }
   }
}

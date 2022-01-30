package §-P§
{
   import §!D§.§ use§;
   import §!D§.§3!6§;
   import §!D§.§<!5§;
   import §,E§.§@0§;
   import §4!S§.§!!1§;
   import §6`§.§?!7§;
   import §9!7§.§#p§;
   import §9!7§.§6"0§;
   import §>w§.§4E§;
   import §?!V§.§ T§;
   import §?!V§.§"a§;
   import §`%§.§8!0§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §3" § extends §4E§
   {
      
      public static const §#!w§:String = "LevelStartState";
      
      private static var § M§:BitmapData = null;
       
      
      private var §"!p§:Boolean = false;
      
      private var §`!@§:Boolean = false;
      
      private var §@!?§:§!!1§ = null;
      
      private var §%"5§:Boolean = false;
      
      private var §]!W§:Boolean = false;
      
      private var §5@§:Number = 0;
      
      private var §?!M§:Number = 0;
      
      private var §<!K§:Number = 0;
      
      private var §-"'§:Number = 0;
      
      private var §@!4§:Number;
      
      private var §-!h§:Number;
      
      private var §,"!§:Number;
      
      private var §#!s§:Number;
      
      private var §%""§:§@0§;
      
      public function §3" §(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §3e§() : BitmapData
      {
         return § M§;
      }
      
      override public function init() : void
      {
         super.init();
         §1!j§ = new § T§(this);
         §1!j§.init(§"a§.§-!g§.Views.View_LevelStart[0]);
         this.§@!?§ = new §!!1§(§8!0§.§?2§);
         this.§@!4§ = (§1!j§.getItemByName("Container_MenuLeftButtons") as § use§).height;
         this.§-!h§ = (§1!j§.getItemByName("Container_MenuRightButtons") as § use§).height;
         this.§,"!§ = §1!j§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§#!s§ = §1!j§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §8!0§.§?2§.§<;§(true);
         §8!0§.§#8§(this.§@!?§);
         this.§@!?§.init();
         this.§]^§();
         §1!j§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.getSoundsEnabled());
         §1!j§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§8!0§.§9!n§());
         §1!j§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.§8!v§.§^!8§ ? false : true);
      }
      
      protected function §]^§() : void
      {
         AngryBirdsFP11.§]^§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §4E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§,"!§ = §1!j§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§#!s§ = §1!j§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§8!M§(param1);
         if(!this.§`!@§)
         {
            §8!0§.§00§.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §4E§.STATE_STATUS_COMPLETED;
         }
         return §4E§.STATE_STATUS_RUNNING;
      }
      
      private function §8!M§(param1:Number) : void
      {
         (§1!j§.getItemByName("Container_MenuLeftButtons") as § use§).mClip.scrollRect = new Rectangle(0,0,(§1!j§.getItemByName("Container_MenuLeftButtons") as § use§).width,this.§@!4§ + 20 - (this.§@!4§ - this.§<!K§));
         (§1!j§.getItemByName("Container_MenuRightButtons") as § use§).mClip.scrollRect = new Rectangle(0,0,(§1!j§.getItemByName("Container_MenuRightButtons") as § use§).width,this.§-!h§ + 20 - (this.§-!h§ - this.§-"'§));
         if(this.§%"5§)
         {
            (§1!j§.getItemByName("Container_MenuLeftButtons") as § use§).setVisibility(true);
            if(this.§5@§ < 90)
            {
               this.§5@§ += 0.3 * param1;
            }
            if(this.§5@§ > 90)
            {
               this.§5@§ = 90;
            }
            if(this.§<!K§ < this.§@!4§)
            {
               this.§<!K§ += 0.5 * param1;
            }
            if(this.§<!K§ > this.§@!4§)
            {
               this.§<!K§ = this.§@!4§;
            }
         }
         else
         {
            if(this.§5@§ > 0)
            {
               this.§5@§ -= 0.3 * param1;
            }
            if(this.§5@§ < 0)
            {
               this.§5@§ = 0;
            }
            if(this.§<!K§ > 0)
            {
               this.§<!K§ -= 0.5 * param1;
            }
            if(this.§<!K§ < 0)
            {
               (§1!j§.getItemByName("Container_MenuLeftButtons") as § use§).setVisibility(false);
               this.§<!K§ = 0;
            }
         }
         if(this.§]!W§)
         {
            (§1!j§.getItemByName("Container_MenuRightButtons") as § use§).setVisibility(true);
            if(this.§?!M§ < 180)
            {
               this.§?!M§ += 0.5 * param1;
               (§1!j§.getItemByName("Container_MenuRightButtons") as § use§).y = (§1!j§.getItemByName("Container_MenuRightButtons") as § use§).y - 0.5 * param1;
            }
            if(this.§?!M§ > 180)
            {
               this.§?!M§ = 180;
            }
            if(this.§-"'§ < this.§-!h§)
            {
               this.§-"'§ += 0.5 * param1;
            }
            if(this.§-"'§ > this.§-!h§)
            {
               this.§-"'§ = this.§-!h§;
            }
         }
         else
         {
            if(this.§?!M§ > 0)
            {
               this.§?!M§ -= 0.5 * param1;
               (§1!j§.getItemByName("Container_MenuRightButtons") as § use§).y = (§1!j§.getItemByName("Container_MenuRightButtons") as § use§).y + 0.5 * param1;
            }
            if(this.§?!M§ < 0)
            {
               this.§?!M§ = 0;
            }
            if(this.§-"'§ > 0)
            {
               this.§-"'§ -= 0.5 * param1;
            }
            if(this.§-"'§ < 0)
            {
               (§1!j§.getItemByName("Container_MenuRightButtons") as § use§).setVisibility(false);
               this.§-"'§ = 0;
            }
         }
         (§1!j§.getItemByName("Button_LeftMenuOpen") as §3!6§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§1!j§.getItemByName("Button_RightMenuOpen") as §3!6§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§1!j§.getItemByName("Button_LeftMenuOpen") as §3!6§).mClip.MovieClip_LeftMenuImage.rotation = this.§5@§;
         (§1!j§.getItemByName("Button_RightMenuOpen") as §3!6§).mClip.MovieClip_RightMenuImage.rotation = this.§?!M§;
         (§1!j§.getItemByName("Container_MenuLeftButtons") as § use§).y = this.§,"!§ - this.§<!K§;
         (§1!j§.getItemByName("Container_MenuRightButtons") as § use§).y = this.§#!s§ - this.§-"'§;
      }
      
      override public function deActivate() : void
      {
         (§1!j§.getItemByName("Button_Play") as §3!6§).setComponentVisualState(§6"0§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§"!p§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#p§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§%"5§)
               {
                  this.§%"5§ = false;
               }
               else
               {
                  this.§%"5§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§]!W§)
               {
                  this.§]!W§ = false;
               }
               else
               {
                  this.§]!W§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §?!7§.playSound("Menu_Confirm");
               mNextState = §<!4§.§#!w§;
               break;
            case "OPEN_MENU":
               §1!j§.setItemVisibility("Container_MenuButtons",!§1!j§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§8!0§.§9!n§();
               §8!0§.§4s§(_loc4_);
               §1!j§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §?!7§.playSound("Menu_Confirm");
               AngryBirdsFP11.§"!U§.§2!Z§();
               break;
            case "OPEN_CREDITS":
               §?!7§.playSound("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §?!7§.playSound("Menu_Confirm");
               mNextState = §^!P§.§#!w§;
               this.§%"5§ = false;
               break;
            case "SOUNDS_BUTTON":
               §?!7§.playSound("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc5_);
               if(_loc5_)
               {
                  this.§]^§();
               }
               §1!j§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§%""§ == null)
               {
                  this.§%""§ = new §@0§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§1!j§.getItemByName("MovieClip_YouTubeArea") as §<!5§).changeMovieClip(this.§%""§);
                  (§1!j§.getItemByName("MovieClip_YouTubeArea") as §<!5§).setVisibility(true);
                  break;
               }
         }
      }
   }
}

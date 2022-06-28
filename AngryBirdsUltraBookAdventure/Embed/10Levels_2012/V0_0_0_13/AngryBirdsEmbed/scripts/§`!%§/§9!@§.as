package §`!%§
{
   import § !;§.§<!!§;
   import §"!5§.§,!!§;
   import §'X§.§9[§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §=^§.§[!B§;
   import §=^§.§]P§;
   import §=^§.§`f§;
   import §?!?§.§3!E§;
   import §?!D§.§6s§;
   import §@s§.§'!0§;
   import §@s§.§9$§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §9!@§ extends §9[§
   {
      
      public static const §0!7§:String = "LevelStartState";
      
      private static var §^!@§:BitmapData = null;
       
      
      private var §1!5§:Boolean = false;
      
      private var §88§:Boolean = false;
      
      private var §2U§:§6s§ = null;
      
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
         §#!4§ = new §!!1§(this);
         §#!4§.init(§0!&§.§'^§.Views.View_LevelStart[0]);
         this.§2U§ = new §6s§(§,!!§.§;4§);
         this.§[p§ = (§#!4§.getItemByName("Container_MenuLeftButtons") as §`f§).height;
         this.§function§ = (§#!4§.getItemByName("Container_MenuRightButtons") as §`f§).height;
         this.§=!+§ = §#!4§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§9!#§ = §#!4§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §,!!§.§;4§.§69§(true);
         §,!!§.§ ]§(this.§2U§);
         this.§2U§.init();
         AngryBirdsFP11.§'!F§();
         §#!4§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§[l§());
         §#!4§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§,!!§.§1q§());
         §#!4§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§56§ ? false : true);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9[§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§=!+§ = §#!4§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§9!#§ = §#!4§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§+D§(param1);
         if(!this.§88§)
         {
            §,!!§.controller.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §9[§.STATE_STATUS_COMPLETED;
         }
         return §9[§.STATE_STATUS_RUNNING;
      }
      
      private function §+D§(param1:Number) : void
      {
         (§#!4§.getItemByName("Container_MenuLeftButtons") as §`f§).mClip.scrollRect = new Rectangle(0,0,(§#!4§.getItemByName("Container_MenuLeftButtons") as §`f§).width,this.§[p§ + 20 - (this.§[p§ - this.§@C§));
         (§#!4§.getItemByName("Container_MenuRightButtons") as §`f§).mClip.scrollRect = new Rectangle(0,0,(§#!4§.getItemByName("Container_MenuRightButtons") as §`f§).width,this.§function§ + 20 - (this.§function§ - this.§5?§));
         if(this.§[!4§)
         {
            (§#!4§.getItemByName("Container_MenuLeftButtons") as §`f§).setVisibility(true);
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
               (§#!4§.getItemByName("Container_MenuLeftButtons") as §`f§).setVisibility(false);
               this.§@C§ = 0;
            }
         }
         if(this.§`!4§)
         {
            (§#!4§.getItemByName("Container_MenuRightButtons") as §`f§).setVisibility(true);
            if(this.§!J§ < 180)
            {
               this.§!J§ += 0.5 * param1;
               (§#!4§.getItemByName("Container_MenuRightButtons") as §`f§).y = (§#!4§.getItemByName("Container_MenuRightButtons") as §`f§).y - 0.5 * param1;
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
               (§#!4§.getItemByName("Container_MenuRightButtons") as §`f§).y = (§#!4§.getItemByName("Container_MenuRightButtons") as §`f§).y + 0.5 * param1;
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
               (§#!4§.getItemByName("Container_MenuRightButtons") as §`f§).setVisibility(false);
               this.§5?§ = 0;
            }
         }
         (§#!4§.getItemByName("Button_LeftMenuOpen") as §]P§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§#!4§.getItemByName("Button_RightMenuOpen") as §]P§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§#!4§.getItemByName("Button_LeftMenuOpen") as §]P§).mClip.MovieClip_LeftMenuImage.rotation = this.§6!2§;
         (§#!4§.getItemByName("Button_RightMenuOpen") as §]P§).mClip.MovieClip_RightMenuImage.rotation = this.§!J§;
         (§#!4§.getItemByName("Container_MenuLeftButtons") as §`f§).y = this.§=!+§ - this.§@C§;
         (§#!4§.getItemByName("Container_MenuRightButtons") as §`f§).y = this.§9!#§ - this.§5?§;
      }
      
      override public function deActivate() : void
      {
         (§#!4§.getItemByName("Button_Play") as §]P§).setComponentVisualState(§9$§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§1!5§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!0§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§[!4§)
               {
                  this.§[!4§ = false;
                  break;
               }
               this.§[!4§ = true;
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§`!4§)
               {
                  this.§`!4§ = false;
                  break;
               }
               this.§`!4§ = true;
               break;
            case "PLAY_LEVEL":
               §3!E§.§<!,§("Menu_Confirm");
               mNextState = §-7§.§0!7§;
               break;
            case "OPEN_MENU":
               §#!4§.setItemVisibility("Container_MenuButtons",!§#!4§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§,!!§.§1q§();
               §,!!§.§#,§(_loc4_);
               §#!4§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §3!E§.§<!,§("Menu_Confirm");
               AngryBirdsFP11.§@t§.§"&§();
               break;
            case "OPEN_CREDITS":
               §3!E§.§<!,§("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §3!E§.§<!,§("Menu_Confirm");
               mNextState = §4N§.§0!7§;
               this.§[!4§ = false;
               break;
            case "SOUNDS_BUTTON":
               §3!E§.§<!,§("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§[l§();
               AngryBirdsFP11.§-E§(_loc5_);
               if(_loc5_)
               {
                  AngryBirdsFP11.§'!F§();
               }
               §#!4§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§0!2§ == null)
               {
                  this.§0!2§ = new §<!!§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§#!4§.getItemByName("MovieClip_YouTubeArea") as §[!B§).changeMovieClip(this.§0!2§);
                  (§#!4§.getItemByName("MovieClip_YouTubeArea") as §[!B§).setVisibility(true);
                  break;
               }
         }
      }
   }
}

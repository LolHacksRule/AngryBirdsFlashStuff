package §9!5§
{
   import §"R§.§ !Q§;
   import §"m§.§;!v§;
   import §0X§.§?6§;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §9Y§.§+!!§;
   import §9Y§.§6!8§;
   import §<!>§.§?Y§;
   import §?!7§.§5!I§;
   import §?!7§.§8;§;
   import §?!7§.§[I§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import §true§.§ _§;
   
   public class §!i§ extends §?Y§
   {
      
      public static const §?h§:String = "LevelStartState";
      
      private static var §5!O§:BitmapData = null;
       
      
      private var §]!X§:Boolean = false;
      
      private var §^#§:Boolean = false;
      
      private var §#j§:§;!v§ = null;
      
      private var §,I§:Boolean = false;
      
      private var §'3§:Boolean = false;
      
      private var §;!g§:Number = 0;
      
      private var §^!f§:Number = 0;
      
      private var §!!,§:Number = 0;
      
      private var §;!_§:Number = 0;
      
      private var §1g§:Number;
      
      private var §5!$§:Number;
      
      private var §9!q§:Number;
      
      private var §+!T§:Number;
      
      private var §@e§:§?6§;
      
      public function §!i§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §&n§() : BitmapData
      {
         return §5!O§;
      }
      
      override public function init() : void
      {
         super.init();
         §5!P§ = new §'!^§(this);
         §5!P§.init(§[!'§.§+@§.Views.View_LevelStart[0]);
         this.§#j§ = new §;!v§(§ _§.§!6§);
         this.§1g§ = (§5!P§.getItemByName("Container_MenuLeftButtons") as §8;§).height;
         this.§5!$§ = (§5!P§.getItemByName("Container_MenuRightButtons") as §8;§).height;
         this.§9!q§ = §5!P§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§+!T§ = §5!P§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         § _§.§!6§.§2!d§(true);
         § _§.setController(this.§#j§);
         this.§#j§.init();
         AngryBirdsFP11.playThemeMusic();
         §5!P§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§"!u§());
         §5!P§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§ _§.§1_§());
         §5!P§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§3!h§ ? false : true);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §?Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§9!q§ = §5!P§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§+!T§ = §5!P§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§9!>§(param1);
         if(!this.§^#§)
         {
            § _§.§?!]§.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §?Y§.STATE_STATUS_COMPLETED;
         }
         return §?Y§.STATE_STATUS_RUNNING;
      }
      
      private function §9!>§(param1:Number) : void
      {
         (§5!P§.getItemByName("Container_MenuLeftButtons") as §8;§).mClip.scrollRect = new Rectangle(0,0,(§5!P§.getItemByName("Container_MenuLeftButtons") as §8;§).width,this.§1g§ + 20 - (this.§1g§ - this.§!!,§));
         (§5!P§.getItemByName("Container_MenuRightButtons") as §8;§).mClip.scrollRect = new Rectangle(0,0,(§5!P§.getItemByName("Container_MenuRightButtons") as §8;§).width,this.§5!$§ + 20 - (this.§5!$§ - this.§;!_§));
         if(this.§,I§)
         {
            (§5!P§.getItemByName("Container_MenuLeftButtons") as §8;§).setVisibility(true);
            if(this.§;!g§ < 90)
            {
               this.§;!g§ += 0.3 * param1;
            }
            if(this.§;!g§ > 90)
            {
               this.§;!g§ = 90;
            }
            if(this.§!!,§ < this.§1g§)
            {
               this.§!!,§ += 0.5 * param1;
            }
            if(this.§!!,§ > this.§1g§)
            {
               this.§!!,§ = this.§1g§;
            }
         }
         else
         {
            if(this.§;!g§ > 0)
            {
               this.§;!g§ -= 0.3 * param1;
            }
            if(this.§;!g§ < 0)
            {
               this.§;!g§ = 0;
            }
            if(this.§!!,§ > 0)
            {
               this.§!!,§ -= 0.5 * param1;
            }
            if(this.§!!,§ < 0)
            {
               (§5!P§.getItemByName("Container_MenuLeftButtons") as §8;§).setVisibility(false);
               this.§!!,§ = 0;
            }
         }
         if(this.§'3§)
         {
            (§5!P§.getItemByName("Container_MenuRightButtons") as §8;§).setVisibility(true);
            if(this.§^!f§ < 180)
            {
               this.§^!f§ += 0.5 * param1;
               (§5!P§.getItemByName("Container_MenuRightButtons") as §8;§).y = (§5!P§.getItemByName("Container_MenuRightButtons") as §8;§).y - 0.5 * param1;
            }
            if(this.§^!f§ > 180)
            {
               this.§^!f§ = 180;
            }
            if(this.§;!_§ < this.§5!$§)
            {
               this.§;!_§ += 0.5 * param1;
            }
            if(this.§;!_§ > this.§5!$§)
            {
               this.§;!_§ = this.§5!$§;
            }
         }
         else
         {
            if(this.§^!f§ > 0)
            {
               this.§^!f§ -= 0.5 * param1;
               (§5!P§.getItemByName("Container_MenuRightButtons") as §8;§).y = (§5!P§.getItemByName("Container_MenuRightButtons") as §8;§).y + 0.5 * param1;
            }
            if(this.§^!f§ < 0)
            {
               this.§^!f§ = 0;
            }
            if(this.§;!_§ > 0)
            {
               this.§;!_§ -= 0.5 * param1;
            }
            if(this.§;!_§ < 0)
            {
               (§5!P§.getItemByName("Container_MenuRightButtons") as §8;§).setVisibility(false);
               this.§;!_§ = 0;
            }
         }
         (§5!P§.getItemByName("Button_LeftMenuOpen") as §5!I§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§5!P§.getItemByName("Button_RightMenuOpen") as §5!I§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§5!P§.getItemByName("Button_LeftMenuOpen") as §5!I§).mClip.MovieClip_LeftMenuImage.rotation = this.§;!g§;
         (§5!P§.getItemByName("Button_RightMenuOpen") as §5!I§).mClip.MovieClip_RightMenuImage.rotation = this.§^!f§;
         (§5!P§.getItemByName("Container_MenuLeftButtons") as §8;§).y = this.§9!q§ - this.§!!,§;
         (§5!P§.getItemByName("Container_MenuRightButtons") as §8;§).y = this.§+!T§ - this.§;!_§;
      }
      
      override public function deActivate() : void
      {
         (§5!P§.getItemByName("Button_Play") as §5!I§).setComponentVisualState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§]!X§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§,I§)
               {
                  this.§,I§ = false;
               }
               else
               {
                  this.§,I§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§'3§)
               {
                  this.§'3§ = false;
               }
               else
               {
                  this.§'3§ = true;
               }
               break;
            case "PLAY_LEVEL":
               § !Q§.playSound("Menu_Confirm");
               mNextState = §0!`§.§?h§;
               break;
            case "OPEN_MENU":
               §5!P§.setItemVisibility("Container_MenuButtons",!§5!P§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§ _§.§1_§();
               § _§.§"$§(_loc4_);
               §5!P§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               § !Q§.playSound("Menu_Confirm");
               AngryBirdsFP11.§3!a§.§8!d§();
               break;
            case "OPEN_CREDITS":
               § !Q§.playSound("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               § !Q§.playSound("Menu_Confirm");
               mNextState = §!1§.§?h§;
               this.§,I§ = false;
               break;
            case "SOUNDS_BUTTON":
               § !Q§.playSound("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§"!u§();
               AngryBirdsFP11.§-#§(_loc5_);
               if(_loc5_)
               {
                  AngryBirdsFP11.playThemeMusic();
               }
               §5!P§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§@e§ == null)
               {
                  this.§@e§ = new §?6§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§5!P§.getItemByName("MovieClip_YouTubeArea") as §[I§).changeMovieClip(this.§@e§);
                  (§5!P§.getItemByName("MovieClip_YouTubeArea") as §[I§).setVisibility(true);
                  break;
               }
         }
      }
   }
}

package § !k§
{
   import §&!h§.§1!j§;
   import §1!T§.§6!H§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §2!!§.§<!b§;
   import §5i§.§4!]§;
   import §8,§.§+_§;
   import §=R§.§5!a§;
   import §=R§.§7!"§;
   import §`M§.§&!G§;
   import §`M§.§,c§;
   import §`M§.§9!#§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §4A§ extends §+_§
   {
      
      public static const §3F§:String = "LevelStartState";
      
      private static var §,5§:BitmapData = null;
       
      
      private var §>!0§:Boolean = false;
      
      private var §&@§:Boolean = false;
      
      private var §+4§:§<!b§ = null;
      
      private var §@L§:Boolean = false;
      
      private var §[!w§:Boolean = false;
      
      private var §,!6§:Number = 0;
      
      private var §5!I§:Number = 0;
      
      private var §2!?§:Number = 0;
      
      private var § !b§:Number = 0;
      
      private var §3Y§:Number;
      
      private var §#!7§:Number;
      
      private var §'!-§:Number;
      
      private var §`^§:Number;
      
      private var §1<§:§1!j§;
      
      public function §4A§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §+!$§() : BitmapData
      {
         return §,5§;
      }
      
      override public function init() : void
      {
         super.init();
         §`-§ = new § C§(this);
         §`-§.init(dynamic.§[6§.Views.View_LevelStart[0]);
         this.§+4§ = new §<!b§(§4!]§.§8C§);
         this.§3Y§ = (§`-§.getItemByName("Container_MenuLeftButtons") as §9!#§).height;
         this.§#!7§ = (§`-§.getItemByName("Container_MenuRightButtons") as §9!#§).height;
         this.§'!-§ = §`-§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§`^§ = §`-§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §4!]§.§8C§.§1B§(true);
         §4!]§.setController(this.§+4§);
         this.§+4§.init();
         AngryBirdsFP11.playThemeMusic();
         §`-§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§`;§());
         §`-§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§4!]§.§;!;§());
         §`-§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§4!f§ ? false : true);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+_§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§'!-§ = §`-§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§`^§ = §`-§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§@!5§(param1);
         if(!this.§&@§)
         {
            §4!]§.§=`§.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §+_§.STATE_STATUS_COMPLETED;
         }
         return §+_§.STATE_STATUS_RUNNING;
      }
      
      private function §@!5§(param1:Number) : void
      {
         (§`-§.getItemByName("Container_MenuLeftButtons") as §9!#§).mClip.scrollRect = new Rectangle(0,0,(§`-§.getItemByName("Container_MenuLeftButtons") as §9!#§).width,this.§3Y§ + 20 - (this.§3Y§ - this.§2!?§));
         (§`-§.getItemByName("Container_MenuRightButtons") as §9!#§).mClip.scrollRect = new Rectangle(0,0,(§`-§.getItemByName("Container_MenuRightButtons") as §9!#§).width,this.§#!7§ + 20 - (this.§#!7§ - this.§ !b§));
         if(this.§@L§)
         {
            (§`-§.getItemByName("Container_MenuLeftButtons") as §9!#§).setVisibility(true);
            if(this.§,!6§ < 90)
            {
               this.§,!6§ += 0.3 * param1;
            }
            if(this.§,!6§ > 90)
            {
               this.§,!6§ = 90;
            }
            if(this.§2!?§ < this.§3Y§)
            {
               this.§2!?§ += 0.5 * param1;
            }
            if(this.§2!?§ > this.§3Y§)
            {
               this.§2!?§ = this.§3Y§;
            }
         }
         else
         {
            if(this.§,!6§ > 0)
            {
               this.§,!6§ -= 0.3 * param1;
            }
            if(this.§,!6§ < 0)
            {
               this.§,!6§ = 0;
            }
            if(this.§2!?§ > 0)
            {
               this.§2!?§ -= 0.5 * param1;
            }
            if(this.§2!?§ < 0)
            {
               (§`-§.getItemByName("Container_MenuLeftButtons") as §9!#§).setVisibility(false);
               this.§2!?§ = 0;
            }
         }
         if(this.§[!w§)
         {
            (§`-§.getItemByName("Container_MenuRightButtons") as §9!#§).setVisibility(true);
            if(this.§5!I§ < 180)
            {
               this.§5!I§ += 0.5 * param1;
               (§`-§.getItemByName("Container_MenuRightButtons") as §9!#§).y = (§`-§.getItemByName("Container_MenuRightButtons") as §9!#§).y - 0.5 * param1;
            }
            if(this.§5!I§ > 180)
            {
               this.§5!I§ = 180;
            }
            if(this.§ !b§ < this.§#!7§)
            {
               this.§ !b§ += 0.5 * param1;
            }
            if(this.§ !b§ > this.§#!7§)
            {
               this.§ !b§ = this.§#!7§;
            }
         }
         else
         {
            if(this.§5!I§ > 0)
            {
               this.§5!I§ -= 0.5 * param1;
               (§`-§.getItemByName("Container_MenuRightButtons") as §9!#§).y = (§`-§.getItemByName("Container_MenuRightButtons") as §9!#§).y + 0.5 * param1;
            }
            if(this.§5!I§ < 0)
            {
               this.§5!I§ = 0;
            }
            if(this.§ !b§ > 0)
            {
               this.§ !b§ -= 0.5 * param1;
            }
            if(this.§ !b§ < 0)
            {
               (§`-§.getItemByName("Container_MenuRightButtons") as §9!#§).setVisibility(false);
               this.§ !b§ = 0;
            }
         }
         (§`-§.getItemByName("Button_LeftMenuOpen") as §,c§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§`-§.getItemByName("Button_RightMenuOpen") as §,c§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§`-§.getItemByName("Button_LeftMenuOpen") as §,c§).mClip.MovieClip_LeftMenuImage.rotation = this.§,!6§;
         (§`-§.getItemByName("Button_RightMenuOpen") as §,c§).mClip.MovieClip_RightMenuImage.rotation = this.§5!I§;
         (§`-§.getItemByName("Container_MenuLeftButtons") as §9!#§).y = this.§'!-§ - this.§2!?§;
         (§`-§.getItemByName("Container_MenuRightButtons") as §9!#§).y = this.§`^§ - this.§ !b§;
      }
      
      override public function deActivate() : void
      {
         (§`-§.getItemByName("Button_Play") as §,c§).setComponentVisualState(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§>!0§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§@L§)
               {
                  this.§@L§ = false;
               }
               else
               {
                  this.§@L§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§[!w§)
               {
                  this.§[!w§ = false;
               }
               else
               {
                  this.§[!w§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §6!H§.playSound("Menu_Confirm");
               mNextState = §?U§.§3F§;
               break;
            case "OPEN_MENU":
               §`-§.setItemVisibility("Container_MenuButtons",!§`-§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§4!]§.§;!;§();
               §4!]§.§0g§(_loc4_);
               §`-§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §6!H§.playSound("Menu_Confirm");
               AngryBirdsFP11.§`!c§.§catch§();
               break;
            case "OPEN_CREDITS":
               §6!H§.playSound("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §6!H§.playSound("Menu_Confirm");
               mNextState = §6!5§.§3F§;
               this.§@L§ = false;
               break;
            case "SOUNDS_BUTTON":
               §6!H§.playSound("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§`;§();
               AngryBirdsFP11.§0S§(_loc5_);
               if(_loc5_)
               {
                  AngryBirdsFP11.playThemeMusic();
               }
               §`-§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§1<§ == null)
               {
                  this.§1<§ = new §1!j§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§`-§.getItemByName("MovieClip_YouTubeArea") as §&!G§).changeMovieClip(this.§1<§);
                  (§`-§.getItemByName("MovieClip_YouTubeArea") as §&!G§).setVisibility(true);
                  break;
               }
         }
      }
   }
}

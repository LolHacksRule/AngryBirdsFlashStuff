package §,!"§
{
   import §"U§.§!o§;
   import §"U§.§[Q§;
   import §"U§.§^'§;
   import §&^§.§[!7§;
   import §'!O§.§'!#§;
   import §0!E§.§ H§;
   import §6v§.§@V§;
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §?#§.§1!;§;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §8j§ extends §'!#§
   {
      
      public static const §-A§:String = "LevelStartState";
      
      private static var §"k§:BitmapData = null;
       
      
      private var §"!$§:Boolean = false;
      
      private var §?w§:Boolean = false;
      
      private var §4!I§:§1!;§ = null;
      
      private var §5U§:Boolean = false;
      
      private var §&[§:Boolean = false;
      
      private var § !C§:Number = 0;
      
      private var §-_§:Number = 0;
      
      private var §#!I§:Number = 0;
      
      private var §5!=§:Number = 0;
      
      private var §6%§:Number;
      
      private var §4u§:Number;
      
      private var §6!4§:Number;
      
      private var §&!Q§:Number;
      
      private var §@l§:§ H§;
      
      public function §8j§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §]!H§() : BitmapData
      {
         return §"k§;
      }
      
      override public function init() : void
      {
         super.init();
         §0q§ = new §`o§(this);
         §0q§.init(§`Z§.§5c§.Views.View_LevelStart[0]);
         this.§4!I§ = new §1!;§(§#! §.§`'§);
         this.§6%§ = (§0q§.getItemByName("Container_MenuLeftButtons") as §[Q§).height;
         this.§4u§ = (§0q§.getItemByName("Container_MenuRightButtons") as §[Q§).height;
         this.§6!4§ = §0q§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§&!Q§ = §0q§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §#! §.§`'§.§^!6§(true);
         §#! §.§;]§(this.§4!I§);
         this.§4!I§.init();
         this.§[5§();
         §0q§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§5e§());
         §0q§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§#! §.§#!-§());
         §0q§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.§`I§.§-!7§ ? false : true);
      }
      
      protected function §[5§() : void
      {
         AngryBirdsFP11.§[5§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'!#§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§6!4§ = §0q§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§&!Q§ = §0q§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§<B§(param1);
         if(!this.§?w§)
         {
            §#! §.controller.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §'!#§.STATE_STATUS_COMPLETED;
         }
         return §'!#§.STATE_STATUS_RUNNING;
      }
      
      private function §<B§(param1:Number) : void
      {
         (§0q§.getItemByName("Container_MenuLeftButtons") as §[Q§).mClip.scrollRect = new Rectangle(0,0,(§0q§.getItemByName("Container_MenuLeftButtons") as §[Q§).width,this.§6%§ + 20 - (this.§6%§ - this.§#!I§));
         (§0q§.getItemByName("Container_MenuRightButtons") as §[Q§).mClip.scrollRect = new Rectangle(0,0,(§0q§.getItemByName("Container_MenuRightButtons") as §[Q§).width,this.§4u§ + 20 - (this.§4u§ - this.§5!=§));
         if(this.§5U§)
         {
            (§0q§.getItemByName("Container_MenuLeftButtons") as §[Q§).setVisibility(true);
            if(this.§ !C§ < 90)
            {
               this.§ !C§ += 0.3 * param1;
            }
            if(this.§ !C§ > 90)
            {
               this.§ !C§ = 90;
            }
            if(this.§#!I§ < this.§6%§)
            {
               this.§#!I§ += 0.5 * param1;
            }
            if(this.§#!I§ > this.§6%§)
            {
               this.§#!I§ = this.§6%§;
            }
         }
         else
         {
            if(this.§ !C§ > 0)
            {
               this.§ !C§ -= 0.3 * param1;
            }
            if(this.§ !C§ < 0)
            {
               this.§ !C§ = 0;
            }
            if(this.§#!I§ > 0)
            {
               this.§#!I§ -= 0.5 * param1;
            }
            if(this.§#!I§ < 0)
            {
               (§0q§.getItemByName("Container_MenuLeftButtons") as §[Q§).setVisibility(false);
               this.§#!I§ = 0;
            }
         }
         if(this.§&[§)
         {
            (§0q§.getItemByName("Container_MenuRightButtons") as §[Q§).setVisibility(true);
            if(this.§-_§ < 180)
            {
               this.§-_§ += 0.5 * param1;
               (§0q§.getItemByName("Container_MenuRightButtons") as §[Q§).y = (§0q§.getItemByName("Container_MenuRightButtons") as §[Q§).y - 0.5 * param1;
            }
            if(this.§-_§ > 180)
            {
               this.§-_§ = 180;
            }
            if(this.§5!=§ < this.§4u§)
            {
               this.§5!=§ += 0.5 * param1;
            }
            if(this.§5!=§ > this.§4u§)
            {
               this.§5!=§ = this.§4u§;
            }
         }
         else
         {
            if(this.§-_§ > 0)
            {
               this.§-_§ -= 0.5 * param1;
               (§0q§.getItemByName("Container_MenuRightButtons") as §[Q§).y = (§0q§.getItemByName("Container_MenuRightButtons") as §[Q§).y + 0.5 * param1;
            }
            if(this.§-_§ < 0)
            {
               this.§-_§ = 0;
            }
            if(this.§5!=§ > 0)
            {
               this.§5!=§ -= 0.5 * param1;
            }
            if(this.§5!=§ < 0)
            {
               (§0q§.getItemByName("Container_MenuRightButtons") as §[Q§).setVisibility(false);
               this.§5!=§ = 0;
            }
         }
         (§0q§.getItemByName("Button_LeftMenuOpen") as §^'§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§0q§.getItemByName("Button_RightMenuOpen") as §^'§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§0q§.getItemByName("Button_LeftMenuOpen") as §^'§).mClip.MovieClip_LeftMenuImage.rotation = this.§ !C§;
         (§0q§.getItemByName("Button_RightMenuOpen") as §^'§).mClip.MovieClip_RightMenuImage.rotation = this.§-_§;
         (§0q§.getItemByName("Container_MenuLeftButtons") as §[Q§).y = this.§6!4§ - this.§#!I§;
         (§0q§.getItemByName("Container_MenuRightButtons") as §[Q§).y = this.§&!Q§ - this.§5!=§;
      }
      
      override public function deActivate() : void
      {
         (§0q§.getItemByName("Button_Play") as §^'§).setComponentVisualState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§"!$§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§5U§)
               {
                  this.§5U§ = false;
               }
               else
               {
                  this.§5U§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§&[§)
               {
                  this.§&[§ = false;
               }
               else
               {
                  this.§&[§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §[!7§.playSound("Menu_Confirm");
               mNextState = §@D§.§-A§;
               break;
            case "OPEN_MENU":
               §0q§.setItemVisibility("Container_MenuButtons",!§0q§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§#! §.§#!-§();
               §#! §.§!Y§(_loc4_);
               §0q§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §[!7§.playSound("Menu_Confirm");
               AngryBirdsFP11.§`y§.§,,§();
               break;
            case "OPEN_CREDITS":
               §[!7§.playSound("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §[!7§.playSound("Menu_Confirm");
               mNextState = §,!#§.§-A§;
               this.§5U§ = false;
               break;
            case "SOUNDS_BUTTON":
               §[!7§.playSound("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§5e§();
               AngryBirdsFP11.§6r§(_loc5_);
               if(_loc5_)
               {
                  this.§[5§();
               }
               §0q§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§@l§ == null)
               {
                  this.§@l§ = new § H§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§0q§.getItemByName("MovieClip_YouTubeArea") as §!o§).changeMovieClip(this.§@l§);
                  (§0q§.getItemByName("MovieClip_YouTubeArea") as §!o§).setVisibility(true);
               }
         }
      }
   }
}

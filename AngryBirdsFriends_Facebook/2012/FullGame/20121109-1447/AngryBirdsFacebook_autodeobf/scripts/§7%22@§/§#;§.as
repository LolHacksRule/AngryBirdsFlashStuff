package §7"@§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   import §2!i§.§=!&§;
   import §3![§.§1F§;
   import §4!e§.§08§;
   import §4!e§.§7"-§;
   import §4!e§.§^!D§;
   import §6!B§.§>!E§;
   import §<a§.§0B§;
   import §]!A§.;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §#;§ extends §1-§
   {
      
      public static const STATE_NAME:String = "LevelStartState";
      
      private static var §0"'§:BitmapData = null;
       
      
      private var §>"&§:Boolean = false;
      
      private var §!!S§:Boolean = false;
      
      private var §[$§:§1F§ = null;
      
      private var §<!4§:Boolean = false;
      
      private var §1@§:Boolean = false;
      
      private var §4!'§:Number = 0;
      
      private var §,"7§:Number = 0;
      
      private var §-!b§:Number = 0;
      
      private var §+!'§:Number = 0;
      
      private var §9"A§:Number;
      
      private var §8C§:Number;
      
      private var §;3§:Number;
      
      private var §,!Y§:Number;
      
      private var §1!m§:§0B§;
      
      public function §#;§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §?r§() : BitmapData
      {
         return §0"'§;
      }
      
      override public function init() : void
      {
         super.init();
         §6w§ = new §7!A§(this);
         §6w§.init(§ "A§.§4[§.Views.View_LevelStart[0]);
         this.§[$§ = new §1F§(§#6§.§6!z§);
         this.§9"A§ = (§6w§.getItemByName("Container_MenuLeftButtons") as §08§).height;
         this.§8C§ = (§6w§.getItemByName("Container_MenuRightButtons") as §08§).height;
         this.§;3§ = §6w§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§,!Y§ = §6w§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §#6§.§6!z§.§3H§(true);
         §#6§.setController(this.§[$§);
         this.§[$§.init();
         this.playThemeMusic();
         §6w§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§3>§());
         §6w§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§#6§.§&9§());
         §6w§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§>!k§ ? false : true);
      }
      
      protected function playThemeMusic() : void
      {
         AngryBirdsFP11.playThemeMusic();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§;3§ = §6w§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§,!Y§ = §6w§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§`n§(param1);
         if(!this.§!!S§)
         {
            §#6§.§'" §.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §1-§.STATE_STATUS_COMPLETED;
         }
         return §1-§.STATE_STATUS_RUNNING;
      }
      
      private function §`n§(param1:Number) : void
      {
         (§6w§.getItemByName("Container_MenuLeftButtons") as §08§).mClip.scrollRect = new Rectangle(0,0,(§6w§.getItemByName("Container_MenuLeftButtons") as §08§).width,this.§9"A§ + 20 - (this.§9"A§ - this.§-!b§));
         (§6w§.getItemByName("Container_MenuRightButtons") as §08§).mClip.scrollRect = new Rectangle(0,0,(§6w§.getItemByName("Container_MenuRightButtons") as §08§).width,this.§8C§ + 20 - (this.§8C§ - this.§+!'§));
         if(this.§<!4§)
         {
            (§6w§.getItemByName("Container_MenuLeftButtons") as §08§).setVisibility(true);
            if(this.§4!'§ < 90)
            {
               this.§4!'§ += 0.3 * param1;
            }
            if(this.§4!'§ > 90)
            {
               this.§4!'§ = 90;
            }
            if(this.§-!b§ < this.§9"A§)
            {
               this.§-!b§ += 0.5 * param1;
            }
            if(this.§-!b§ > this.§9"A§)
            {
               this.§-!b§ = this.§9"A§;
            }
         }
         else
         {
            if(this.§4!'§ > 0)
            {
               this.§4!'§ -= 0.3 * param1;
            }
            if(this.§4!'§ < 0)
            {
               this.§4!'§ = 0;
            }
            if(this.§-!b§ > 0)
            {
               this.§-!b§ -= 0.5 * param1;
            }
            if(this.§-!b§ < 0)
            {
               (§6w§.getItemByName("Container_MenuLeftButtons") as §08§).setVisibility(false);
               this.§-!b§ = 0;
            }
         }
         if(this.§1@§)
         {
            (§6w§.getItemByName("Container_MenuRightButtons") as §08§).setVisibility(true);
            if(this.§,"7§ < 180)
            {
               this.§,"7§ += 0.5 * param1;
               (§6w§.getItemByName("Container_MenuRightButtons") as §08§).y = (§6w§.getItemByName("Container_MenuRightButtons") as §08§).y - 0.5 * param1;
            }
            if(this.§,"7§ > 180)
            {
               this.§,"7§ = 180;
            }
            if(this.§+!'§ < this.§8C§)
            {
               this.§+!'§ += 0.5 * param1;
            }
            if(this.§+!'§ > this.§8C§)
            {
               this.§+!'§ = this.§8C§;
            }
         }
         else
         {
            if(this.§,"7§ > 0)
            {
               this.§,"7§ -= 0.5 * param1;
               (§6w§.getItemByName("Container_MenuRightButtons") as §08§).y = (§6w§.getItemByName("Container_MenuRightButtons") as §08§).y + 0.5 * param1;
            }
            if(this.§,"7§ < 0)
            {
               this.§,"7§ = 0;
            }
            if(this.§+!'§ > 0)
            {
               this.§+!'§ -= 0.5 * param1;
            }
            if(this.§+!'§ < 0)
            {
               (§6w§.getItemByName("Container_MenuRightButtons") as §08§).setVisibility(false);
               this.§+!'§ = 0;
            }
         }
         (§6w§.getItemByName("Button_LeftMenuOpen") as §^!D§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§6w§.getItemByName("Button_RightMenuOpen") as §^!D§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§6w§.getItemByName("Button_LeftMenuOpen") as §^!D§).mClip.MovieClip_LeftMenuImage.rotation = this.§4!'§;
         (§6w§.getItemByName("Button_RightMenuOpen") as §^!D§).mClip.MovieClip_RightMenuImage.rotation = this.§,"7§;
         (§6w§.getItemByName("Container_MenuLeftButtons") as §08§).y = this.§;3§ - this.§-!b§;
         (§6w§.getItemByName("Container_MenuRightButtons") as §08§).y = this.§,!Y§ - this.§+!'§;
      }
      
      override public function deActivate() : void
      {
         (§6w§.getItemByName("Button_Play") as §^!D§).setComponentVisualState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§>"&§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§<!4§)
               {
                  this.§<!4§ = false;
               }
               else
               {
                  this.§<!4§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§1@§)
               {
                  this.§1@§ = false;
               }
               else
               {
                  this.§1@§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §>!E§.§7N§("Menu_Confirm");
               mNextState = §?'§.STATE_NAME;
               break;
            case "OPEN_MENU":
               §6w§.setItemVisibility("Container_MenuButtons",!§6w§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§#6§.§&9§();
               §#6§.§'h§(_loc4_);
               §6w§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §>!E§.§7N§("Menu_Confirm");
               AngryBirdsFP11.§@<§.§'!+§();
               break;
            case "OPEN_CREDITS":
               §>!E§.§7N§("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §>!E§.§7N§("Menu_Confirm");
               mNextState = §9<§.STATE_NAME;
               this.§<!4§ = false;
               break;
            case "SOUNDS_BUTTON":
               §>!E§.§7N§("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§3>§();
               AngryBirdsFP11.§@i§(_loc5_);
               if(_loc5_)
               {
                  this.playThemeMusic();
               }
               §6w§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§1!m§ == null)
               {
                  this.§1!m§ = new §0B§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§6w§.getItemByName("MovieClip_YouTubeArea") as §7"-§).changeMovieClip(this.§1!m§);
                  (§6w§.getItemByName("MovieClip_YouTubeArea") as §7"-§).setVisibility(true);
                  break;
               }
         }
      }
   }
}

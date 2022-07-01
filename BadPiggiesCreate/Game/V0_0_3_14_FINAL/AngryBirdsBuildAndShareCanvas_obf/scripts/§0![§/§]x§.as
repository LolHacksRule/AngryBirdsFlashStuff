package §0![§
{
   import §%c§.§=!X§;
   import §'!A§.§-!S§;
   import §'!A§.§9!!§;
   import §'@§.§25§;
   import §'p§.§%+§;
   import §'p§.§="#§;
   import §'p§.§`!T§;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   import §;'§.§7"'§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §]x§ extends §5y§
   {
      
      public static const §'=§:String = "LevelStartState";
      
      private static var §?F§:BitmapData = null;
       
      
      private var §=l§:Boolean = false;
      
      private var § "4§:Boolean = false;
      
      private var §?u§:§7"'§ = null;
      
      private var §,!%§:Boolean = false;
      
      private var §%!z§:Boolean = false;
      
      private var §>l§:Number = 0;
      
      private var §^!k§:Number = 0;
      
      private var §1$§:Number = 0;
      
      private var §`e§:Number = 0;
      
      private var §&!s§:Number;
      
      private var §9!"§:Number;
      
      private var §&!]§:Number;
      
      private var § "$§:Number;
      
      private var §["4§:§25§;
      
      public function §]x§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §<1§() : BitmapData
      {
         return §?F§;
      }
      
      override public function init() : void
      {
         super.init();
         §?E§ = new §'s§(this);
         §?E§.init(§`7§.§>"?§.Views.View_LevelStart[0]);
         this.§?u§ = new §7"'§(§=!X§.§!'§);
         this.§&!s§ = (§?E§.getItemByName("Container_MenuLeftButtons") as §`!T§).height;
         this.§9!"§ = (§?E§.getItemByName("Container_MenuRightButtons") as §`!T§).height;
         this.§&!]§ = §?E§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§ "$§ = §?E§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §=!X§.§!'§.§;p§(true);
         §=!X§.§]T§(this.§?u§);
         this.§?u§.init();
         this.§<!,§();
         §?E§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.getSoundsEnabled());
         §?E§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§=!X§.§5$§());
         §?E§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.§>" §.§`";§ ? false : true);
      }
      
      protected function §<!,§() : void
      {
         AngryBirdsFP11.§<!,§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§&!]§ = §?E§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§ "$§ = §?E§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§+",§(param1);
         if(!this.§ "4§)
         {
            §=!X§.§#H§.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §5y§.STATE_STATUS_COMPLETED;
         }
         return §5y§.STATE_STATUS_RUNNING;
      }
      
      private function §+",§(param1:Number) : void
      {
         (§?E§.getItemByName("Container_MenuLeftButtons") as §`!T§).mClip.scrollRect = new Rectangle(0,0,(§?E§.getItemByName("Container_MenuLeftButtons") as §`!T§).width,this.§&!s§ + 20 - (this.§&!s§ - this.§1$§));
         (§?E§.getItemByName("Container_MenuRightButtons") as §`!T§).mClip.scrollRect = new Rectangle(0,0,(§?E§.getItemByName("Container_MenuRightButtons") as §`!T§).width,this.§9!"§ + 20 - (this.§9!"§ - this.§`e§));
         if(this.§,!%§)
         {
            (§?E§.getItemByName("Container_MenuLeftButtons") as §`!T§).setVisibility(true);
            if(this.§>l§ < 90)
            {
               this.§>l§ += 0.3 * param1;
            }
            if(this.§>l§ > 90)
            {
               this.§>l§ = 90;
            }
            if(this.§1$§ < this.§&!s§)
            {
               this.§1$§ += 0.5 * param1;
            }
            if(this.§1$§ > this.§&!s§)
            {
               this.§1$§ = this.§&!s§;
            }
         }
         else
         {
            if(this.§>l§ > 0)
            {
               this.§>l§ -= 0.3 * param1;
            }
            if(this.§>l§ < 0)
            {
               this.§>l§ = 0;
            }
            if(this.§1$§ > 0)
            {
               this.§1$§ -= 0.5 * param1;
            }
            if(this.§1$§ < 0)
            {
               (§?E§.getItemByName("Container_MenuLeftButtons") as §`!T§).setVisibility(false);
               this.§1$§ = 0;
            }
         }
         if(this.§%!z§)
         {
            (§?E§.getItemByName("Container_MenuRightButtons") as §`!T§).setVisibility(true);
            if(this.§^!k§ < 180)
            {
               this.§^!k§ += 0.5 * param1;
               (§?E§.getItemByName("Container_MenuRightButtons") as §`!T§).y = (§?E§.getItemByName("Container_MenuRightButtons") as §`!T§).y - 0.5 * param1;
            }
            if(this.§^!k§ > 180)
            {
               this.§^!k§ = 180;
            }
            if(this.§`e§ < this.§9!"§)
            {
               this.§`e§ += 0.5 * param1;
            }
            if(this.§`e§ > this.§9!"§)
            {
               this.§`e§ = this.§9!"§;
            }
         }
         else
         {
            if(this.§^!k§ > 0)
            {
               this.§^!k§ -= 0.5 * param1;
               (§?E§.getItemByName("Container_MenuRightButtons") as §`!T§).y = (§?E§.getItemByName("Container_MenuRightButtons") as §`!T§).y + 0.5 * param1;
            }
            if(this.§^!k§ < 0)
            {
               this.§^!k§ = 0;
            }
            if(this.§`e§ > 0)
            {
               this.§`e§ -= 0.5 * param1;
            }
            if(this.§`e§ < 0)
            {
               (§?E§.getItemByName("Container_MenuRightButtons") as §`!T§).setVisibility(false);
               this.§`e§ = 0;
            }
         }
         (§?E§.getItemByName("Button_LeftMenuOpen") as §="#§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§?E§.getItemByName("Button_RightMenuOpen") as §="#§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§?E§.getItemByName("Button_LeftMenuOpen") as §="#§).mClip.MovieClip_LeftMenuImage.rotation = this.§>l§;
         (§?E§.getItemByName("Button_RightMenuOpen") as §="#§).mClip.MovieClip_RightMenuImage.rotation = this.§^!k§;
         (§?E§.getItemByName("Container_MenuLeftButtons") as §`!T§).y = this.§&!]§ - this.§1$§;
         (§?E§.getItemByName("Container_MenuRightButtons") as §`!T§).y = this.§ "$§ - this.§`e§;
      }
      
      override public function deActivate() : void
      {
         (§?E§.getItemByName("Button_Play") as §="#§).setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§=l§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§,!%§)
               {
                  this.§,!%§ = false;
               }
               else
               {
                  this.§,!%§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§%!z§)
               {
                  this.§%!z§ = false;
               }
               else
               {
                  this.§%!z§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §5!U§.playSound("Menu_Confirm");
               mNextState = §="§.§'=§;
               break;
            case "OPEN_MENU":
               §?E§.setItemVisibility("Container_MenuButtons",!§?E§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§=!X§.§5$§();
               §=!X§.§]D§(_loc4_);
               §?E§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §5!U§.playSound("Menu_Confirm");
               AngryBirdsFP11.§%d§.§9+§();
               break;
            case "OPEN_CREDITS":
               §5!U§.playSound("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §5!U§.playSound("Menu_Confirm");
               mNextState = §'"6§.§'=§;
               this.§,!%§ = false;
               break;
            case "SOUNDS_BUTTON":
               §5!U§.playSound("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc5_);
               if(_loc5_)
               {
                  this.§<!,§();
               }
               §?E§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§["4§ == null)
               {
                  this.§["4§ = new §25§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§?E§.getItemByName("MovieClip_YouTubeArea") as §%+§).changeMovieClip(this.§["4§);
                  (§?E§.getItemByName("MovieClip_YouTubeArea") as §%+§).setVisibility(true);
                  break;
               }
         }
      }
   }
}

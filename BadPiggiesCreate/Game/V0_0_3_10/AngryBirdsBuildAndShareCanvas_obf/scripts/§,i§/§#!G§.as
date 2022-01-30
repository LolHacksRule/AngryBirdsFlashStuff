package §,i§
{
   import §&!&§.§9T§;
   import §,y§.§8!w§;
   import §0!d§.§%!9§;
   import §0!d§.§7!a§;
   import §0!d§.§8!r§;
   import §1U§.§"!V§;
   import §3[§.§0!K§;
   import §4!t§.§1!=§;
   import §4!t§.§=p§;
   import §5^§.§ !x§;
   import §<8§.§"h§;
   import §<8§.§7!n§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §#!G§ extends §0!K§
   {
      
      public static const §]"2§:String = "LevelStartState";
      
      private static var §<!z§:BitmapData = null;
       
      
      private var § use§:Boolean = false;
      
      private var §,w§:Boolean = false;
      
      private var §<!;§:§8!w§ = null;
      
      private var §7V§:Boolean = false;
      
      private var §5!X§:Boolean = false;
      
      private var §<c§:Number = 0;
      
      private var §do §:Number = 0;
      
      private var §3!s§:Number = 0;
      
      private var §6"4§:Number = 0;
      
      private var §+T§:Number;
      
      private var §'" §:Number;
      
      private var §-!a§:Number;
      
      private var §7C§:Number;
      
      private var §8@§:§9T§;
      
      public function §#!G§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §7!X§() : BitmapData
      {
         return §<!z§;
      }
      
      override public function init() : void
      {
         super.init();
         §'K§ = new §=p§(this);
         §'K§.init(§1!=§.§8X§.Views.View_LevelStart[0]);
         this.§<!;§ = new §8!w§(§"!V§.§!j§);
         this.§+T§ = (§'K§.getItemByName("Container_MenuLeftButtons") as §7!a§).height;
         this.§'" § = (§'K§.getItemByName("Container_MenuRightButtons") as §7!a§).height;
         this.§-!a§ = §'K§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§7C§ = §'K§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §"!V§.§!j§.§9!q§(true);
         §"!V§.§`!G§(this.§<!;§);
         this.§<!;§.init();
         this.§-"5§();
         §'K§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.getSoundsEnabled());
         §'K§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§"!V§.§1!u§());
         §'K§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.§<U§.§2"8§ ? false : true);
      }
      
      protected function §-"5§() : void
      {
         AngryBirdsFP11.§-"5§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!K§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§-!a§ = §'K§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§7C§ = §'K§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§#!K§(param1);
         if(!this.§,w§)
         {
            §"!V§.§ !o§.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §0!K§.STATE_STATUS_COMPLETED;
         }
         return §0!K§.STATE_STATUS_RUNNING;
      }
      
      private function §#!K§(param1:Number) : void
      {
         (§'K§.getItemByName("Container_MenuLeftButtons") as §7!a§).mClip.scrollRect = new Rectangle(0,0,(§'K§.getItemByName("Container_MenuLeftButtons") as §7!a§).width,this.§+T§ + 20 - (this.§+T§ - this.§3!s§));
         (§'K§.getItemByName("Container_MenuRightButtons") as §7!a§).mClip.scrollRect = new Rectangle(0,0,(§'K§.getItemByName("Container_MenuRightButtons") as §7!a§).width,this.§'" § + 20 - (this.§'" § - this.§6"4§));
         if(this.§7V§)
         {
            (§'K§.getItemByName("Container_MenuLeftButtons") as §7!a§).setVisibility(true);
            if(this.§<c§ < 90)
            {
               this.§<c§ += 0.3 * param1;
            }
            if(this.§<c§ > 90)
            {
               this.§<c§ = 90;
            }
            if(this.§3!s§ < this.§+T§)
            {
               this.§3!s§ += 0.5 * param1;
            }
            if(this.§3!s§ > this.§+T§)
            {
               this.§3!s§ = this.§+T§;
            }
         }
         else
         {
            if(this.§<c§ > 0)
            {
               this.§<c§ -= 0.3 * param1;
            }
            if(this.§<c§ < 0)
            {
               this.§<c§ = 0;
            }
            if(this.§3!s§ > 0)
            {
               this.§3!s§ -= 0.5 * param1;
            }
            if(this.§3!s§ < 0)
            {
               (§'K§.getItemByName("Container_MenuLeftButtons") as §7!a§).setVisibility(false);
               this.§3!s§ = 0;
            }
         }
         if(this.§5!X§)
         {
            (§'K§.getItemByName("Container_MenuRightButtons") as §7!a§).setVisibility(true);
            if(this.§do § < 180)
            {
               this.§do § += 0.5 * param1;
               (§'K§.getItemByName("Container_MenuRightButtons") as §7!a§).y = (§'K§.getItemByName("Container_MenuRightButtons") as §7!a§).y - 0.5 * param1;
            }
            if(this.§do § > 180)
            {
               this.§do § = 180;
            }
            if(this.§6"4§ < this.§'" §)
            {
               this.§6"4§ += 0.5 * param1;
            }
            if(this.§6"4§ > this.§'" §)
            {
               this.§6"4§ = this.§'" §;
            }
         }
         else
         {
            if(this.§do § > 0)
            {
               this.§do § -= 0.5 * param1;
               (§'K§.getItemByName("Container_MenuRightButtons") as §7!a§).y = (§'K§.getItemByName("Container_MenuRightButtons") as §7!a§).y + 0.5 * param1;
            }
            if(this.§do § < 0)
            {
               this.§do § = 0;
            }
            if(this.§6"4§ > 0)
            {
               this.§6"4§ -= 0.5 * param1;
            }
            if(this.§6"4§ < 0)
            {
               (§'K§.getItemByName("Container_MenuRightButtons") as §7!a§).setVisibility(false);
               this.§6"4§ = 0;
            }
         }
         (§'K§.getItemByName("Button_LeftMenuOpen") as §8!r§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§'K§.getItemByName("Button_RightMenuOpen") as §8!r§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§'K§.getItemByName("Button_LeftMenuOpen") as §8!r§).mClip.MovieClip_LeftMenuImage.rotation = this.§<c§;
         (§'K§.getItemByName("Button_RightMenuOpen") as §8!r§).mClip.MovieClip_RightMenuImage.rotation = this.§do §;
         (§'K§.getItemByName("Container_MenuLeftButtons") as §7!a§).y = this.§-!a§ - this.§3!s§;
         (§'K§.getItemByName("Container_MenuRightButtons") as §7!a§).y = this.§7C§ - this.§6"4§;
      }
      
      override public function deActivate() : void
      {
         (§'K§.getItemByName("Button_Play") as §8!r§).setComponentVisualState(§"h§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§ use§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!n§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§7V§)
               {
                  this.§7V§ = false;
               }
               else
               {
                  this.§7V§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§5!X§)
               {
                  this.§5!X§ = false;
               }
               else
               {
                  this.§5!X§ = true;
               }
               break;
            case "PLAY_LEVEL":
               § !x§.playSound("Menu_Confirm");
               mNextState = §4<§.§]"2§;
               break;
            case "OPEN_MENU":
               §'K§.setItemVisibility("Container_MenuButtons",!§'K§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§"!V§.§1!u§();
               §"!V§.§;!o§(_loc4_);
               §'K§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               § !x§.playSound("Menu_Confirm");
               AngryBirdsFP11.§'"0§.§[!>§();
               break;
            case "OPEN_CREDITS":
               § !x§.playSound("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               § !x§.playSound("Menu_Confirm");
               mNextState = §-q§.§]"2§;
               this.§7V§ = false;
               break;
            case "SOUNDS_BUTTON":
               § !x§.playSound("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc5_);
               if(_loc5_)
               {
                  this.§-"5§();
               }
               §'K§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§8@§ == null)
               {
                  this.§8@§ = new §9T§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§'K§.getItemByName("MovieClip_YouTubeArea") as §%!9§).changeMovieClip(this.§8@§);
                  (§'K§.getItemByName("MovieClip_YouTubeArea") as §%!9§).setVisibility(true);
                  break;
               }
         }
      }
   }
}

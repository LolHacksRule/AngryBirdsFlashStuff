package §>Y§
{
   import §"^§.§9=§;
   import §+=§.§=!4§;
   import §4!6§.§-j§;
   import §5!<§.§@]§;
   import §5!<§.§^!$§;
   import §5f§.§=;§;
   import §5f§.§]_§;
   import §<!4§.§25§;
   import §=u§.§"x§;
   import §=u§.§1r§;
   import §=u§.§>v§;
   import §?!=§.§<!>§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §>8§ extends §<!>§
   {
      
      public static const §4!C§:String = "LevelStartState";
      
      private static var §]'§:BitmapData = null;
       
      
      private var §;i§:Boolean = false;
      
      private var §]!,§:Boolean = false;
      
      private var §'!O§:§=!4§ = null;
      
      private var § §:Boolean = false;
      
      private var §[i§:Boolean = false;
      
      private var §=2§:Number = 0;
      
      private var §9!$§:Number = 0;
      
      private var §^F§:Number = 0;
      
      private var §,A§:Number = 0;
      
      private var §>m§:Number;
      
      private var §=G§:Number;
      
      private var §14§:Number;
      
      private var §7!;§:Number;
      
      private var §8;§:§-j§;
      
      public function §>8§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §7e§() : BitmapData
      {
         return §]'§;
      }
      
      override public function init() : void
      {
         super.init();
         §3g§ = new §@]§(this);
         §3g§.init(§^!$§.§"!9§.Views.View_LevelStart[0]);
         this.§'!O§ = new §=!4§(§9=§.§<!@§);
         this.§>m§ = (§3g§.getItemByName("Container_MenuLeftButtons") as §>v§).height;
         this.§=G§ = (§3g§.getItemByName("Container_MenuRightButtons") as §>v§).height;
         this.§14§ = §3g§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§7!;§ = §3g§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §9=§.§<!@§.§2k§(true);
         §9=§.§2R§(this.§'!O§);
         this.§'!O§.init();
         this.§if §();
         §3g§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§8!M§());
         §3g§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§9=§.§?W§());
         §3g§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.§3!?§.§=L§ ? false : true);
      }
      
      protected function §if §() : void
      {
         AngryBirdsFP11.§if §();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<!>§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§14§ = §3g§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§7!;§ = §3g§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§&D§(param1);
         if(!this.§]!,§)
         {
            §9=§.controller.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §<!>§.STATE_STATUS_COMPLETED;
         }
         return §<!>§.STATE_STATUS_RUNNING;
      }
      
      private function §&D§(param1:Number) : void
      {
         (§3g§.getItemByName("Container_MenuLeftButtons") as §>v§).mClip.scrollRect = new Rectangle(0,0,(§3g§.getItemByName("Container_MenuLeftButtons") as §>v§).width,this.§>m§ + 20 - (this.§>m§ - this.§^F§));
         (§3g§.getItemByName("Container_MenuRightButtons") as §>v§).mClip.scrollRect = new Rectangle(0,0,(§3g§.getItemByName("Container_MenuRightButtons") as §>v§).width,this.§=G§ + 20 - (this.§=G§ - this.§,A§));
         if(this.§ §)
         {
            (§3g§.getItemByName("Container_MenuLeftButtons") as §>v§).setVisibility(true);
            if(this.§=2§ < 90)
            {
               this.§=2§ += 0.3 * param1;
            }
            if(this.§=2§ > 90)
            {
               this.§=2§ = 90;
            }
            if(this.§^F§ < this.§>m§)
            {
               this.§^F§ += 0.5 * param1;
            }
            if(this.§^F§ > this.§>m§)
            {
               this.§^F§ = this.§>m§;
            }
         }
         else
         {
            if(this.§=2§ > 0)
            {
               this.§=2§ -= 0.3 * param1;
            }
            if(this.§=2§ < 0)
            {
               this.§=2§ = 0;
            }
            if(this.§^F§ > 0)
            {
               this.§^F§ -= 0.5 * param1;
            }
            if(this.§^F§ < 0)
            {
               (§3g§.getItemByName("Container_MenuLeftButtons") as §>v§).setVisibility(false);
               this.§^F§ = 0;
            }
         }
         if(this.§[i§)
         {
            (§3g§.getItemByName("Container_MenuRightButtons") as §>v§).setVisibility(true);
            if(this.§9!$§ < 180)
            {
               this.§9!$§ += 0.5 * param1;
               (§3g§.getItemByName("Container_MenuRightButtons") as §>v§).y = (§3g§.getItemByName("Container_MenuRightButtons") as §>v§).y - 0.5 * param1;
            }
            if(this.§9!$§ > 180)
            {
               this.§9!$§ = 180;
            }
            if(this.§,A§ < this.§=G§)
            {
               this.§,A§ += 0.5 * param1;
            }
            if(this.§,A§ > this.§=G§)
            {
               this.§,A§ = this.§=G§;
            }
         }
         else
         {
            if(this.§9!$§ > 0)
            {
               this.§9!$§ -= 0.5 * param1;
               (§3g§.getItemByName("Container_MenuRightButtons") as §>v§).y = (§3g§.getItemByName("Container_MenuRightButtons") as §>v§).y + 0.5 * param1;
            }
            if(this.§9!$§ < 0)
            {
               this.§9!$§ = 0;
            }
            if(this.§,A§ > 0)
            {
               this.§,A§ -= 0.5 * param1;
            }
            if(this.§,A§ < 0)
            {
               (§3g§.getItemByName("Container_MenuRightButtons") as §>v§).setVisibility(false);
               this.§,A§ = 0;
            }
         }
         (§3g§.getItemByName("Button_LeftMenuOpen") as §1r§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§3g§.getItemByName("Button_RightMenuOpen") as §1r§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§3g§.getItemByName("Button_LeftMenuOpen") as §1r§).mClip.MovieClip_LeftMenuImage.rotation = this.§=2§;
         (§3g§.getItemByName("Button_RightMenuOpen") as §1r§).mClip.MovieClip_RightMenuImage.rotation = this.§9!$§;
         (§3g§.getItemByName("Container_MenuLeftButtons") as §>v§).y = this.§14§ - this.§^F§;
         (§3g§.getItemByName("Container_MenuRightButtons") as §>v§).y = this.§7!;§ - this.§,A§;
      }
      
      override public function deActivate() : void
      {
         (§3g§.getItemByName("Button_Play") as §1r§).setComponentVisualState(§=;§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§;i§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]_§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§ §)
               {
                  this.§ § = false;
               }
               else
               {
                  this.§ § = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§[i§)
               {
                  this.§[i§ = false;
               }
               else
               {
                  this.§[i§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §25§.playSound("Menu_Confirm");
               mNextState = §=!F§.§4!C§;
               break;
            case "OPEN_MENU":
               §3g§.setItemVisibility("Container_MenuButtons",!§3g§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§9=§.§?W§();
               §9=§.§=h§(_loc4_);
               §3g§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §25§.playSound("Menu_Confirm");
               AngryBirdsFP11.§ j§.§@[§();
               break;
            case "OPEN_CREDITS":
               §25§.playSound("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §25§.playSound("Menu_Confirm");
               mNextState = §6[§.§4!C§;
               this.§ § = false;
               break;
            case "SOUNDS_BUTTON":
               §25§.playSound("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§8!M§();
               AngryBirdsFP11.§'_§(_loc5_);
               if(_loc5_)
               {
                  this.§if §();
               }
               §3g§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§8;§ == null)
               {
                  this.§8;§ = new §-j§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§3g§.getItemByName("MovieClip_YouTubeArea") as §"x§).changeMovieClip(this.§8;§);
                  (§3g§.getItemByName("MovieClip_YouTubeArea") as §"x§).setVisibility(true);
                  break;
               }
         }
      }
   }
}

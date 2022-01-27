package §8;§
{
   import §%!;§.§!L§;
   import §+y§.§3V§;
   import §2S§.§,!;§;
   import §2S§.§<!K§;
   import §9!0§.§9w§;
   import §9c§.§,x§;
   import §9c§.§6P§;
   import §<!F§.§5!+§;
   import §=!H§.§9V§;
   import §=!H§.§=<§;
   import §=!H§.§[R§;
   import §]G§.§;! §;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §6!F§ extends §!L§
   {
      
      public static const §"Z§:String = "LevelStartState";
      
      private static var §4!=§:BitmapData = null;
       
      
      private var §6!,§:Boolean = false;
      
      private var §-]§:Boolean = false;
      
      private var §&!E§:§;! § = null;
      
      private var §>Y§:Boolean = false;
      
      private var §[>§:Boolean = false;
      
      private var §=! §:Number = 0;
      
      private var §5X§:Number = 0;
      
      private var §]a§:Number = 0;
      
      private var §]!"§:Number = 0;
      
      private var §`!%§:Number;
      
      private var §@!J§:Number;
      
      private var §[s§:Number;
      
      private var §`!8§:Number;
      
      private var §+z§:§9w§;
      
      public function §6!F§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §5!3§() : BitmapData
      {
         return §4!=§;
      }
      
      override public function init() : void
      {
         super.init();
         §>2§ = new §<!K§(this);
         §>2§.init(§,!;§.§2o§.Views.View_LevelStart[0]);
         this.§&!E§ = new §;! §(§5!+§.§6!§);
         this.§`!%§ = (§>2§.getItemByName("Container_MenuLeftButtons") as §9V§).height;
         this.§@!J§ = (§>2§.getItemByName("Container_MenuRightButtons") as §9V§).height;
         this.§[s§ = §>2§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§`!8§ = §>2§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §5!+§.§6!§.§'!+§(true);
         §5!+§.§;&§(this.§&!E§);
         this.§&!E§.init();
         this.§6r§();
         §>2§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§![§());
         §>2§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§5!+§.§4!!§());
         §>2§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.§^O§.§<>§ ? false : true);
      }
      
      protected function §6r§() : void
      {
         AngryBirdsFP11.§6r§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §!L§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§[s§ = §>2§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§`!8§ = §>2§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§'h§(param1);
         if(!this.§-]§)
         {
            §5!+§.controller.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §!L§.STATE_STATUS_COMPLETED;
         }
         return §!L§.STATE_STATUS_RUNNING;
      }
      
      private function §'h§(param1:Number) : void
      {
         (§>2§.getItemByName("Container_MenuLeftButtons") as §9V§).mClip.scrollRect = new Rectangle(0,0,(§>2§.getItemByName("Container_MenuLeftButtons") as §9V§).width,this.§`!%§ + 20 - (this.§`!%§ - this.§]a§));
         (§>2§.getItemByName("Container_MenuRightButtons") as §9V§).mClip.scrollRect = new Rectangle(0,0,(§>2§.getItemByName("Container_MenuRightButtons") as §9V§).width,this.§@!J§ + 20 - (this.§@!J§ - this.§]!"§));
         if(this.§>Y§)
         {
            (§>2§.getItemByName("Container_MenuLeftButtons") as §9V§).setVisibility(true);
            if(this.§=! § < 90)
            {
               this.§=! § += 0.3 * param1;
            }
            if(this.§=! § > 90)
            {
               this.§=! § = 90;
            }
            if(this.§]a§ < this.§`!%§)
            {
               this.§]a§ += 0.5 * param1;
            }
            if(this.§]a§ > this.§`!%§)
            {
               this.§]a§ = this.§`!%§;
            }
         }
         else
         {
            if(this.§=! § > 0)
            {
               this.§=! § -= 0.3 * param1;
            }
            if(this.§=! § < 0)
            {
               this.§=! § = 0;
            }
            if(this.§]a§ > 0)
            {
               this.§]a§ -= 0.5 * param1;
            }
            if(this.§]a§ < 0)
            {
               (§>2§.getItemByName("Container_MenuLeftButtons") as §9V§).setVisibility(false);
               this.§]a§ = 0;
            }
         }
         if(this.§[>§)
         {
            (§>2§.getItemByName("Container_MenuRightButtons") as §9V§).setVisibility(true);
            if(this.§5X§ < 180)
            {
               this.§5X§ += 0.5 * param1;
               (§>2§.getItemByName("Container_MenuRightButtons") as §9V§).y = (§>2§.getItemByName("Container_MenuRightButtons") as §9V§).y - 0.5 * param1;
            }
            if(this.§5X§ > 180)
            {
               this.§5X§ = 180;
            }
            if(this.§]!"§ < this.§@!J§)
            {
               this.§]!"§ += 0.5 * param1;
            }
            if(this.§]!"§ > this.§@!J§)
            {
               this.§]!"§ = this.§@!J§;
            }
         }
         else
         {
            if(this.§5X§ > 0)
            {
               this.§5X§ -= 0.5 * param1;
               (§>2§.getItemByName("Container_MenuRightButtons") as §9V§).y = (§>2§.getItemByName("Container_MenuRightButtons") as §9V§).y + 0.5 * param1;
            }
            if(this.§5X§ < 0)
            {
               this.§5X§ = 0;
            }
            if(this.§]!"§ > 0)
            {
               this.§]!"§ -= 0.5 * param1;
            }
            if(this.§]!"§ < 0)
            {
               (§>2§.getItemByName("Container_MenuRightButtons") as §9V§).setVisibility(false);
               this.§]!"§ = 0;
            }
         }
         (§>2§.getItemByName("Button_LeftMenuOpen") as §=<§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§>2§.getItemByName("Button_RightMenuOpen") as §=<§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§>2§.getItemByName("Button_LeftMenuOpen") as §=<§).mClip.MovieClip_LeftMenuImage.rotation = this.§=! §;
         (§>2§.getItemByName("Button_RightMenuOpen") as §=<§).mClip.MovieClip_RightMenuImage.rotation = this.§5X§;
         (§>2§.getItemByName("Container_MenuLeftButtons") as §9V§).y = this.§[s§ - this.§]a§;
         (§>2§.getItemByName("Container_MenuRightButtons") as §9V§).y = this.§`!8§ - this.§]!"§;
      }
      
      override public function deActivate() : void
      {
         (§>2§.getItemByName("Button_Play") as §=<§).setComponentVisualState(§6P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§6!,§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,x§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§>Y§)
               {
                  this.§>Y§ = false;
               }
               else
               {
                  this.§>Y§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§[>§)
               {
                  this.§[>§ = false;
               }
               else
               {
                  this.§[>§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §3V§.playSound("Menu_Confirm");
               mNextState = §2!"§.§"Z§;
               break;
            case "OPEN_MENU":
               §>2§.setItemVisibility("Container_MenuButtons",!§>2§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§5!+§.§4!!§();
               §5!+§.§#U§(_loc4_);
               §>2§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §3V§.playSound("Menu_Confirm");
               AngryBirdsFP11.§"Y§.§4%§();
               break;
            case "OPEN_CREDITS":
               §3V§.playSound("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §3V§.playSound("Menu_Confirm");
               mNextState = §8!4§.§"Z§;
               this.§>Y§ = false;
               break;
            case "SOUNDS_BUTTON":
               §3V§.playSound("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§![§();
               AngryBirdsFP11.§`1§(_loc5_);
               if(_loc5_)
               {
                  this.§6r§();
               }
               §>2§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§+z§ == null)
               {
                  this.§+z§ = new §9w§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§>2§.getItemByName("MovieClip_YouTubeArea") as §[R§).changeMovieClip(this.§+z§);
                  (§>2§.getItemByName("MovieClip_YouTubeArea") as §[R§).setVisibility(true);
                  break;
               }
         }
      }
   }
}

package §>!A§
{
   import §"!&§.§#!,§;
   import §-!F§.§^h§;
   import §-!F§.§`!&§;
   import §4!H§.§&!H§;
   import §5H§.§[k§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import §@!H§.§`L§;
   import §@D§.§6I§;
   import §class§.§3C§;
   import §class§.§?q§;
   import §class§.§`!6§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §!!=§ extends §#!,§
   {
      
      public static const §?x§:String = "LevelStartState";
      
      private static var §-i§:BitmapData = null;
       
      
      private var §+o§:Boolean = false;
      
      private var §?! §:Boolean = false;
      
      private var §6=§:§`L§ = null;
      
      private var §&!'§:Boolean = false;
      
      private var §[@§:Boolean = false;
      
      private var §1f§:Number = 0;
      
      private var §3h§:Number = 0;
      
      private var §[n§:Number = 0;
      
      private var §&W§:Number = 0;
      
      private var §;!,§:Number;
      
      private var §@x§:Number;
      
      private var §=h§:Number;
      
      private var §88§:Number;
      
      private var §+!F§:§&!H§;
      
      public function §!!=§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §]2§() : BitmapData
      {
         return §-i§;
      }
      
      override public function init() : void
      {
         super.init();
         §[=§ = new §^3§(this);
         §[=§.init(§!I§.§7y§.Views.View_LevelStart[0]);
         this.§6=§ = new §`L§(§[k§.§&@§);
         this.§;!,§ = (§[=§.getItemByName("Container_MenuLeftButtons") as §3C§).height;
         this.§@x§ = (§[=§.getItemByName("Container_MenuRightButtons") as §3C§).height;
         this.§=h§ = §[=§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§88§ = §[=§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §[k§.§&@§.§`!G§(true);
         §[k§.§^L§(this.§6=§);
         this.§6=§.init();
         AngryBirdsFP11.§<!#§();
         §[=§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§,`§());
         §[=§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§[k§.§,V§());
         §[=§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§`i§ ? false : true);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §#!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§=h§ = §[=§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§88§ = §[=§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§8a§(param1);
         if(!this.§?! §)
         {
            §[k§.controller.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §#!,§.STATE_STATUS_COMPLETED;
         }
         return §#!,§.STATE_STATUS_RUNNING;
      }
      
      private function §8a§(param1:Number) : void
      {
         (§[=§.getItemByName("Container_MenuLeftButtons") as §3C§).mClip.scrollRect = new Rectangle(0,0,(§[=§.getItemByName("Container_MenuLeftButtons") as §3C§).width,this.§;!,§ + 20 - (this.§;!,§ - this.§[n§));
         (§[=§.getItemByName("Container_MenuRightButtons") as §3C§).mClip.scrollRect = new Rectangle(0,0,(§[=§.getItemByName("Container_MenuRightButtons") as §3C§).width,this.§@x§ + 20 - (this.§@x§ - this.§&W§));
         if(this.§&!'§)
         {
            (§[=§.getItemByName("Container_MenuLeftButtons") as §3C§).setVisibility(true);
            if(this.§1f§ < 90)
            {
               this.§1f§ += 0.3 * param1;
            }
            if(this.§1f§ > 90)
            {
               this.§1f§ = 90;
            }
            if(this.§[n§ < this.§;!,§)
            {
               this.§[n§ += 0.5 * param1;
            }
            if(this.§[n§ > this.§;!,§)
            {
               this.§[n§ = this.§;!,§;
            }
         }
         else
         {
            if(this.§1f§ > 0)
            {
               this.§1f§ -= 0.3 * param1;
            }
            if(this.§1f§ < 0)
            {
               this.§1f§ = 0;
            }
            if(this.§[n§ > 0)
            {
               this.§[n§ -= 0.5 * param1;
            }
            if(this.§[n§ < 0)
            {
               (§[=§.getItemByName("Container_MenuLeftButtons") as §3C§).setVisibility(false);
               this.§[n§ = 0;
            }
         }
         if(this.§[@§)
         {
            (§[=§.getItemByName("Container_MenuRightButtons") as §3C§).setVisibility(true);
            if(this.§3h§ < 180)
            {
               this.§3h§ += 0.5 * param1;
               (§[=§.getItemByName("Container_MenuRightButtons") as §3C§).y = (§[=§.getItemByName("Container_MenuRightButtons") as §3C§).y - 0.5 * param1;
            }
            if(this.§3h§ > 180)
            {
               this.§3h§ = 180;
            }
            if(this.§&W§ < this.§@x§)
            {
               this.§&W§ += 0.5 * param1;
            }
            if(this.§&W§ > this.§@x§)
            {
               this.§&W§ = this.§@x§;
            }
         }
         else
         {
            if(this.§3h§ > 0)
            {
               this.§3h§ -= 0.5 * param1;
               (§[=§.getItemByName("Container_MenuRightButtons") as §3C§).y = (§[=§.getItemByName("Container_MenuRightButtons") as §3C§).y + 0.5 * param1;
            }
            if(this.§3h§ < 0)
            {
               this.§3h§ = 0;
            }
            if(this.§&W§ > 0)
            {
               this.§&W§ -= 0.5 * param1;
            }
            if(this.§&W§ < 0)
            {
               (§[=§.getItemByName("Container_MenuRightButtons") as §3C§).setVisibility(false);
               this.§&W§ = 0;
            }
         }
         (§[=§.getItemByName("Button_LeftMenuOpen") as §?q§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§[=§.getItemByName("Button_RightMenuOpen") as §?q§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§[=§.getItemByName("Button_LeftMenuOpen") as §?q§).mClip.MovieClip_LeftMenuImage.rotation = this.§1f§;
         (§[=§.getItemByName("Button_RightMenuOpen") as §?q§).mClip.MovieClip_RightMenuImage.rotation = this.§3h§;
         (§[=§.getItemByName("Container_MenuLeftButtons") as §3C§).y = this.§=h§ - this.§[n§;
         (§[=§.getItemByName("Container_MenuRightButtons") as §3C§).y = this.§88§ - this.§&W§;
      }
      
      override public function deActivate() : void
      {
         (§[=§.getItemByName("Button_Play") as §?q§).setComponentVisualState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§+o§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§&!'§)
               {
                  this.§&!'§ = false;
               }
               else
               {
                  this.§&!'§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§[@§)
               {
                  this.§[@§ = false;
               }
               else
               {
                  this.§[@§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §6I§.§ ;§("Menu_Confirm");
               mNextState = §^q§.§?x§;
               break;
            case "OPEN_MENU":
               §[=§.setItemVisibility("Container_MenuButtons",!§[=§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§[k§.§,V§();
               §[k§.§^v§(_loc4_);
               §[=§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §6I§.§ ;§("Menu_Confirm");
               AngryBirdsFP11.§,s§.§8!1§();
               break;
            case "OPEN_CREDITS":
               §6I§.§ ;§("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §6I§.§ ;§("Menu_Confirm");
               mNextState = §3!G§.§?x§;
               this.§&!'§ = false;
               break;
            case "SOUNDS_BUTTON":
               §6I§.§ ;§("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§,`§();
               AngryBirdsFP11.§4C§(_loc5_);
               if(_loc5_)
               {
                  AngryBirdsFP11.§<!#§();
               }
               §[=§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§+!F§ == null)
               {
                  this.§+!F§ = new §&!H§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§[=§.getItemByName("MovieClip_YouTubeArea") as §`!6§).changeMovieClip(this.§+!F§);
                  (§[=§.getItemByName("MovieClip_YouTubeArea") as §`!6§).setVisibility(true);
               }
         }
      }
   }
}

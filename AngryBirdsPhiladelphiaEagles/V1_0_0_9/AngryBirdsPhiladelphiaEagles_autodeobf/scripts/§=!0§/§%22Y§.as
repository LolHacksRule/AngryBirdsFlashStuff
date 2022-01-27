package §=!0§
{
   import §!t§.§5b§;
   import §!t§.§;1§;
   import §!t§.§?g§;
   import §,!1§.§]e§;
   import §5F§.§+!O§;
   import §5F§.§3^§;
   import §=!1§.§4G§;
   import §=z§.§0!E§;
   import §>!7§.§"Q§;
   import §>!7§.§`d§;
   import §^w§.§-!,§;
   import §`!8§.§`o§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §"Y§ extends §-!,§
   {
      
      public static const §@§:String = "LevelStartState";
      
      private static var §!a§:BitmapData = null;
       
      
      private var §[!F§:Boolean = false;
      
      private var §+b§:Boolean = false;
      
      private var §;!K§:§4G§ = null;
      
      private var §9Z§:Boolean = false;
      
      private var §#c§:Boolean = false;
      
      private var §[O§:Number = 0;
      
      private var §<e§:Number = 0;
      
      private var §'$§:Number = 0;
      
      private var §'x§:Number = 0;
      
      private var §finally§:Number;
      
      private var §"C§:Number;
      
      private var § c§:Number;
      
      private var §"-§:Number;
      
      private var §3!9§:§`o§;
      
      public function §"Y§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get § !!§() : BitmapData
      {
         return §!a§;
      }
      
      override public function init() : void
      {
         super.init();
         §;I§ = new §"Q§(this);
         §;I§.init(§`d§.§8?§.Views.View_LevelStart[0]);
         this.§;!K§ = new §4G§(§0!E§.§9!B§);
         this.§finally§ = (§;I§.getItemByName("Container_MenuLeftButtons") as §;1§).height;
         this.§"C§ = (§;I§.getItemByName("Container_MenuRightButtons") as §;1§).height;
         this.§ c§ = §;I§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§"-§ = §;I§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §0!E§.§9!B§.§5!3§(true);
         §0!E§.§7!H§(this.§;!K§);
         this.§;!K§.init();
         this.§!!!§();
         §;I§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§?!L§());
         §;I§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§0!E§.§5H§());
         §;I§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.§5@§.§6!$§ ? false : true);
      }
      
      protected function §!!!§() : void
      {
         AngryBirdsFP11.§!!!§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§ c§ = §;I§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§"-§ = §;I§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§]=§(param1);
         if(!this.§+b§)
         {
            §0!E§.controller.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §-!,§.STATE_STATUS_COMPLETED;
         }
         return §-!,§.STATE_STATUS_RUNNING;
      }
      
      private function §]=§(param1:Number) : void
      {
         (§;I§.getItemByName("Container_MenuLeftButtons") as §;1§).mClip.scrollRect = new Rectangle(0,0,(§;I§.getItemByName("Container_MenuLeftButtons") as §;1§).width,this.§finally§ + 20 - (this.§finally§ - this.§'$§));
         (§;I§.getItemByName("Container_MenuRightButtons") as §;1§).mClip.scrollRect = new Rectangle(0,0,(§;I§.getItemByName("Container_MenuRightButtons") as §;1§).width,this.§"C§ + 20 - (this.§"C§ - this.§'x§));
         if(this.§9Z§)
         {
            (§;I§.getItemByName("Container_MenuLeftButtons") as §;1§).setVisibility(true);
            if(this.§[O§ < 90)
            {
               this.§[O§ += 0.3 * param1;
            }
            if(this.§[O§ > 90)
            {
               this.§[O§ = 90;
            }
            if(this.§'$§ < this.§finally§)
            {
               this.§'$§ += 0.5 * param1;
            }
            if(this.§'$§ > this.§finally§)
            {
               this.§'$§ = this.§finally§;
            }
         }
         else
         {
            if(this.§[O§ > 0)
            {
               this.§[O§ -= 0.3 * param1;
            }
            if(this.§[O§ < 0)
            {
               this.§[O§ = 0;
            }
            if(this.§'$§ > 0)
            {
               this.§'$§ -= 0.5 * param1;
            }
            if(this.§'$§ < 0)
            {
               (§;I§.getItemByName("Container_MenuLeftButtons") as §;1§).setVisibility(false);
               this.§'$§ = 0;
            }
         }
         if(this.§#c§)
         {
            (§;I§.getItemByName("Container_MenuRightButtons") as §;1§).setVisibility(true);
            if(this.§<e§ < 180)
            {
               this.§<e§ += 0.5 * param1;
               (§;I§.getItemByName("Container_MenuRightButtons") as §;1§).y = (§;I§.getItemByName("Container_MenuRightButtons") as §;1§).y - 0.5 * param1;
            }
            if(this.§<e§ > 180)
            {
               this.§<e§ = 180;
            }
            if(this.§'x§ < this.§"C§)
            {
               this.§'x§ += 0.5 * param1;
            }
            if(this.§'x§ > this.§"C§)
            {
               this.§'x§ = this.§"C§;
            }
         }
         else
         {
            if(this.§<e§ > 0)
            {
               this.§<e§ -= 0.5 * param1;
               (§;I§.getItemByName("Container_MenuRightButtons") as §;1§).y = (§;I§.getItemByName("Container_MenuRightButtons") as §;1§).y + 0.5 * param1;
            }
            if(this.§<e§ < 0)
            {
               this.§<e§ = 0;
            }
            if(this.§'x§ > 0)
            {
               this.§'x§ -= 0.5 * param1;
            }
            if(this.§'x§ < 0)
            {
               (§;I§.getItemByName("Container_MenuRightButtons") as §;1§).setVisibility(false);
               this.§'x§ = 0;
            }
         }
         (§;I§.getItemByName("Button_LeftMenuOpen") as §5b§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§;I§.getItemByName("Button_RightMenuOpen") as §5b§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§;I§.getItemByName("Button_LeftMenuOpen") as §5b§).mClip.MovieClip_LeftMenuImage.rotation = this.§[O§;
         (§;I§.getItemByName("Button_RightMenuOpen") as §5b§).mClip.MovieClip_RightMenuImage.rotation = this.§<e§;
         (§;I§.getItemByName("Container_MenuLeftButtons") as §;1§).y = this.§ c§ - this.§'$§;
         (§;I§.getItemByName("Container_MenuRightButtons") as §;1§).y = this.§"-§ - this.§'x§;
      }
      
      override public function deActivate() : void
      {
         (§;I§.getItemByName("Button_Play") as §5b§).setComponentVisualState(§3^§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§[!F§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!O§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§9Z§)
               {
                  this.§9Z§ = false;
               }
               else
               {
                  this.§9Z§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§#c§)
               {
                  this.§#c§ = false;
               }
               else
               {
                  this.§#c§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §]e§.playSound("Menu_Confirm");
               mNextState = §&z§.§@§;
               break;
            case "OPEN_MENU":
               §;I§.setItemVisibility("Container_MenuButtons",!§;I§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§0!E§.§5H§();
               §0!E§.§!_§(_loc4_);
               §;I§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §]e§.playSound("Menu_Confirm");
               AngryBirdsFP11.§;!@§.§8N§();
               break;
            case "OPEN_CREDITS":
               §]e§.playSound("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §]e§.playSound("Menu_Confirm");
               mNextState = §9!D§.§@§;
               this.§9Z§ = false;
               break;
            case "SOUNDS_BUTTON":
               §]e§.playSound("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§?!L§();
               AngryBirdsFP11.§6x§(_loc5_);
               if(_loc5_)
               {
                  this.§!!!§();
               }
               §;I§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§3!9§ == null)
               {
                  this.§3!9§ = new §`o§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§;I§.getItemByName("MovieClip_YouTubeArea") as §?g§).changeMovieClip(this.§3!9§);
                  (§;I§.getItemByName("MovieClip_YouTubeArea") as §?g§).setVisibility(true);
                  break;
               }
         }
      }
   }
}

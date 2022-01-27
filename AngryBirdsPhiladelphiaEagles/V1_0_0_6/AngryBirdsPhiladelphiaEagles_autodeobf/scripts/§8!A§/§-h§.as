package §8!A§
{
   import §!!0§.§ true§;
   import §!!0§.§2§;
   import §#!0§.§#-§;
   import §&b§.§[F§;
   import §3?§.§=b§;
   import §4M§.;
   import §4M§.§^'§;
   import §8]§.§+a§;
   import §8]§.§-u§;
   import §8]§.§93§;
   import §;!!§.§0H§;
   import §;!B§.§"!?§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §-h§ extends §0H§
   {
      
      public static const §2`§:String = "LevelStartState";
      
      private static var §0!6§:BitmapData = null;
       
      
      private var §4@§:Boolean = false;
      
      private var §]B§:Boolean = false;
      
      private var §9!J§:§=b§ = null;
      
      private var §]!K§:Boolean = false;
      
      private var §<;§:Boolean = false;
      
      private var §4!A§:Number = 0;
      
      private var §+!=§:Number = 0;
      
      private var §!!@§:Number = 0;
      
      private var §2!H§:Number = 0;
      
      private var §]v§:Number;
      
      private var §!!2§:Number;
      
      private var §<!;§:Number;
      
      private var §#V§:Number;
      
      private var §class§:§"!?§;
      
      public function §-h§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §!e§() : BitmapData
      {
         return §0!6§;
      }
      
      override public function init() : void
      {
         super.init();
         §<A§ = new §^'§(this);
         §<A§.init(§#4§.§]X§.Views.View_LevelStart[0]);
         this.§9!J§ = new §=b§(§[F§.§9u§);
         this.§]v§ = (§<A§.getItemByName("Container_MenuLeftButtons") as §+a§).height;
         this.§!!2§ = (§<A§.getItemByName("Container_MenuRightButtons") as §+a§).height;
         this.§<!;§ = §<A§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§#V§ = §<A§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §[F§.§9u§.§#Q§(true);
         §[F§.§0D§(this.§9!J§);
         this.§9!J§.init();
         this.§=0§();
         §<A§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§ !Q§());
         §<A§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§[F§.§3!;§());
         §<A§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.§ !-§.§-!F§ ? false : true);
      }
      
      protected function §=0§() : void
      {
         AngryBirdsFP11.§=0§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0H§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§<!;§ = §<A§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§#V§ = §<A§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§,!A§(param1);
         if(!this.§]B§)
         {
            §[F§.controller.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §0H§.STATE_STATUS_COMPLETED;
         }
         return §0H§.STATE_STATUS_RUNNING;
      }
      
      private function §,!A§(param1:Number) : void
      {
         (§<A§.getItemByName("Container_MenuLeftButtons") as §+a§).mClip.scrollRect = new Rectangle(0,0,(§<A§.getItemByName("Container_MenuLeftButtons") as §+a§).width,this.§]v§ + 20 - (this.§]v§ - this.§!!@§));
         (§<A§.getItemByName("Container_MenuRightButtons") as §+a§).mClip.scrollRect = new Rectangle(0,0,(§<A§.getItemByName("Container_MenuRightButtons") as §+a§).width,this.§!!2§ + 20 - (this.§!!2§ - this.§2!H§));
         if(this.§]!K§)
         {
            (§<A§.getItemByName("Container_MenuLeftButtons") as §+a§).setVisibility(true);
            if(this.§4!A§ < 90)
            {
               this.§4!A§ += 0.3 * param1;
            }
            if(this.§4!A§ > 90)
            {
               this.§4!A§ = 90;
            }
            if(this.§!!@§ < this.§]v§)
            {
               this.§!!@§ += 0.5 * param1;
            }
            if(this.§!!@§ > this.§]v§)
            {
               this.§!!@§ = this.§]v§;
            }
         }
         else
         {
            if(this.§4!A§ > 0)
            {
               this.§4!A§ -= 0.3 * param1;
            }
            if(this.§4!A§ < 0)
            {
               this.§4!A§ = 0;
            }
            if(this.§!!@§ > 0)
            {
               this.§!!@§ -= 0.5 * param1;
            }
            if(this.§!!@§ < 0)
            {
               (§<A§.getItemByName("Container_MenuLeftButtons") as §+a§).setVisibility(false);
               this.§!!@§ = 0;
            }
         }
         if(this.§<;§)
         {
            (§<A§.getItemByName("Container_MenuRightButtons") as §+a§).setVisibility(true);
            if(this.§+!=§ < 180)
            {
               this.§+!=§ += 0.5 * param1;
               (§<A§.getItemByName("Container_MenuRightButtons") as §+a§).y = (§<A§.getItemByName("Container_MenuRightButtons") as §+a§).y - 0.5 * param1;
            }
            if(this.§+!=§ > 180)
            {
               this.§+!=§ = 180;
            }
            if(this.§2!H§ < this.§!!2§)
            {
               this.§2!H§ += 0.5 * param1;
            }
            if(this.§2!H§ > this.§!!2§)
            {
               this.§2!H§ = this.§!!2§;
            }
         }
         else
         {
            if(this.§+!=§ > 0)
            {
               this.§+!=§ -= 0.5 * param1;
               (§<A§.getItemByName("Container_MenuRightButtons") as §+a§).y = (§<A§.getItemByName("Container_MenuRightButtons") as §+a§).y + 0.5 * param1;
            }
            if(this.§+!=§ < 0)
            {
               this.§+!=§ = 0;
            }
            if(this.§2!H§ > 0)
            {
               this.§2!H§ -= 0.5 * param1;
            }
            if(this.§2!H§ < 0)
            {
               (§<A§.getItemByName("Container_MenuRightButtons") as §+a§).setVisibility(false);
               this.§2!H§ = 0;
            }
         }
         (§<A§.getItemByName("Button_LeftMenuOpen") as §-u§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§<A§.getItemByName("Button_RightMenuOpen") as §-u§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§<A§.getItemByName("Button_LeftMenuOpen") as §-u§).mClip.MovieClip_LeftMenuImage.rotation = this.§4!A§;
         (§<A§.getItemByName("Button_RightMenuOpen") as §-u§).mClip.MovieClip_RightMenuImage.rotation = this.§+!=§;
         (§<A§.getItemByName("Container_MenuLeftButtons") as §+a§).y = this.§<!;§ - this.§!!@§;
         (§<A§.getItemByName("Container_MenuRightButtons") as §+a§).y = this.§#V§ - this.§2!H§;
      }
      
      override public function deActivate() : void
      {
         (§<A§.getItemByName("Button_Play") as §-u§).setComponentVisualState(§2§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§4@§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§ true§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§]!K§)
               {
                  this.§]!K§ = false;
               }
               else
               {
                  this.§]!K§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§<;§)
               {
                  this.§<;§ = false;
               }
               else
               {
                  this.§<;§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §#-§.playSound("Menu_Confirm");
               mNextState = § !6§.§2`§;
               break;
            case "OPEN_MENU":
               §<A§.setItemVisibility("Container_MenuButtons",!§<A§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§[F§.§3!;§();
               §[F§.§'!%§(_loc4_);
               §<A§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §#-§.playSound("Menu_Confirm");
               AngryBirdsFP11.§^F§.§>!M§();
               break;
            case "OPEN_CREDITS":
               §#-§.playSound("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §#-§.playSound("Menu_Confirm");
               mNextState = §4!?§.§2`§;
               this.§]!K§ = false;
               break;
            case "SOUNDS_BUTTON":
               §#-§.playSound("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§ !Q§();
               AngryBirdsFP11.§0!E§(_loc5_);
               if(_loc5_)
               {
                  this.§=0§();
               }
               §<A§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§class§ == null)
               {
                  this.§class§ = new §"!?§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§<A§.getItemByName("MovieClip_YouTubeArea") as §93§).changeMovieClip(this.§class§);
                  (§<A§.getItemByName("MovieClip_YouTubeArea") as §93§).setVisibility(true);
                  break;
               }
         }
      }
   }
}

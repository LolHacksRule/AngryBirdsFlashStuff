package §_-Hq§
{
   import §_-20§.§_-dV§;
   import §_-Ah§.§_-b§;
   import §_-QM§.§_-GC§;
   import §_-QM§.§_-Ns§;
   import §_-TE§.§_-PN§;
   import §_-TW§.§_-2x§;
   import §_-TW§.§_-iD§;
   import §_-TW§.§_-qq§;
   import §_-TW§.§_-r6§;
   import §_-Y-§.§_-A5§;
   import §_-bg§.§_-xF§;
   import §_-d5§.§_-6Y§;
   import §_-ez§.§_-7m§;
   import §_-ic§.HighscoreSidebar;
   import §_-rb§.§_-2Q§;
   import §_-uz§.§_-wX§;
   import §_-xN§.§_-pB§;
   
   public class §_-1F§ extends §_-UR§
   {
      
      private static const §_-py§:Number = -250;
      
      public static const §_-dh§:String = "PauseState";
       
      
      private var §_-Cd§:§_-wX§ = null;
      
      public function §_-1F§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-qE§ = new §_-Ns§(this);
         §_-qE§.init(§_-GC§.§_-jz§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         var _loc1_:int = 0;
         if(§_-03§)
         {
            _loc1_ = §_-03§.currentPage;
         }
         super.activate();
         if(§_-6Y§.§true§)
         {
            §_-6Y§.§true§.start();
         }
         this.§_-l5§();
         if(_loc1_)
         {
            §_-03§.choosePage(_loc1_);
         }
         §_-03§.changeState(HighscoreSidebar.§_-JL§);
         §_-03§.showHighscores(§_-A5§.§_-KH§);
         §_-qE§.getItemByName("Button_Help").setEnabled(§_-dV§.§_-F-§());
         §_-qE§.getItemByName("Button_Help").setVisibility(§_-dV§.§_-F-§());
      }
      
      private function §_-l5§() : void
      {
         var _loc1_:String = §_-A5§.§_-KH§;
         if(_loc1_.indexOf("1-") == 0)
         {
            _loc1_ = _loc1_.substring(2);
         }
         (§_-qE§.getItemByName("TextField_LevelName") as §_-iD§).§_-3n§.text = _loc1_;
         (§_-qE§.getItemByName("Container_PauseMenu") as §_-qq§).x = §_-py§;
         this.§_-Io§(false);
         §_-6Y§.§_-7p§.§_-ej§ = true;
         §_-qE§.getItemByName("MovieClip_SoundsOff").setVisibility(!§_-I8§.§_-rH§());
         if(this.§_-Cd§ != null)
         {
            this.§_-Cd§.stop();
         }
         this.§_-Cd§ = §_-xF§.§_-pr§(§_-xF§.§_-JE§(§_-qE§.getItemByName("Container_PauseMenu") as §_-qq§,{"x":0},null,0.25),§_-xF§.§_-JE§((§_-qE§.getItemByName("MovieClip_DarkBG") as §_-2x§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§_-Cd§.addEventListener(§_-2Q§.COMPLETE,this.§_-BJ§);
         this.§_-Cd§.play();
      }
      
      private function §_-BJ§(param1:§_-2Q§) : void
      {
         this.§_-Cd§.removeEventListener(§_-2Q§.COMPLETE,this.§_-BJ§);
         this.§_-Io§(true);
      }
      
      private function §_-Io§(param1:Boolean) : void
      {
         (§_-qE§.getItemByName("Button_Resume") as §_-r6§).setEnabled(param1);
         (§_-qE§.getItemByName("Button_Replay") as §_-r6§).setEnabled(param1);
         (§_-qE§.getItemByName("Button_Menu") as §_-r6§).setEnabled(param1);
         (§_-qE§.getItemByName("Button_Help") as §_-r6§).setEnabled(param1);
         (§_-qE§.getItemByName("Button_Sound") as §_-r6§).setEnabled(param1);
         §_-qE§.getItemByName("Button_Help").setEnabled(§_-dV§.§_-F-§());
      }
      
      private function §_-jx§() : void
      {
         if(this.§_-Cd§ != null)
         {
            this.§_-Cd§.stop();
         }
         this.§_-Cd§ = §_-xF§.§_-pr§(§_-xF§.§_-JE§(§_-qE§.getItemByName("Container_PauseMenu") as §_-qq§,{"x":§_-py§},null,0.25),§_-xF§.§_-JE§((§_-qE§.getItemByName("MovieClip_DarkBG") as §_-2x§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§_-Cd§.addEventListener(§_-2Q§.COMPLETE,this.§_-7c§);
         this.§_-Cd§.play();
      }
      
      private function §_-7c§(param1:§_-2Q§) : void
      {
         this.§_-Cd§.removeEventListener(§_-2Q§.COMPLETE,this.§_-7c§);
         mNextState = StatePlay.§_-dh§;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-PN§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-PN§.STATE_STATUS_COMPLETED;
         }
         return §_-PN§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §_-6Y§.§_-7p§.§_-ej§ = false;
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-pB§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§_-7m§ = null;
         switch(param2)
         {
            case "HELP":
               this.§_-jx§();
               for each(_loc6_ in §_-b§.§_-cK§.mLevelSlingshot.mBirds)
               {
                  §_-I8§.§_-Gn§.§_-Mc§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = §_-mF§.§_-dh§;
               §_-mF§.§_-4C§();
               break;
            case "RESUME_LEVEL":
               this.§_-jx§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               mNextState = §_-fR§.§_-dh§;
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§_-I8§.§_-rH§();
               §_-I8§.§_-vR§(_loc4_);
               §_-qE§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§_-b§.§_-5d§();
               §_-b§.§_-UH§(_loc5_);
               §_-qE§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "TOGGLE_FULLSCREEN":
         }
      }
   }
}

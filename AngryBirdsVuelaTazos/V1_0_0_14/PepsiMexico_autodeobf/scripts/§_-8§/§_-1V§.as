package §_-8§
{
   import §_-12§.§_-7l§;
   import §_-3P§.§_-os§;
   import §_-5Y§.§_-UH§;
   import §_-Jx§.§_-Ao§;
   import §_-Kn§.HighscoreSidebar;
   import §_-M0§.§_-u4§;
   import §_-Qn§.§_-AG§;
   import §_-Yh§.§_-BS§;
   import §_-Yh§.§_-fA§;
   import §_-eb§.§_-lk§;
   import §_-fI§.§_-BI§;
   import §_-hf§.§_-0J§;
   import §_-hf§.§_-6o§;
   import §_-hf§.§_-Nx§;
   import §_-hf§.§_-WL§;
   import §_-qT§.§_-O5§;
   import §_-uh§.§_-HB§;
   
   public class §_-1V§ extends §_-1f§
   {
      
      private static const §_-Yu§:Number = -250;
      
      public static const §_-7m§:String = "PauseState";
       
      
      private var §_-We§:§_-7l§ = null;
      
      public function §_-1V§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-Ih§ = new §_-fA§(this);
         §_-Ih§.init(§_-BS§.§_-tc§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         var _loc1_:int = 0;
         if(§_-5D§)
         {
            _loc1_ = §_-5D§.currentPage;
         }
         super.activate();
         §_-u4§.§_-40§.§_-AB§(true);
         this.§_-hC§();
         if(_loc1_)
         {
            §_-5D§.choosePage(_loc1_);
         }
         §_-5D§.changeState(HighscoreSidebar.§_-Po§);
         §_-5D§.showHighscores(§_-HB§.§_-Z-§);
         §_-Ih§.getItemByName("Button_Help").setEnabled(§_-lk§.§_-cY§());
         §_-Ih§.getItemByName("Button_Help").setVisibility(§_-lk§.§_-cY§());
      }
      
      private function §_-hC§() : void
      {
         var _loc1_:String = §_-HB§.§_-Z-§;
         if(_loc1_.indexOf("1-") == 0)
         {
            _loc1_ = _loc1_.substring(2);
         }
         (§_-Ih§.getItemByName("TextField_LevelName") as §_-0J§).§_-Ho§.text = _loc1_;
         (§_-Ih§.getItemByName("Container_PauseMenu") as §_-WL§).x = §_-Yu§;
         this.§_-uw§(false);
         §_-BI§.§_-CE§.§_-9m§ = true;
         §_-Ih§.getItemByName("MovieClip_SoundsOff").setVisibility(!§_-Tj§.§_-E9§());
         if(this.§_-We§ != null)
         {
            this.§_-We§.stop();
         }
         this.§_-We§ = §_-AG§.§_-ej§(§_-AG§.§_-aI§(§_-Ih§.getItemByName("Container_PauseMenu") as §_-WL§,{"x":0},null,0.25),§_-AG§.§_-aI§((§_-Ih§.getItemByName("MovieClip_DarkBG") as §_-Nx§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§_-We§.addEventListener(§_-os§.COMPLETE,this.§_-ve§);
         this.§_-We§.play();
      }
      
      private function §_-ve§(param1:§_-os§) : void
      {
         this.§_-We§.removeEventListener(§_-os§.COMPLETE,this.§_-ve§);
         this.§_-uw§(true);
      }
      
      private function §_-uw§(param1:Boolean) : void
      {
         (§_-Ih§.getItemByName("Button_Resume") as §_-6o§).setEnabled(param1);
         (§_-Ih§.getItemByName("Button_Replay") as §_-6o§).setEnabled(param1);
         (§_-Ih§.getItemByName("Button_Menu") as §_-6o§).setEnabled(param1);
         (§_-Ih§.getItemByName("Button_Help") as §_-6o§).setEnabled(param1);
         (§_-Ih§.getItemByName("Button_Sound") as §_-6o§).setEnabled(param1);
         §_-Ih§.getItemByName("Button_Help").setEnabled(§_-lk§.§_-cY§());
      }
      
      private function §_-kC§() : void
      {
         if(this.§_-We§ != null)
         {
            this.§_-We§.stop();
         }
         this.§_-We§ = §_-AG§.§_-ej§(§_-AG§.§_-aI§(§_-Ih§.getItemByName("Container_PauseMenu") as §_-WL§,{"x":§_-Yu§},null,0.25),§_-AG§.§_-aI§((§_-Ih§.getItemByName("MovieClip_DarkBG") as §_-Nx§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§_-We§.addEventListener(§_-os§.COMPLETE,this.§_-Gf§);
         this.§_-We§.play();
      }
      
      private function §_-Gf§(param1:§_-os§) : void
      {
         this.§_-We§.removeEventListener(§_-os§.COMPLETE,this.§_-Gf§);
         mNextState = StatePlay.§_-7m§;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-O5§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-O5§.STATE_STATUS_COMPLETED;
         }
         return §_-O5§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §_-BI§.§_-CE§.§_-9m§ = false;
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Ao§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§_-UH§ = null;
         switch(param2)
         {
            case "HELP":
               this.§_-kC§();
               for each(_loc6_ in §_-u4§.§_-40§.slingshot.§_-zl§)
               {
                  §_-Tj§.§_-7q§.§_-bL§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = §_-OU§.§_-7m§;
               §_-OU§.§for §();
               break;
            case "RESUME_LEVEL":
               this.§_-kC§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               mNextState = §_-VD§.§_-7m§;
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§_-Tj§.§_-E9§();
               §_-Tj§.§_-ZO§(_loc4_);
               §_-Ih§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§_-u4§.§_-af§();
               §_-u4§.§_-YZ§(_loc5_);
               §_-Ih§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "TOGGLE_FULLSCREEN":
         }
      }
   }
}

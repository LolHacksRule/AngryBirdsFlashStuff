package §_-T-§
{
   import §_-0A-§.§_-08e§;
   import §_-7§.§_-42§;
   import §_-7§.§_-EJ§;
   import §_-Ga§.LevelManager;
   import §_-Ga§.§_-bm§;
   import §_-Hb§.§_-P-§;
   import §_-Hb§.§_-a5§;
   import §_-Hb§.§_-ur§;
   import §_-ad§.§_-MG§;
   import §_-eS§.§_-OY§;
   import §_-qO§.§ in§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §_-tD§ extends §_-MG§
   {
       
      
      protected var §_-22§:§_-ur§;
      
      public function §_-tD§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-s0§.movieClip.graphics.beginFill(0);
         §_-s0§.movieClip.graphics.drawRect(0,0,4000,4000);
         §_-s0§.movieClip.graphics.endFill();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(LevelManager.§_-HM§ != null)
         {
            §_-s0§.setText(this.§_-IF§(),"TextField_LevelLoading");
         }
      }
      
      protected function §_-IF§() : String
      {
         return " - " + §_-08e§.§_-i8§(LevelManager.§_-HM§);
      }
      
      override protected function initLevelMain(param1:§_-bm§) : void
      {
         super.initLevelMain(param1);
      }
      
      override protected function initLevelLoad() : void
      {
         (§ in§.§_-HY§ as §_-rG§).§_-0C7§.§_-LA§ = false;
         (§ in§.§_-HY§ as §_-rG§).§_-0C7§.§_-LA§ = true;
         if(this.§_-22§)
         {
            this.§_-22§.removeEventListener(Event.COMPLETE,this.§_-0DT§);
            this.§_-22§ = null;
         }
         if(LevelManager.§_-HM§)
         {
            this.§_-22§ = new §_-ur§();
            this.§_-22§.addEventListener(Event.COMPLETE,this.§_-0DT§);
            this.§_-22§.addEventListener(IOErrorEvent.IO_ERROR,this.§_-f4§);
            this.§_-22§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-f4§);
            this.§_-22§.addEventListener(§_-a5§.§_-Gy§,this.§_-f4§);
            this.§_-22§.load(§_-P-§.§_-0Ak§(AngryBirdsFP11.§_-08Q§ + "/startlevel/" + LevelManager.§_-HM§));
            super.initLevelLoad();
            return;
         }
         §_-EJ§.§_-QC§();
         throw new Error("LevelManager.smCurrentLevel was null in initLevelLoad() in StateFacebookLevelLoad.");
      }
      
      protected function §_-f4§(param1:Event) : void
      {
         if(param1.type == §_-a5§.§_-Gy§)
         {
            §_-EJ§.§_-QC§(§_-42§.§_-06o§);
         }
         else
         {
            §_-EJ§.§_-8H§();
         }
         this.§_-22§ = null;
      }
      
      protected function §_-0DT§(param1:Event) : void
      {
         §_-e3§.§_-00p§ = this.§_-22§.data;
         this.§_-22§ = null;
      }
      
      override public function isReady() : Boolean
      {
         if(this.§_-22§)
         {
            return false;
         }
         return super.isReady();
      }
      
      override public function onLevelLoadError() : void
      {
         super.onLevelLoadError();
         var _loc1_:String = "level-" + LevelManager.§_-HM§;
         §_-OY§.§_-ta§(_loc1_);
         §_-EJ§.§_-8H§();
         (§ in§.§_-HY§ as §_-rG§).§_-09i§();
      }
   }
}

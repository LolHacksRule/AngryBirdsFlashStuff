package §;u§
{
   import §,l§.§+I§;
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §2<§.§9G§;
   import §5!Y§.§9"6§;
   import §5!Y§.§]!I§;
   import §9!n§.§!J§;
   import §9!n§.§0"T§;
   import §9!n§.LevelManager;
   import §9@§.§@q§;
   import §@!"§.§?l§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §;"P§ extends §-!v§
   {
       
      
      protected var §!"=§:§3d§;
      
      public function §;"P§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §2"@§.movieClip.graphics.beginFill(0);
         §2"@§.movieClip.graphics.drawRect(0,0,4000,4000);
         §2"@§.movieClip.graphics.endFill();
         if(LevelManager.§ T§ != null)
         {
            §2"@§.setText(this.getLoadingText(),"TextField_LevelLoading");
         }
      }
      
      protected function getLoadingText() : String
      {
         return "Loading " + LevelManager.§`"Q§().writtenName + " - " + §!J§.§;6§(LevelManager.§ T§);
      }
      
      override protected function initLevelMain(param1:§0"T§) : void
      {
         super.initLevelMain(param1);
      }
      
      override protected function initLevelLoad() : void
      {
         (§?l§.§ "G§ as §%"S§).§96§.§<!J§ = false;
         (§?l§.§ "G§ as §%"S§).§96§.§<!J§ = true;
         if(this.§!"=§)
         {
            this.§!"=§.removeEventListener(Event.COMPLETE,this.§@t§);
            this.§!"=§ = null;
         }
         if(LevelManager.§ T§)
         {
            this.§+S§();
            this.§!"=§ = new §3d§();
            this.§!"=§.addEventListener(Event.COMPLETE,this.§@t§);
            this.§!"=§.addEventListener(IOErrorEvent.IO_ERROR,this.§;H§);
            this.§!"=§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;H§);
            this.§!"=§.addEventListener(§9G§.§33§,this.§;H§);
            this.§!"=§.load(§9!7§.§,!l§(AngryBirdsFP11.§?8§ + "/startlevel/" + LevelManager.§ T§));
            super.initLevelLoad();
            return;
         }
         §9"6§.§>_§();
         throw new Error("LevelManager.smCurrentLevel was null in initLevelLoad() in StateFacebookLevelLoad.");
      }
      
      private function §+S§() : void
      {
         if(this.§9"%§.§7"T§.§+!!§())
         {
            this.§9"%§.§7"T§.§&!§(LevelManager.§ T§,true);
         }
      }
      
      protected function §;H§(param1:Event) : void
      {
         if(param1.type == §9G§.§33§)
         {
            §9"6§.§>_§(§]!I§.§`'§);
         }
         else
         {
            §9"6§.§#!o§();
         }
         this.§!"=§ = null;
      }
      
      protected function §@t§(param1:Event) : void
      {
         §+"9§.§%?§ = this.§!"=§.data;
         this.§!"=§ = null;
      }
      
      override public function isReady() : Boolean
      {
         if(this.§!"=§)
         {
            return false;
         }
         return super.isReady();
      }
      
      override public function onLevelLoadReady() : void
      {
         super.onLevelLoadReady();
      }
      
      override public function onLevelLoadError() : void
      {
         super.onLevelLoadError();
         var _loc1_:String = "level-" + LevelManager.§ T§;
         §@q§.§<d§(_loc1_);
         §9"6§.§#!o§();
         (§?l§.§ "G§ as §%"S§).§%A§();
      }
      
      public function get §9"%§() : §+I§
      {
         return §%"S§.§!C§.§9"%§;
      }
   }
}

package §[!$§
{
   import §'8§.FacebookLevelManager;
   import §5=§.§9F§;
   import §7t§.StateLevelLoadClassic;
   import §;!1§.§9u§;
   import §;!1§.ErrorPopup;
   import §>!_§.LevelManager;
   import §>!_§.LevelModel;
   import §?!Y§.§`S§;
   import §^!7§.§+!I§;
   import §^!7§.RetryingURLLoaderErrorEvent;
   import §^!7§.§[!<§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §7I§ extends StateLevelLoadClassic
   {
       
      
      protected var §@!c§:§[!<§;
      
      public function §7I§(initState:Boolean = true, name:String = "LevelLoadStateClassic")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §`=§.movieClip.graphics.beginFill(0);
         §`=§.movieClip.graphics.drawRect(0,0,4000,4000);
         §`=§.movieClip.graphics.endFill();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(LevelManager.§1m§ != null)
         {
            §`=§.setText(this.§=+§(),"TextField_LevelLoading");
            trace("loadtext: " + this.§=+§());
         }
      }
      
      protected function §=+§() : String
      {
         return " - " + FacebookLevelManager.§5j§(LevelManager.§1m§);
      }
      
      override protected function initLevelMain(levelData:LevelModel) : void
      {
         super.initLevelMain(levelData);
      }
      
      override protected function initLevelLoad() : void
      {
         (§`S§.§=F§ as AngryBirdsUltraBook).§^!c§.§8!k§ = false;
         (§`S§.§=F§ as AngryBirdsUltraBook).§^!c§.§8!k§ = true;
         if(this.§@!c§)
         {
            this.§@!c§.removeEventListener(Event.COMPLETE,this.§3i§);
            this.§@!c§ = null;
         }
         if(LevelManager.§1m§)
         {
            this.§@!c§ = new §[!<§();
            this.§@!c§.addEventListener(Event.COMPLETE,this.§3i§);
            this.§@!c§.addEventListener(IOErrorEvent.IO_ERROR,this.§-N§);
            this.§@!c§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-N§);
            this.§@!c§.addEventListener(RetryingURLLoaderErrorEvent.§6!O§,this.§-N§);
            this.§@!c§.load(§+!I§.§[O§(AngryBirdsFP11.SERVER_ROOT + "/startlevel/" + LevelManager.§1m§));
            super.initLevelLoad();
            return;
         }
         §9u§.§4!L§();
         throw new Error("LevelManager.smCurrentLevel was null in initLevelLoad() in StateFacebookLevelLoad.");
      }
      
      protected function §-N§(e:Event) : void
      {
         if(e.type == RetryingURLLoaderErrorEvent.§6!O§)
         {
            §9u§.§4!L§(ErrorPopup.THIRD_PARTY_COOKIES_DISABLED_ERROR);
         }
         else
         {
            §9u§.§#"§();
         }
         this.§@!c§ = null;
      }
      
      protected function §3i§(e:Event) : void
      {
         StateFacebookPlay.sPlaySessionToken = this.§@!c§.data;
         this.§@!c§ = null;
      }
      
      override public function isReady() : Boolean
      {
         if(this.§@!c§)
         {
            return false;
         }
         return super.isReady();
      }
      
      override public function onLevelLoadError() : void
      {
         super.onLevelLoadError();
         var name:String = "level-" + LevelManager.§1m§;
         §9F§.§40§(name);
         §9u§.§#"§();
         (§`S§.§=F§ as AngryBirdsUltraBook).§1!$§();
      }
   }
}

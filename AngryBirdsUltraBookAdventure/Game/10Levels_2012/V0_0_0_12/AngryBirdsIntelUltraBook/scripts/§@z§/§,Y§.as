package §@z§
{
   import § D§.§]!B§;
   import §"L§.LevelManager;
   import §"L§.LevelModel;
   import §%!4§.ErrorPopup;
   import §%!4§.§]!e§;
   import §6!a§.§"!F§;
   import §6!a§.§>!K§;
   import §6!a§.RetryingURLLoaderErrorEvent;
   import §7p§.§+!N§;
   import §9r§.FacebookLevelManager;
   import §<!S§.StateLevelLoadClassic;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §,Y§ extends StateLevelLoadClassic
   {
       
      
      protected var §-G§:§>!K§;
      
      public function §,Y§(initState:Boolean = true, name:String = "LevelLoadStateClassic")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §5!M§.movieClip.graphics.beginFill(0);
         §5!M§.movieClip.graphics.drawRect(0,0,4000,4000);
         §5!M§.movieClip.graphics.endFill();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(LevelManager.§var§ != null)
         {
            §5!M§.setText(this.§0!b§(),"TextField_LevelLoading");
            trace("loadtext: " + this.§0!b§());
         }
      }
      
      protected function §0!b§() : String
      {
         return " - " + FacebookLevelManager.§%!P§(LevelManager.§var§);
      }
      
      override protected function initLevelMain(levelData:LevelModel) : void
      {
         super.initLevelMain(levelData);
      }
      
      override protected function initLevelLoad() : void
      {
         (§]!B§.§%h§ as AngryBirdsUltraBook).§56§.§5^§ = false;
         (§]!B§.§%h§ as AngryBirdsUltraBook).§56§.§5^§ = true;
         if(this.§-G§)
         {
            this.§-G§.removeEventListener(Event.COMPLETE,this.§7!K§);
            this.§-G§ = null;
         }
         if(LevelManager.§var§)
         {
            this.§-G§ = new §>!K§();
            this.§-G§.addEventListener(Event.COMPLETE,this.§7!K§);
            this.§-G§.addEventListener(IOErrorEvent.IO_ERROR,this.§+!G§);
            this.§-G§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+!G§);
            this.§-G§.addEventListener(RetryingURLLoaderErrorEvent.§3Y§,this.§+!G§);
            this.§-G§.load(§"!F§.§=i§(AngryBirdsFP11.SERVER_ROOT + "/startlevel/" + LevelManager.§var§));
            super.initLevelLoad();
            return;
         }
         §]!e§.§3!T§();
         throw new Error("LevelManager.smCurrentLevel was null in initLevelLoad() in StateFacebookLevelLoad.");
      }
      
      protected function §+!G§(e:Event) : void
      {
         if(e.type == RetryingURLLoaderErrorEvent.§3Y§)
         {
            §]!e§.§3!T§(ErrorPopup.THIRD_PARTY_COOKIES_DISABLED_ERROR);
         }
         else
         {
            §]!e§.§finally§();
         }
         this.§-G§ = null;
      }
      
      protected function §7!K§(e:Event) : void
      {
         StateFacebookPlay.sPlaySessionToken = this.§-G§.data;
         this.§-G§ = null;
      }
      
      override public function isReady() : Boolean
      {
         if(this.§-G§)
         {
            return false;
         }
         return super.isReady();
      }
      
      override public function onLevelLoadError() : void
      {
         super.onLevelLoadError();
         var name:String = "level-" + LevelManager.§var§;
         §+!N§.§4!-§(name);
         §]!e§.§finally§();
         (§]!B§.§%h§ as AngryBirdsUltraBook).§+k§();
      }
   }
}

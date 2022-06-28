package §#!2§
{
   import § $§.§-!Q§;
   import § $§.§1!6§;
   import § $§.RetryingURLLoaderErrorEvent;
   import §#!X§.LevelManager;
   import §#!X§.LevelModel;
   import §-!>§.§4!T§;
   import §9!!§.§85§;
   import §9c§.StateLevelLoadClassic;
   import §9v§.§4!c§;
   import §9v§.ErrorPopup;
   import §[g§.FacebookLevelManager;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §^!`§ extends StateLevelLoadClassic
   {
       
      
      protected var §2!`§:§1!6§;
      
      public function §^!`§(initState:Boolean = true, name:String = "LevelLoadStateClassic")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §^,§.movieClip.graphics.beginFill(0);
         §^,§.movieClip.graphics.drawRect(0,0,4000,4000);
         §^,§.movieClip.graphics.endFill();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(LevelManager.§!=§ != null)
         {
            §^,§.setText(this.§[!+§(),"TextField_LevelLoading");
            trace("loadtext: " + this.§[!+§());
         }
      }
      
      protected function §[!+§() : String
      {
         return " - " + FacebookLevelManager.§else§(LevelManager.§!=§);
      }
      
      override protected function initLevelMain(levelData:LevelModel) : void
      {
         super.initLevelMain(levelData);
      }
      
      override protected function initLevelLoad() : void
      {
         (§4!T§.§%!K§ as AngryBirdsUltraBook).§=s§.§`!4§ = false;
         (§4!T§.§%!K§ as AngryBirdsUltraBook).§=s§.§`!4§ = true;
         if(this.§2!`§)
         {
            this.§2!`§.removeEventListener(Event.COMPLETE,this.§5!J§);
            this.§2!`§ = null;
         }
         if(LevelManager.§!=§)
         {
            this.§2!`§ = new §1!6§();
            this.§2!`§.addEventListener(Event.COMPLETE,this.§5!J§);
            this.§2!`§.addEventListener(IOErrorEvent.IO_ERROR,this.§3!6§);
            this.§2!`§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§3!6§);
            this.§2!`§.addEventListener(RetryingURLLoaderErrorEvent.§9#§,this.§3!6§);
            this.§2!`§.load(§-!Q§.§<!%§(AngryBirdsFP11.SERVER_ROOT + "/startlevel/" + LevelManager.§!=§));
            super.initLevelLoad();
            return;
         }
         §4!c§.§?!U§();
         throw new Error("LevelManager.smCurrentLevel was null in initLevelLoad() in StateFacebookLevelLoad.");
      }
      
      protected function §3!6§(e:Event) : void
      {
         if(e.type == RetryingURLLoaderErrorEvent.§9#§)
         {
            §4!c§.§?!U§(ErrorPopup.THIRD_PARTY_COOKIES_DISABLED_ERROR);
         }
         else
         {
            §4!c§.§8B§();
         }
         this.§2!`§ = null;
      }
      
      protected function §5!J§(e:Event) : void
      {
         StateFacebookPlay.sPlaySessionToken = this.§2!`§.data;
         this.§2!`§ = null;
      }
      
      override public function isReady() : Boolean
      {
         if(this.§2!`§)
         {
            return false;
         }
         return super.isReady();
      }
      
      override public function onLevelLoadError() : void
      {
         super.onLevelLoadError();
         var name:String = "level-" + LevelManager.§!=§;
         §85§.§true §(name);
         §4!c§.§8B§();
         (§4!T§.§%!K§ as AngryBirdsUltraBook).§+m§();
      }
   }
}

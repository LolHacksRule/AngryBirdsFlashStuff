package §[!K§
{
   import §+I§.§9!%§;
   import §7N§.§43§;
   import §7N§.§]@§;
   import §9"%§.§"!n§;
   import §9"%§.§,!S§;
   import §9"%§.§4!J§;
   import §<!<§.§%!#§;
   import §[!z§.§!"=§;
   import §[!z§.§"5§;
   import §[!z§.LevelManager;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §["A§ extends §"c§
   {
       
      
      protected var §,! §:§,!S§;
      
      public function §["A§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"-§.movieClip.graphics.beginFill(0);
         §2"-§.movieClip.graphics.drawRect(0,0,4000,4000);
         §2"-§.movieClip.graphics.endFill();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(LevelManager.§[!<§ != null)
         {
            §2"-§.setText(this.getLoadingText(),"TextField_LevelLoading");
         }
      }
      
      protected function getLoadingText() : String
      {
         return "Loading " + LevelManager.§8!§().writtenName + " - " + §"5§.§3t§(LevelManager.§[!<§);
      }
      
      override protected function initLevelMain(param1:§!"=§) : void
      {
         super.initLevelMain(param1);
      }
      
      override protected function initLevelLoad() : void
      {
         (§9!%§.§ !W§ as § W§).§""B§.§0!o§ = false;
         (§9!%§.§ !W§ as § W§).§""B§.§0!o§ = true;
         if(this.§,! §)
         {
            this.§,! §.removeEventListener(Event.COMPLETE,this.§""7§);
            this.§,! § = null;
         }
         if(LevelManager.§[!<§)
         {
            this.§,! § = new §,!S§();
            this.§,! §.addEventListener(Event.COMPLETE,this.§""7§);
            this.§,! §.addEventListener(IOErrorEvent.IO_ERROR,this.§[",§);
            this.§,! §.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§[",§);
            this.§,! §.addEventListener(§"!n§.§"+§,this.§[",§);
            this.§,! §.load(§4!J§.§3j§(AngryBirdsFP11.§7!!§ + "/startlevel/" + LevelManager.§[!<§));
            super.initLevelLoad();
            return;
         }
         §43§.§ "6§();
         throw new Error("LevelManager.smCurrentLevel was null in initLevelLoad() in StateFacebookLevelLoad.");
      }
      
      protected function §[",§(param1:Event) : void
      {
         if(param1.type == §"!n§.§"+§)
         {
            §43§.§ "6§(§]@§.§76§);
         }
         else
         {
            §43§.§?!S§();
         }
         this.§,! § = null;
      }
      
      protected function §""7§(param1:Event) : void
      {
         §&j§.§="5§ = this.§,! §.data;
         this.§,! § = null;
      }
      
      override public function isReady() : Boolean
      {
         if(this.§,! §)
         {
            return false;
         }
         return super.isReady();
      }
      
      override public function onLevelLoadError() : void
      {
         super.onLevelLoadError();
         var _loc1_:String = "level-" + LevelManager.§[!<§;
         §%!#§.§2!l§(_loc1_);
         §43§.§?!S§();
         (§9!%§.§ !W§ as § W§).§%q§();
      }
   }
}

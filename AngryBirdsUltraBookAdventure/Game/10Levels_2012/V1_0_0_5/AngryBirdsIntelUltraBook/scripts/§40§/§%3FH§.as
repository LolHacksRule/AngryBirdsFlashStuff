package §40§
{
   import §0!N§.§=+§;
   import §0!N§.LevelManager;
   import §0X§.§'N§;
   import §4e§.§=!p§;
   import §9!5§.§#!c§;
   import §9!y§.§2v§;
   import §9!y§.§@M§;
   import §;!5§.§ v§;
   import §;!5§.§!e§;
   import §;!5§.§3!^§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import §true§.§ _§;
   
   public class §?H§ extends §#!c§
   {
       
      
      protected var §[!N§:§!e§;
      
      public function §?H§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §5!P§.movieClip.graphics.beginFill(0);
         §5!P§.movieClip.graphics.drawRect(0,0,4000,4000);
         §5!P§.movieClip.graphics.endFill();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(LevelManager.§4Y§ != null)
         {
            §5!P§.setText(this.§-u§(),"TextField_LevelLoading");
         }
      }
      
      protected function §-u§() : String
      {
         return " - " + §=!p§.§1!j§(LevelManager.§4Y§);
      }
      
      override protected function initLevelMain(param1:§=+§) : void
      {
         super.initLevelMain(param1);
      }
      
      override protected function initLevelLoad() : void
      {
         (§ _§.§1s§ as §@!9§).§6!H§.§default§ = false;
         (§ _§.§1s§ as §@!9§).§6!H§.§default§ = true;
         if(this.§[!N§)
         {
            this.§[!N§.removeEventListener(Event.COMPLETE,this.§3!R§);
            this.§[!N§ = null;
         }
         if(LevelManager.§4Y§)
         {
            this.§[!N§ = new §!e§();
            this.§[!N§.addEventListener(Event.COMPLETE,this.§3!R§);
            this.§[!N§.addEventListener(IOErrorEvent.IO_ERROR,this.§"b§);
            this.§[!N§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§"b§);
            this.§[!N§.addEventListener(§3!^§.§2_§,this.§"b§);
            this.§[!N§.load(§ v§.§<N§(AngryBirdsFP11.§8!`§ + "/startlevel/" + LevelManager.§4Y§));
            super.initLevelLoad();
            return;
         }
         §@M§.§!!g§();
         throw new Error("LevelManager.smCurrentLevel was null in initLevelLoad() in StateFacebookLevelLoad.");
      }
      
      protected function §"b§(param1:Event) : void
      {
         if(param1.type == §3!^§.§2_§)
         {
            §@M§.§!!g§(§2v§.§'1§);
         }
         else
         {
            §@M§.§-5§();
         }
         this.§[!N§ = null;
      }
      
      protected function §3!R§(param1:Event) : void
      {
         §-!,§.§[l§ = this.§[!N§.data;
         this.§[!N§ = null;
      }
      
      override public function isReady() : Boolean
      {
         if(this.§[!N§)
         {
            return false;
         }
         return super.isReady();
      }
      
      override public function onLevelLoadError() : void
      {
         super.onLevelLoadError();
         var _loc1_:String = "level-" + LevelManager.§4Y§;
         §'N§.§`!]§(_loc1_);
         §@M§.§-5§();
         (§ _§.§1s§ as §@!9§).§@5§();
      }
   }
}

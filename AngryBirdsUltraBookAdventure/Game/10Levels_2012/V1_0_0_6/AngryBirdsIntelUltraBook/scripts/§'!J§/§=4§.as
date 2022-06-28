package §'!J§
{
   import §'!Q§.§ §;
   import §3!G§.§ y§;
   import §3!G§.LevelManager;
   import §7X§.§!!5§;
   import §7X§.§+!p§;
   import §7X§.§7^§;
   import §;H§.§;W§;
   import §>! §.§^!c§;
   import §?N§.§!!m§;
   import §?N§.§]!e§;
   import §]+§.§@!J§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §=4§ extends §;W§
   {
       
      
      protected var §>1§:§7^§;
      
      public function §=4§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §&!m§.movieClip.graphics.beginFill(0);
         §&!m§.movieClip.graphics.drawRect(0,0,4000,4000);
         §&!m§.movieClip.graphics.endFill();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(LevelManager.§%n§ != null)
         {
            §&!m§.setText(this.§const§(),"TextField_LevelLoading");
         }
      }
      
      protected function §const§() : String
      {
         return " - " + § §.§'!X§(LevelManager.§%n§);
      }
      
      override protected function initLevelMain(param1:§ y§) : void
      {
         super.initLevelMain(param1);
      }
      
      override protected function initLevelLoad() : void
      {
         (§^!c§.§2!w§ as §[!P§).§99§.§&§ = false;
         (§^!c§.§2!w§ as §[!P§).§99§.§&§ = true;
         if(this.§>1§)
         {
            this.§>1§.removeEventListener(Event.COMPLETE,this.§=!r§);
            this.§>1§ = null;
         }
         if(LevelManager.§%n§)
         {
            this.§>1§ = new §7^§();
            this.§>1§.addEventListener(Event.COMPLETE,this.§=!r§);
            this.§>1§.addEventListener(IOErrorEvent.IO_ERROR,this.§&h§);
            this.§>1§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&h§);
            this.§>1§.addEventListener(§!!5§.§[!§,this.§&h§);
            this.§>1§.load(§+!p§.§`;§(AngryBirdsFP11.§;!1§ + "/startlevel/" + LevelManager.§%n§));
            super.initLevelLoad();
            return;
         }
         §]!e§.§>k§();
         throw new Error("LevelManager.smCurrentLevel was null in initLevelLoad() in StateFacebookLevelLoad.");
      }
      
      protected function §&h§(param1:Event) : void
      {
         if(param1.type == §!!5§.§[!§)
         {
            §]!e§.§>k§(§!!m§.§[!x§);
         }
         else
         {
            §]!e§.§-!1§();
         }
         this.§>1§ = null;
      }
      
      protected function §=!r§(param1:Event) : void
      {
         §-!d§.§6![§ = this.§>1§.data;
         this.§>1§ = null;
      }
      
      override public function isReady() : Boolean
      {
         if(this.§>1§)
         {
            return false;
         }
         return super.isReady();
      }
      
      override public function onLevelLoadError() : void
      {
         super.onLevelLoadError();
         var _loc1_:String = "level-" + LevelManager.§%n§;
         §@!J§.§4t§(_loc1_);
         §]!e§.§-!1§();
         (§^!c§.§2!w§ as §[!P§).§=!g§();
      }
   }
}

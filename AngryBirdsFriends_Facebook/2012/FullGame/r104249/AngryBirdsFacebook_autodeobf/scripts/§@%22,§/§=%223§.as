package §@",§
{
   import §%!'§.§"!e§;
   import §&!"§.§5"§;
   import §&!"§.§`B§;
   import §5!G§.§&2§;
   import §[!-§.§9!S§;
   import §[!-§.§="B§;
   import §[!-§.§?x§;
   import §`!n§.§#!s§;
   import §`!n§.§-[§;
   import §`!n§.LevelManager;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §="3§ extends §'!N§
   {
       
      
      protected var §-2§:§9!S§;
      
      public function §="3§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
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
         §2!K§.movieClip.graphics.beginFill(0);
         §2!K§.movieClip.graphics.drawRect(0,0,4000,4000);
         §2!K§.movieClip.graphics.endFill();
         if(LevelManager.§`-§ != null)
         {
            §2!K§.setText(this.getLoadingText(),"TextField_LevelLoading");
         }
      }
      
      protected function getLoadingText() : String
      {
         return "Loading " + LevelManager.§6!6§().writtenName + " - " + §-[§.§8"4§(LevelManager.§`-§);
      }
      
      override protected function initLevelMain(param1:§#!s§) : void
      {
         super.initLevelMain(param1);
      }
      
      override protected function initLevelLoad() : void
      {
         (§&2§.§5!k§ as §,"I§).§=_§.§3_§ = false;
         (§&2§.§5!k§ as §,"I§).§=_§.§3_§ = true;
         if(this.§-2§)
         {
            this.§-2§.removeEventListener(Event.COMPLETE,this.§!!N§);
            this.§-2§ = null;
         }
         if(LevelManager.§`-§)
         {
            this.§-2§ = new §9!S§();
            this.§-2§.addEventListener(Event.COMPLETE,this.§!!N§);
            this.§-2§.addEventListener(IOErrorEvent.IO_ERROR,this.§ !F§);
            this.§-2§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§ !F§);
            this.§-2§.addEventListener(§="B§.§2"B§,this.§ !F§);
            this.§-2§.load(§?x§.§>t§(AngryBirdsFP11.§#"@§ + "/startlevel/" + LevelManager.§`-§));
            super.initLevelLoad();
            return;
         }
         §`B§.§#!i§();
         throw new Error("LevelManager.smCurrentLevel was null in initLevelLoad() in StateFacebookLevelLoad.");
      }
      
      protected function § !F§(param1:Event) : void
      {
         if(param1.type == §="B§.§2"B§)
         {
            §`B§.§#!i§(§5"§.§;s§);
         }
         else
         {
            §`B§.§-!§();
         }
         this.§-2§ = null;
      }
      
      protected function §!!N§(param1:Event) : void
      {
         §-!V§.§#E§ = this.§-2§.data;
         this.§-2§ = null;
      }
      
      override public function isReady() : Boolean
      {
         if(this.§-2§)
         {
            return false;
         }
         return super.isReady();
      }
      
      override public function onLevelLoadError() : void
      {
         super.onLevelLoadError();
         var _loc1_:String = "level-" + LevelManager.§`-§;
         §"!e§.§2"8§(_loc1_);
         §`B§.§-!§();
         (§&2§.§5!k§ as §,"I§).§ "@§();
      }
   }
}

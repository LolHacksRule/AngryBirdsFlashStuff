package §7"@§
{
   import § "C§.§+!D§;
   import § "C§.§-!l§;
   import § "C§.§0]§;
   import §#!e§.§ <§;
   import §#!e§.§1"B§;
   import §#!e§.LevelManager;
   import §'!s§.§%?§;
   import §'!s§.§-d§;
   import §<a§.§+!B§;
   import §]!A§.;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §?!3§ extends §!!7§
   {
       
      
      protected var §'n§:§0]§;
      
      public function §?!3§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
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
         §6w§.movieClip.graphics.beginFill(0);
         §6w§.movieClip.graphics.drawRect(0,0,4000,4000);
         §6w§.movieClip.graphics.endFill();
         if(LevelManager.§'!O§ != null)
         {
            §6w§.setText(this.getLoadingText(),"TextField_LevelLoading");
         }
      }
      
      protected function getLoadingText() : String
      {
         return "Loading " + LevelManager.§9"D§().writtenName + " - " + § <§.§2!V§(LevelManager.§'!O§);
      }
      
      override protected function initLevelMain(param1:§1"B§) : void
      {
         super.initLevelMain(param1);
      }
      
      override protected function initLevelLoad() : void
      {
         (§#6§.§ q§ as §3T§).§9!Q§.§`W§ = false;
         (§#6§.§ q§ as §3T§).§9!Q§.§`W§ = true;
         if(this.§'n§)
         {
            this.§'n§.removeEventListener(Event.COMPLETE,this.§]"2§);
            this.§'n§ = null;
         }
         if(LevelManager.§'!O§)
         {
            this.§'n§ = new §0]§();
            this.§'n§.addEventListener(Event.COMPLETE,this.§]"2§);
            this.§'n§.addEventListener(IOErrorEvent.IO_ERROR,this.§8_§);
            this.§'n§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§8_§);
            this.§'n§.addEventListener(§+!D§.§25§,this.§8_§);
            this.§'n§.load(§-!l§.§%""§(AngryBirdsFP11.§76§ + "/startlevel/" + LevelManager.§'!O§));
            super.initLevelLoad();
            return;
         }
         §%?§.§6!7§();
         throw new Error("LevelManager.smCurrentLevel was null in initLevelLoad() in StateFacebookLevelLoad.");
      }
      
      protected function §8_§(param1:Event) : void
      {
         if(param1.type == §+!D§.§25§)
         {
            §%?§.§6!7§(§-d§.§]x§);
         }
         else
         {
            §%?§.§4!>§();
         }
         this.§'n§ = null;
      }
      
      protected function §]"2§(param1:Event) : void
      {
         §2!e§.§#!W§ = this.§'n§.data;
         this.§'n§ = null;
      }
      
      override public function isReady() : Boolean
      {
         if(this.§'n§)
         {
            return false;
         }
         return super.isReady();
      }
      
      override public function onLevelLoadError() : void
      {
         super.onLevelLoadError();
         var _loc1_:String = "level-" + LevelManager.§'!O§;
         §+!B§.§ P§(_loc1_);
         §%?§.§4!>§();
         (§#6§.§ q§ as §3T§).§'w§();
      }
   }
}

package §`!#§
{
   import §"!i§.§"!'§;
   import §"!i§.LevelManager;
   import §+!f§.§@!c§;
   import §-^§.§4-§;
   import §-^§.§45§;
   import §-^§.§7!6§;
   import §2!U§.§3!;§;
   import §;!y§.§,!s§;
   import §<-§.§!!K§;
   import §^!m§.§4!i§;
   import §^!m§.§;0§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §+9§ extends §3!;§
   {
       
      
      protected var §'[§:§45§;
      
      public function §+9§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §'!Q§.movieClip.graphics.beginFill(0);
         §'!Q§.movieClip.graphics.drawRect(0,0,4000,4000);
         §'!Q§.movieClip.graphics.endFill();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(LevelManager.§"L§ != null)
         {
            §'!Q§.setText(this.§3!0§(),"TextField_LevelLoading");
         }
      }
      
      protected function §3!0§() : String
      {
         return " - " + §@!c§.§<!N§(LevelManager.§"L§);
      }
      
      override protected function initLevelMain(param1:§"!'§) : void
      {
         super.initLevelMain(param1);
      }
      
      override protected function initLevelLoad() : void
      {
         (§,!s§.§]!J§ as §<t§).§`X§.§!r§ = false;
         (§,!s§.§]!J§ as §<t§).§`X§.§!r§ = true;
         if(this.§'[§)
         {
            this.§'[§.removeEventListener(Event.COMPLETE,this.§0j§);
            this.§'[§ = null;
         }
         if(LevelManager.§"L§)
         {
            this.§'[§ = new §45§();
            this.§'[§.addEventListener(Event.COMPLETE,this.§0j§);
            this.§'[§.addEventListener(IOErrorEvent.IO_ERROR,this.§6!S§);
            this.§'[§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§6!S§);
            this.§'[§.addEventListener(§4-§.§4!m§,this.§6!S§);
            this.§'[§.load(§7!6§.§7V§(AngryBirdsFP11.§[!S§ + "/startlevel/" + LevelManager.§"L§));
            super.initLevelLoad();
            return;
         }
         §4!i§.§>t§();
         throw new Error("LevelManager.smCurrentLevel was null in initLevelLoad() in StateFacebookLevelLoad.");
      }
      
      protected function §6!S§(param1:Event) : void
      {
         if(param1.type == §4-§.§4!m§)
         {
            §4!i§.§>t§(§;0§.§-!W§);
         }
         else
         {
            §4!i§.§^!P§();
         }
         this.§'[§ = null;
      }
      
      protected function §0j§(param1:Event) : void
      {
         §>!4§.§`!e§ = this.§'[§.data;
         this.§'[§ = null;
      }
      
      override public function isReady() : Boolean
      {
         if(this.§'[§)
         {
            return false;
         }
         return super.isReady();
      }
      
      override public function onLevelLoadError() : void
      {
         super.onLevelLoadError();
         var _loc1_:String = "level-" + LevelManager.§"L§;
         §!!K§.§<J§(_loc1_);
         §4!i§.§^!P§();
         (§,!s§.§]!J§ as §<t§).§6"!§();
      }
   }
}

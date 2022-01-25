package §3j§
{
   import § true§.§0O§;
   import §#[§.§@"§;
   import §%m§.§'5§;
   import §'!N§.§8!C§;
   import §'!N§.§9!;§;
   import §'!`§.§for§;
   import §-!F§.§2[§;
   import §-!F§.§`+§;
   import §0@§.Sprite;
   import §4!,§.§+f§;
   import §55§.§"!P§;
   import §55§.§>![§;
   import §5e§.§5B§;
   import §7! §.§1!I§;
   import §7! §.§4n§;
   import §7! §.§6X§;
   import §7! §.§@L§;
   import §9!C§.§,!j§;
   import §<!M§.§4!+§;
   import §@!M§.§use §;
   import §]w§.§1z§;
   import flash.display.Stage;
   
   public class §[8§ extends §>![§
   {
       
      
      private var §!2§:Stage;
      
      private var §"!U§:§1z§;
      
      private var §,T§:Array;
      
      public function §[8§(param1:Stage)
      {
         this.§!2§ = param1;
         super(param1);
         super.§7!o§.simulateMultitouch = true;
      }
      
      public function §3!g§() : Array
      {
         if(this.§,T§)
         {
            return this.§,T§.concat();
         }
         return null;
      }
      
      public function §+!^§() : int
      {
         if(this.§,T§)
         {
            return this.§,T§.length;
         }
         return 0;
      }
      
      public function §@!d§(param1:String) : Boolean
      {
         if(!this.§,T§)
         {
            return false;
         }
         return this.§,T§.indexOf(param1) >= 0;
      }
      
      public function §,D§(param1:String) : void
      {
         if(!this.§,T§)
         {
            this.§,T§ = [];
         }
         this.§,T§.push(param1);
      }
      
      override public function init(param1:§`+§) : void
      {
         super.init(param1);
         this.§,T§ = [];
         this.§"!U§ = new §1z§();
      }
      
      override protected function initLevelCamera(param1:§`+§) : §+f§
      {
         return new §4!+§(this,param1);
      }
      
      override public function setController(param1:§9!;§) : void
      {
         super.setController(param1);
         if(param1 is §8!C§)
         {
            this.§"!U§.setController(param1 as §8!C§);
         }
      }
      
      override public function clearLevel() : void
      {
         super.clearLevel();
         if(this.§"!U§)
         {
            this.§"!U§.dispose();
            this.§"!U§ = null;
         }
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         this.§"!U§.run(param1);
         return super.updateWithTime(param1,param2,param3,param4);
      }
      
      override public function handleEngineUpdateStep(param1:Number) : void
      {
         super.handleEngineUpdateStep(param1);
         this.§"!U§.§+w§(param1);
      }
      
      override protected function initReplay() : void
      {
         §^x§ = new §'5§(§2[§.§^N§);
      }
      
      override protected function loadPreviousReplayData() : void
      {
         if(§'!V§)
         {
            §-!n§ = §'5§.initialize(§'!V§);
            §-!n§.speed = 1;
            §-!n§.play();
            §['§ = -1000;
            §'!V§ = null;
         }
      }
      
      override protected function initLevelSlingshot(param1:§`+§) : §"!P§
      {
         return new §;9§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§`+§) : §for§
      {
         return new §use §(this,param1,new Sprite());
      }
      
      override protected function initParticleManager(param1:§6X§, param2:§4n§) : §,!j§
      {
         return new §5B§(param1,param2);
      }
      
      override protected function initAnimationManager(param1:§4n§) : §6X§
      {
         return new §@L§(param1);
      }
      
      override protected function initialize(param1:§`+§) : void
      {
         super.initialize(param1);
      }
      
      override protected function preProcessLevel() : §`+§
      {
         return §!J§;
      }
      
      override protected function initThemeGraphicsManager() : §1!I§
      {
         return new §1!I§(this.§!2§.loaderInfo.parameters.assetsUrl || "",this.§!2§.loaderInfo.parameters.buildNumber || "",true,3);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§4n§, param4:Number) : §0O§
      {
         return new §@"§(param1,param2,param3,param4);
      }
      
      override public function get backgroundTextureManager() : §4n§
      {
         if(§2!J§)
         {
            return §2!J§.textureManager;
         }
         return null;
      }
      
      public function get §2Y§() : §1z§
      {
         return this.§"!U§;
      }
   }
}

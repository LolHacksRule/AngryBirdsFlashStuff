package §^!I§
{
   import § !J§.§%M§;
   import § !J§.§`+§;
   import §+P§.§,z§;
   import §,4§.§0B§;
   import §,4§.§;_§;
   import §-R§.;
   import §-h§.§ use§;
   import §-h§.§4!H§;
   import §2S§.§'!@§;
   import §4j§.§0K§;
   import §5!?§.§+!A§;
   import §5U§.§@9§;
   import §9`§.§"!5§;
   import §9`§.§#U§;
   import §9`§.§'[§;
   import §9`§.§3f§;
   import §?!d§.§-E§;
   import §@!8§.§-!e§;
   import §@l§.§6!3§;
   import §[!B§.§7!N§;
   import §`!n§.Sprite;
   import flash.display.Stage;
   
   public class §"r§ extends §%M§
   {
       
      
      private var §]4§:Stage;
      
      private var §>B§:§'!@§;
      
      private var §`!i§:Array;
      
      public function §"r§(param1:Stage)
      {
         this.§]4§ = param1;
         super(param1);
         super.§!!^§.simulateMultitouch = true;
      }
      
      public function §;H§() : Array
      {
         if(this.§`!i§)
         {
            return this.§`!i§.concat();
         }
         return null;
      }
      
      public function §6#§() : int
      {
         if(this.§`!i§)
         {
            return this.§`!i§.length;
         }
         return 0;
      }
      
      public function § !6§(param1:String) : Boolean
      {
         if(!this.§`!i§)
         {
            return false;
         }
         return this.§`!i§.indexOf(param1) >= 0;
      }
      
      public function §[!c§(param1:String) : void
      {
         if(!this.§`!i§)
         {
            this.§`!i§ = [];
         }
         this.§`!i§.push(param1);
      }
      
      override public function init(param1:§0B§) : void
      {
         super.init(param1);
         this.§`!i§ = [];
         this.§>B§ = new §'!@§();
      }
      
      override protected function initLevelCamera(param1:§0B§) : §-E§
      {
         return new §+!A§(this,param1);
      }
      
      override public function setController(param1:§4!H§) : void
      {
         super.setController(param1);
         if(param1 is § use§)
         {
            this.§>B§.setController(param1 as § use§);
         }
      }
      
      override public function clearLevel() : void
      {
         super.clearLevel();
         if(this.§>B§)
         {
            this.§>B§.dispose();
            this.§>B§ = null;
         }
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         this.§>B§.run(param1);
         return super.updateWithTime(param1,param2,param3,param4);
      }
      
      override public function handleEngineUpdateStep(param1:Number) : void
      {
         super.handleEngineUpdateStep(param1);
         this.§>B§.§7!n§(param1);
      }
      
      override protected function initReplay() : void
      {
         §@!§ = new §6!3§(§;_§.§2!Q§);
      }
      
      override protected function loadPreviousReplayData() : void
      {
         if(§^!8§)
         {
            §^!c§ = §6!3§.initialize(§^!8§);
            §^!c§.speed = 1;
            §^!c§.play();
            §%d§ = -1000;
            §^!8§ = null;
         }
      }
      
      override protected function initLevelSlingshot(param1:§0B§) : §`+§
      {
         return new §6!%§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§0B§) : §0K§
      {
         return new §@9§(this,param1,new Sprite());
      }
      
      override protected function initParticleManager(param1:§3f§, param2:§#U§) : §7!N§
      {
         return new §-!e§(param1,param2);
      }
      
      override protected function initAnimationManager(param1:§#U§) : §3f§
      {
         return new §'[§(param1);
      }
      
      override protected function initialize(param1:§0B§) : void
      {
         super.initialize(param1);
      }
      
      override protected function preProcessLevel() : §0B§
      {
         return §]s§;
      }
      
      override protected function initThemeGraphicsManager() : §"!5§
      {
         return new §"!5§(this.§]4§.loaderInfo.parameters.assetsUrl || "",this.§]4§.loaderInfo.parameters.buildNumber || "",true,3);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§#U§, param4:Number) : §#4§
      {
         return new §,z§(param1,param2,param3,param4);
      }
      
      override public function get backgroundTextureManager() : §#U§
      {
         if(§&!c§)
         {
            return §&!c§.textureManager;
         }
         return null;
      }
      
      public function get §36§() : §'!@§
      {
         return this.§>B§;
      }
   }
}

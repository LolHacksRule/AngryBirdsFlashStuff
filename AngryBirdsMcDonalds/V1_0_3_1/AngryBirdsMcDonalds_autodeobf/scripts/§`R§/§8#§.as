package §`R§
{
   import § !%§.§!!&§;
   import § !%§.§7!>§;
   import § !%§.§=!0§;
   import § !%§.§`!F§;
   import §&c§.Sprite;
   import §0!8§.§1U§;
   import §2G§.§;!j§;
   import §3!@§.§ s§;
   import §3!@§.§49§;
   import §4!%§.§`!I§;
   import §83§.§7!G§;
   import §=!a§.§0!M§;
   import §?!§.§>!4§;
   import §?!P§.§4!-§;
   import §?7§.§=!,§;
   import §[!L§.§#!`§;
   import §[!L§.§^j§;
   import §]o§.§8I§;
   import §^U§.§3$§;
   import §finally§.§8k§;
   import §finally§.§@z§;
   import flash.display.Stage;
   
   public class §8#§ extends § s§
   {
       
      
      private var §=n§:Stage;
      
      private var §],§:§=!,§;
      
      private var §95§:Array;
      
      public function §8#§(param1:Stage)
      {
         this.§=n§ = param1;
         super(param1);
         super.§%"§.simulateMultitouch = true;
      }
      
      public function §^^§() : Array
      {
         if(this.§95§)
         {
            return this.§95§.concat();
         }
         return null;
      }
      
      public function §@!D§() : int
      {
         if(this.§95§)
         {
            return this.§95§.length;
         }
         return 0;
      }
      
      public function §3i§(param1:String) : Boolean
      {
         if(!this.§95§)
         {
            return false;
         }
         return this.§95§.indexOf(param1) >= 0;
      }
      
      public function §1![§(param1:String) : void
      {
         if(!this.§95§)
         {
            this.§95§ = [];
         }
         this.§95§.push(param1);
      }
      
      override public function init(param1:§@z§) : void
      {
         super.init(param1);
         this.§95§ = [];
         this.§],§ = new §=!,§();
      }
      
      override protected function initLevelCamera(param1:§@z§) : §3$§
      {
         return new §7!G§(this,param1);
      }
      
      override public function setController(param1:§^j§) : void
      {
         super.setController(param1);
         if(param1 is §#!`§)
         {
            this.§],§.setController(param1 as §#!`§);
         }
      }
      
      override public function clearLevel() : void
      {
         super.clearLevel();
         if(this.§],§)
         {
            this.§],§.dispose();
            this.§],§ = null;
         }
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         this.§],§.run(param1);
         return super.updateWithTime(param1,param2,param3,param4);
      }
      
      override public function handleEngineUpdateStep(param1:Number) : void
      {
         super.handleEngineUpdateStep(param1);
         this.§],§.§!u§(param1);
      }
      
      override protected function initReplay() : void
      {
         §=h§ = new §`!I§(§8k§.§8h§);
      }
      
      override protected function loadPreviousReplayData() : void
      {
         if(§=! §)
         {
            §,s§ = §`!I§.initialize(§=! §);
            §,s§.speed = 1;
            §,s§.play();
            §<!3§ = -1000;
            §=! § = null;
         }
      }
      
      override protected function initLevelSlingshot(param1:§@z§) : §49§
      {
         return new §^!,§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§@z§) : §>!4§
      {
         return new §;!j§(this,param1,new Sprite());
      }
      
      override protected function initParticleManager(param1:§!!&§, param2:§7!>§) : §4!-§
      {
         return new §0!M§(param1,param2);
      }
      
      override protected function initAnimationManager(param1:§7!>§) : §!!&§
      {
         return new §=!0§(param1);
      }
      
      override protected function initialize(param1:§@z§) : void
      {
         super.initialize(param1);
      }
      
      override protected function preProcessLevel() : §@z§
      {
         return §<!$§;
      }
      
      override protected function initThemeGraphicsManager() : §`!F§
      {
         return new §`!F§(this.§=n§.loaderInfo.parameters.assetsUrl || "",this.§=n§.loaderInfo.parameters.buildNumber || "",true,3);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§7!>§, param4:Number) : §8I§
      {
         return new §1U§(param1,param2,param3,param4);
      }
      
      override public function get backgroundTextureManager() : §7!>§
      {
         if(§1!S§)
         {
            return §1!S§.textureManager;
         }
         return null;
      }
      
      public function get §0S§() : §=!,§
      {
         return this.§],§;
      }
   }
}

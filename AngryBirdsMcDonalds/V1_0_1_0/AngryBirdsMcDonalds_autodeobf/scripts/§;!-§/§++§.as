package §;!-§
{
   import §!!g§.§8d§;
   import §&!K§.§3b§;
   import §&[§.§&!m§;
   import §&[§.§0!I§;
   import §&[§.§2K§;
   import §&[§.§]!4§;
   import §2!L§.§@!=§;
   import §2!g§.Sprite;
   import §5!!§.§0@§;
   import §5!G§.§8+§;
   import §5!o§.§0!V§;
   import §8!P§.§;!5§;
   import §<s§.§=;§;
   import §?!W§.§1'§;
   import §?;§.§ !8§;
   import §?;§.§?!]§;
   import §@!b§.§%!'§;
   import §@!b§.§@!k§;
   import §`!d§.§0%§;
   import §`!d§.§7!§;
   import flash.display.Stage;
   import §throw§.§"r§;
   
   public class §++§ extends §@!k§
   {
       
      
      private var §&!M§:Stage;
      
      private var §1!>§:§;!5§;
      
      private var §6!%§:Array;
      
      public function §++§(param1:Stage)
      {
         this.§&!M§ = param1;
         super(param1);
         super.§><§.simulateMultitouch = true;
      }
      
      public function §=!7§() : Array
      {
         if(this.§6!%§)
         {
            return this.§6!%§.concat();
         }
         return null;
      }
      
      public function § !S§() : int
      {
         if(this.§6!%§)
         {
            return this.§6!%§.length;
         }
         return 0;
      }
      
      public function §%!V§(param1:String) : Boolean
      {
         if(!this.§6!%§)
         {
            return false;
         }
         return this.§6!%§.indexOf(param1) >= 0;
      }
      
      public function §9H§(param1:String) : void
      {
         if(!this.§6!%§)
         {
            this.§6!%§ = [];
         }
         this.§6!%§.push(param1);
      }
      
      override public function init(param1:§0%§) : void
      {
         super.init(param1);
         this.§6!%§ = [];
         this.§1!>§ = new §;!5§();
      }
      
      override protected function initLevelCamera(param1:§0%§) : §8d§
      {
         return new §1'§(this,param1);
      }
      
      override public function setController(param1:§?!]§) : void
      {
         super.setController(param1);
         if(param1 is § !8§)
         {
            this.§1!>§.setController(param1 as § !8§);
         }
      }
      
      override public function clearLevel() : void
      {
         super.clearLevel();
         if(this.§1!>§)
         {
            this.§1!>§.dispose();
            this.§1!>§ = null;
         }
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         this.§1!>§.run(param1);
         return super.updateWithTime(param1,param2,param3,param4);
      }
      
      override public function handleEngineUpdateStep(param1:Number) : void
      {
         super.handleEngineUpdateStep(param1);
         this.§1!>§.§!E§(param1);
      }
      
      override protected function initReplay() : void
      {
         §]&§ = new §=;§(§7!§.§+e§);
      }
      
      override protected function loadPreviousReplayData() : void
      {
         if(§+!+§)
         {
            §#E§ = §=;§.initialize(§+!+§);
            §#E§.speed = 1;
            §#E§.play();
            §+D§ = -1000;
            §+!+§ = null;
         }
      }
      
      override protected function initLevelSlingshot(param1:§0%§) : §%!'§
      {
         return new §#Y§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§0%§) : §8+§
      {
         return new §0!V§(this,param1,new Sprite());
      }
      
      override protected function initParticleManager(param1:§0!I§, param2:§&!m§) : §3b§
      {
         return new §@!=§(param1,param2);
      }
      
      override protected function initAnimationManager(param1:§&!m§) : §0!I§
      {
         return new §]!4§(param1);
      }
      
      override protected function initialize(param1:§0%§) : void
      {
         super.initialize(param1);
      }
      
      override protected function preProcessLevel() : §0%§
      {
         return §[L§;
      }
      
      override protected function initThemeGraphicsManager() : §2K§
      {
         return new §2K§(this.§&!M§.loaderInfo.parameters.assetsUrl || "",this.§&!M§.loaderInfo.parameters.buildNumber || "",true,3);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§&!m§, param4:Number) : §0@§
      {
         return new §"r§(param1,param2,param3,param4);
      }
      
      override public function get backgroundTextureManager() : §&!m§
      {
         if(§4!l§)
         {
            return §4!l§.textureManager;
         }
         return null;
      }
      
      public function get §2%§() : §;!5§
      {
         return this.§1!>§;
      }
   }
}

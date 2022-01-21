package §"2§
{
   import §"!g§.§2Z§;
   import §"!g§.§`!B§;
   import §#!G§.§?k§;
   import §&!!§.§2X§;
   import §&!!§.§2^§;
   import §&!!§.§5a§;
   import §&!!§.§<!'§;
   import §2![§.Sprite;
   import §4%§.§+;§;
   import §5!L§.§?8§;
   import §7!>§.§"!B§;
   import §7_§.§]![§;
   import §7_§.§^d§;
   import §8!§.§'F§;
   import §<!B§.§-4§;
   import §<L§.§!!G§;
   import §<L§.§7!4§;
   import §?Z§.§"?§;
   import §@!^§.§?!=§;
   import §[!V§.§]J§;
   import §[!_§.§8U§;
   import flash.display.Stage;
   
   public class §9-§ extends §!!G§
   {
       
      
      private var §]n§:Stage;
      
      private var §<1§:§"!B§;
      
      private var §]-§:Array;
      
      public function §9-§(param1:Stage)
      {
         this.§]n§ = param1;
         super(param1);
         super.§7!+§.simulateMultitouch = true;
      }
      
      public function §0!!§() : Array
      {
         if(this.§]-§)
         {
            return this.§]-§.concat();
         }
         return null;
      }
      
      public function §8"§() : int
      {
         if(this.§]-§)
         {
            return this.§]-§.length;
         }
         return 0;
      }
      
      public function §[5§(param1:String) : Boolean
      {
         if(!this.§]-§)
         {
            return false;
         }
         return this.§]-§.indexOf(param1) >= 0;
      }
      
      public function §,<§(param1:String) : void
      {
         if(!this.§]-§)
         {
            this.§]-§ = [];
         }
         this.§]-§.push(param1);
      }
      
      override public function init(param1:§]![§) : void
      {
         super.init(param1);
         this.§]-§ = [];
         this.§<1§ = new §"!B§();
      }
      
      override protected function initLevelCamera(param1:§]![§) : §8U§
      {
         return new §-4§(this,param1);
      }
      
      override public function setController(param1:§2Z§) : void
      {
         super.setController(param1);
         if(param1 is §`!B§)
         {
            this.§<1§.setController(param1 as §`!B§);
         }
      }
      
      override public function clearLevel() : void
      {
         super.clearLevel();
         if(this.§<1§)
         {
            this.§<1§.dispose();
            this.§<1§ = null;
         }
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         this.§<1§.run(param1);
         return super.updateWithTime(param1,param2,param3,param4);
      }
      
      override public function handleEngineUpdateStep(param1:Number) : void
      {
         super.handleEngineUpdateStep(param1);
         this.§<1§.§]!=§(param1);
      }
      
      override protected function initReplay() : void
      {
         §3!§ = new §+;§(§^d§.§@P§);
      }
      
      override protected function loadPreviousReplayData() : void
      {
         if(§=!T§)
         {
            §0X§ = §+;§.initialize(§=!T§);
            §0X§.speed = 1;
            §0X§.play();
            §'!H§ = -1000;
            §=!T§ = null;
         }
      }
      
      override protected function initLevelSlingshot(param1:§]![§) : §7!4§
      {
         return new §>!G§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§]![§) : §?8§
      {
         return new §]J§(this,param1,new Sprite());
      }
      
      override protected function initParticleManager(param1:§2^§, param2:§<!'§) : §'F§
      {
         return new §"?§(param1,param2);
      }
      
      override protected function initAnimationManager(param1:§<!'§) : §2^§
      {
         return new §2X§(param1);
      }
      
      override protected function initialize(param1:§]![§) : void
      {
         super.initialize(param1);
      }
      
      override protected function preProcessLevel() : §]![§
      {
         return §&!=§;
      }
      
      override protected function initThemeGraphicsManager() : §5a§
      {
         return new §5a§(this.§]n§.loaderInfo.parameters.assetsUrl || "",this.§]n§.loaderInfo.parameters.buildNumber || "",true,3);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§<!'§, param4:Number) : §?k§
      {
         return new §?!=§(param1,param2,param3,param4);
      }
      
      override public function get backgroundTextureManager() : §<!'§
      {
         if(§>!A§)
         {
            return §>!A§.textureManager;
         }
         return null;
      }
      
      public function get §?Q§() : §"!B§
      {
         return this.§<1§;
      }
   }
}

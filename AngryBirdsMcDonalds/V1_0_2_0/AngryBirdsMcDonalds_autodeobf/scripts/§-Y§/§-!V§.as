package §-Y§
{
   import §!!N§.§76§;
   import §%`§.§,!k§;
   import §'a§.§0!f§;
   import §'a§.§0U§;
   import §+-§.§,K§;
   import §+-§.§3!5§;
   import §1!U§.§6R§;
   import §2!`§.§3F§;
   import §5!l§.§ !D§;
   import §5!l§.§ !e§;
   import §5!l§.§!,§;
   import §5!l§.§>N§;
   import §5x§.Sprite;
   import §6!X§.§"!'§;
   import §<!?§.§%"§;
   import §@!T§.§4!f§;
   import §@w§.§?!8§;
   import §[#§.§!p§;
   import §[#§.§[!A§;
   import §[_§.§2D§;
   import §]!G§.§0!g§;
   import flash.display.Stage;
   
   public class §-!V§ extends §0!f§
   {
       
      
      private var §#Z§:Stage;
      
      private var §@,§:§?!8§;
      
      private var §[!`§:Array;
      
      public function §-!V§(param1:Stage)
      {
         this.§#Z§ = param1;
         super(param1);
         super.§%4§.simulateMultitouch = true;
      }
      
      public function §@!2§() : Array
      {
         if(this.§[!`§)
         {
            return this.§[!`§.concat();
         }
         return null;
      }
      
      public function §&A§() : int
      {
         if(this.§[!`§)
         {
            return this.§[!`§.length;
         }
         return 0;
      }
      
      public function §&h§(param1:String) : Boolean
      {
         if(!this.§[!`§)
         {
            return false;
         }
         return this.§[!`§.indexOf(param1) >= 0;
      }
      
      public function §4-§(param1:String) : void
      {
         if(!this.§[!`§)
         {
            this.§[!`§ = [];
         }
         this.§[!`§.push(param1);
      }
      
      override public function init(param1:§,K§) : void
      {
         super.init(param1);
         this.§[!`§ = [];
         this.§@,§ = new §?!8§();
      }
      
      override protected function initLevelCamera(param1:§,K§) : §2D§
      {
         return new §76§(this,param1);
      }
      
      override public function setController(param1:§[!A§) : void
      {
         super.setController(param1);
         if(param1 is §!p§)
         {
            this.§@,§.setController(param1 as §!p§);
         }
      }
      
      override public function clearLevel() : void
      {
         super.clearLevel();
         if(this.§@,§)
         {
            this.§@,§.dispose();
            this.§@,§ = null;
         }
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         this.§@,§.run(param1);
         return super.updateWithTime(param1,param2,param3,param4);
      }
      
      override public function handleEngineUpdateStep(param1:Number) : void
      {
         super.handleEngineUpdateStep(param1);
         this.§@,§.§+M§(param1);
      }
      
      override protected function initReplay() : void
      {
         §%!N§ = new §6R§(§3!5§.§-!2§);
      }
      
      override protected function loadPreviousReplayData() : void
      {
         if(§-G§)
         {
            §@!Z§ = §6R§.initialize(§-G§);
            §@!Z§.speed = 1;
            §@!Z§.play();
            § -§ = -1000;
            §-G§ = null;
         }
      }
      
      override protected function initLevelSlingshot(param1:§,K§) : §0U§
      {
         return new §?r§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§,K§) : §,!k§
      {
         return new §0!g§(this,param1,new Sprite());
      }
      
      override protected function initParticleManager(param1:§!,§, param2:§ !D§) : §3F§
      {
         return new §%"§(param1,param2);
      }
      
      override protected function initAnimationManager(param1:§ !D§) : §!,§
      {
         return new § !e§(param1);
      }
      
      override protected function initialize(param1:§,K§) : void
      {
         super.initialize(param1);
      }
      
      override protected function preProcessLevel() : §,K§
      {
         return §1r§;
      }
      
      override protected function initThemeGraphicsManager() : §>N§
      {
         return new §>N§(this.§#Z§.loaderInfo.parameters.assetsUrl || "",this.§#Z§.loaderInfo.parameters.buildNumber || "",true,3);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§ !D§, param4:Number) : §"!'§
      {
         return new §4!f§(param1,param2,param3,param4);
      }
      
      override public function get backgroundTextureManager() : § !D§
      {
         if(§2o§)
         {
            return §2o§.textureManager;
         }
         return null;
      }
      
      public function get §!s§() : §?!8§
      {
         return this.§@,§;
      }
   }
}

package §0b§
{
   import § var§.§ 4§;
   import §"!i§.§"!'§;
   import §"m§.§=!L§;
   import §,!h§.§0d§;
   import §2m§.§<!?§;
   import §40§.§1!g§;
   import §40§.§5G§;
   import §48§.§5Y§;
   import §8!A§.§-!i§;
   import §;3§.§'m§;
   import §=`§.§ !;§;
   import §=`§.§-8§;
   import §=`§.§6!I§;
   import §=`§.§7!V§;
   import §`g§.Sprite;
   import flash.display.Stage;
   
   public class §"V§ extends §5G§
   {
       
      
      private var §@e§:Stage;
      
      private var §;!+§:Array;
      
      public function §"V§(param1:Stage)
      {
         this.§@e§ = param1;
         super(param1);
      }
      
      public function §1!;§() : Array
      {
         if(this.§;!+§)
         {
            return this.§;!+§.concat();
         }
         return null;
      }
      
      public function §,,§() : int
      {
         if(this.§;!+§)
         {
            return this.§;!+§.length;
         }
         return 0;
      }
      
      public function §^"!§(param1:String) : Boolean
      {
         if(!this.§;!+§)
         {
            return false;
         }
         return this.§;!+§.indexOf(param1) >= 0;
      }
      
      public function §0§(param1:String) : void
      {
         if(!this.§;!+§)
         {
            this.§;!+§ = [];
         }
         this.§;!+§.push(param1);
      }
      
      override public function init(param1:§"!'§) : void
      {
         super.init(param1);
         this.§;!+§ = [];
      }
      
      override public function setController(param1:§5Y§) : void
      {
         super.setController(param1);
         if(param1 is §0d§)
         {
         }
      }
      
      override public function clearLevel() : void
      {
         super.clearLevel();
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         return super.updateWithTime(param1,param2,param3,param4);
      }
      
      override public function handleEngineUpdateStep(param1:Number) : void
      {
         super.handleEngineUpdateStep(param1);
      }
      
      override protected function initThemeGraphicsManager() : § !;§
      {
         return new § !;§(this.§@e§.loaderInfo.parameters.assetsUrl || "",this.§@e§.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initThemeSoundsManager() : § !;§
      {
         return new § !;§(this.§@e§.loaderInfo.parameters.assetsUrl || "",this.§@e§.loaderInfo.parameters.buildNumber || "",false);
      }
      
      override protected function initCutSceneManager() : § !;§
      {
         return new § !;§(this.§@e§.loaderInfo.parameters.assetsUrl || "",this.§@e§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : §6!I§
      {
         if(§7%§)
         {
            return §7%§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§6!I§) : §7!V§
      {
         return new §-8§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§6!I§, param4:Number) : §-!i§
      {
         if(param1 == "BACKGROUND_FB_MOUNTAINS" && !§<!?§.§@!_§)
         {
            return new §=!L§(param1,param2,param3,param4);
         }
         return new §-!i§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§"!'§) : §1!g§
      {
         return new §0=§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§"!'§) : § 4§
      {
         return new §'m§(this,param1,new Sprite());
      }
   }
}

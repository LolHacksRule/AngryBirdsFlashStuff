package §#!O§
{
   import §!!K§.§else§;
   import §!;§.§9p§;
   import §-%§.§#!J§;
   import §2_§.§'u§;
   import §2_§.§8![§;
   import §3!G§.§ y§;
   import §7!B§.Sprite;
   import §9!U§.§49§;
   import §9Y§.§9=§;
   import §<x§.§-^§;
   import §=b§.§>!e§;
   import §^!Y§.§'R§;
   import §^!Y§.§]e§;
   import §^!Y§.§^!'§;
   import §^!Y§.§else §;
   import flash.display.Stage;
   
   public class §9-§ extends §'u§
   {
       
      
      private var §8!x§:Stage;
      
      private var § %§:Array;
      
      public function §9-§(param1:Stage)
      {
         this.§8!x§ = param1;
         super(param1);
      }
      
      public function §=!$§() : Array
      {
         if(this.§ %§)
         {
            return this.§ %§.concat();
         }
         return null;
      }
      
      public function § null§() : int
      {
         if(this.§ %§)
         {
            return this.§ %§.length;
         }
         return 0;
      }
      
      public function §;w§(param1:String) : Boolean
      {
         if(!this.§ %§)
         {
            return false;
         }
         return this.§ %§.indexOf(param1) >= 0;
      }
      
      public function §;!O§(param1:String) : void
      {
         if(!this.§ %§)
         {
            this.§ %§ = [];
         }
         this.§ %§.push(param1);
      }
      
      override public function init(param1:§ y§) : void
      {
         super.init(param1);
         this.§ %§ = [];
      }
      
      override public function setController(param1:§#!J§) : void
      {
         super.setController(param1);
         if(param1 is §9p§)
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
      
      override protected function initThemeGraphicsManager() : §]e§
      {
         return new §]e§(this.§8!x§.loaderInfo.parameters.assetsUrl || "",this.§8!x§.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initThemeSoundsManager() : §]e§
      {
         return new §]e§(this.§8!x§.loaderInfo.parameters.assetsUrl || "",this.§8!x§.loaderInfo.parameters.buildNumber || "",false);
      }
      
      override protected function initCutSceneManager() : §]e§
      {
         return new §]e§(this.§8!x§.loaderInfo.parameters.assetsUrl || "",this.§8!x§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : §'R§
      {
         if(§"#§)
         {
            return §"#§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§'R§) : §else §
      {
         return new §^!'§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§'R§, param4:Number) : §-^§
      {
         if(param1 == "BACKGROUND_FB_MOUNTAINS" && !§else§.§@g§)
         {
            return new §9=§(param1,param2,param3,param4);
         }
         return new §-^§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§ y§) : §8![§
      {
         return new §9!8§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§ y§) : §>!e§
      {
         return new §49§(this,param1,new Sprite());
      }
   }
}

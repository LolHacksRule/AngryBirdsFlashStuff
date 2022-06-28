package §_-dJ§
{
   import §_-02x§.§_-o7§;
   import §_-0Dg§.§_-0BD§;
   import §_-0Ea§.§_-AY§;
   import §_-8d§.§_-0FF§;
   import §_-8d§.§_-Ew§;
   import §_-8d§.§_-rz§;
   import §_-8d§.§_-tA§;
   import §_-Ga§.§_-bm§;
   import §_-QI§.§_-DF§;
   import §_-TG§.§_-00u§;
   import §_-TG§.§_-E0§;
   import §_-j7§.§_-cf§;
   import §_-lt§.§_-30§;
   import §_-uY§.Sprite;
   import §_-vJ§.§_-OI§;
   import flash.display.Stage;
   
   public class §_-xW§ extends §_-00u§
   {
       
      
      private var §_-qN§:Stage;
      
      private var §_-0-p§:Array;
      
      public function §_-xW§(param1:Stage)
      {
         this.§_-qN§ = param1;
         super(param1);
      }
      
      public function §_-fK§() : Array
      {
         if(this.§_-0-p§)
         {
            return this.§_-0-p§.concat();
         }
         return null;
      }
      
      public function §_-pU§() : int
      {
         if(this.§_-0-p§)
         {
            return this.§_-0-p§.length;
         }
         return 0;
      }
      
      public function §_-53§(param1:String) : Boolean
      {
         if(!this.§_-0-p§)
         {
            return false;
         }
         return this.§_-0-p§.indexOf(param1) >= 0;
      }
      
      public function §_-Jd§(param1:String) : void
      {
         if(!this.§_-0-p§)
         {
            this.§_-0-p§ = [];
         }
         this.§_-0-p§.push(param1);
      }
      
      override public function init(param1:§_-bm§) : void
      {
         super.init(param1);
         this.§_-0-p§ = [];
      }
      
      override public function setController(param1:§_-0BD§) : void
      {
         super.setController(param1);
         if(param1 is §_-o7§)
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
      
      override protected function initThemeGraphicsManager() : §_-tA§
      {
         return new §_-tA§(this.§_-qN§.loaderInfo.parameters.assetsUrl || "",this.§_-qN§.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initThemeSoundsManager() : §_-tA§
      {
         return new §_-tA§(this.§_-qN§.loaderInfo.parameters.assetsUrl || "",this.§_-qN§.loaderInfo.parameters.buildNumber || "",false);
      }
      
      override protected function initCutSceneManager() : §_-tA§
      {
         return new §_-tA§(this.§_-qN§.loaderInfo.parameters.assetsUrl || "",this.§_-qN§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : §_-0FF§
      {
         if(§_-SV§)
         {
            return §_-SV§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§_-0FF§) : §_-Ew§
      {
         return new §_-rz§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§_-0FF§, param4:Number) : §_-OI§
      {
         if(param1 == "BACKGROUND_FB_MOUNTAINS" && !§_-AY§.§_-H3§)
         {
            return new §_-cf§(param1,param2,param3,param4);
         }
         return new §_-OI§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§_-bm§) : §_-E0§
      {
         return new §_-SS§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§_-bm§) : §_-30§
      {
         return new §_-DF§(this,param1,new Sprite());
      }
   }
}

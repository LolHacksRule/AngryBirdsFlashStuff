package §3,§
{
   import §'_§.§89§;
   import §'_§.§=!&§;
   import §+"§.§8!n§;
   import §+"6§.§5!H§;
   import §-I§.§-%§;
   import §;!s§.§9!]§;
   import §?"<§.§&!B§;
   import §?"<§.§5!!§;
   import §?"<§.§<"!§;
   import §?"<§.§=T§;
   import §[!z§.§!"=§;
   import §]&§.Sprite;
   import §^!s§.§#!"§;
   import §^!s§.§&!t§;
   import flash.display.Stage;
   
   public class §>M§ extends §[!;§
   {
       
      
      private var §"""§:Stage;
      
      private var §%"-§:§8!n§;
      
      private var §;U§:Array;
      
      public function §>M§(param1:Stage)
      {
         this.§"""§ = param1;
         super(param1);
      }
      
      public function §>Q§() : Array
      {
         if(this.§;U§)
         {
            return this.§;U§.concat();
         }
         return null;
      }
      
      public function §;H§() : int
      {
         if(this.§;U§)
         {
            return this.§;U§.length;
         }
         return 0;
      }
      
      public function §66§(param1:String) : Boolean
      {
         if(!this.§;U§)
         {
            return false;
         }
         return this.§;U§.indexOf(param1) >= 0;
      }
      
      public function §4!#§(param1:String) : void
      {
         if(!this.§;U§)
         {
            this.§;U§ = [];
         }
         this.§;U§.push(param1);
      }
      
      override public function init(param1:§!"=§) : void
      {
         super.init(param1);
         this.§;U§ = [];
         this.§%"-§ = new §8!n§();
      }
      
      override public function setController(param1:§-%§) : void
      {
         super.setController(param1);
         if(param1 is §9!]§)
         {
            this.§%"-§.setController(param1 as §9!]§);
         }
      }
      
      override public function clearLevel() : void
      {
         super.clearLevel();
         if(this.§%"-§)
         {
            this.§%"-§.dispose();
            this.§%"-§ = null;
         }
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         this.§%"-§.run(param1);
         return super.updateWithTime(param1,param2,param3,param4);
      }
      
      override public function handleEngineUpdateStep(param1:Number) : void
      {
         super.handleEngineUpdateStep(param1);
         this.§%"-§.§&"9§(param1);
      }
      
      override protected function initThemeGraphicsManager() : §5!!§
      {
         return new §5!!§(this.§"""§.loaderInfo.parameters.assetsUrl || "",this.§"""§.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initThemeSoundsManager() : §5!!§
      {
         return new §5!!§(this.§"""§.loaderInfo.parameters.assetsUrl || "",this.§"""§.loaderInfo.parameters.buildNumber || "",false);
      }
      
      override protected function initCutSceneManager() : §5!!§
      {
         return new §5!!§(this.§"""§.loaderInfo.parameters.assetsUrl || "",this.§"""§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : §<"!§
      {
         if(§>!v§)
         {
            return §>!v§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§<"!§) : §&!B§
      {
         return new §=T§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§<"!§, param4:Number) : §&!t§
      {
         if(param1 == "BACKGROUND_FB_MOUNTAINS" && !§5!H§.§#!l§)
         {
            return new §#!"§(param1,param2,param3,param4);
         }
         return new §&!t§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§!"=§) : §,!;§
      {
         return new §4";§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§!"=§) : §=!&§
      {
         return new §89§(this,param1,new Sprite());
      }
      
      public function get §+r§() : §8!n§
      {
         return this.§%"-§;
      }
   }
}

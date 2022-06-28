package §8!G§
{
   import §!!§.§>4§;
   import §%!c§.§`b§;
   import §+&§.§ R§;
   import §+&§.§-!7§;
   import §,!<§.§3Q§;
   import §,6§.§!o§;
   import §,6§.§>N§;
   import §,6§.§]!D§;
   import §,6§.§]!f§;
   import §2!!§.§[!A§;
   import §4p§.§#Q§;
   import §9!r§.§[V§;
   import §9E§.Sprite;
   import §@4§.§,!]§;
   import §]![§.§[?§;
   import flash.display.Stage;
   
   public class §"D§ extends §-!7§
   {
       
      
      private var §24§:Stage;
      
      private var §##§:Array;
      
      public function §"D§(param1:Stage)
      {
         this.§24§ = param1;
         super(param1);
      }
      
      public function §>!;§() : Array
      {
         if(this.§##§)
         {
            return this.§##§.concat();
         }
         return null;
      }
      
      public function §^!%§() : int
      {
         if(this.§##§)
         {
            return this.§##§.length;
         }
         return 0;
      }
      
      public function §#!C§(param1:String) : Boolean
      {
         if(!this.§##§)
         {
            return false;
         }
         return this.§##§.indexOf(param1) >= 0;
      }
      
      public function §'2§(param1:String) : void
      {
         if(!this.§##§)
         {
            this.§##§ = [];
         }
         this.§##§.push(param1);
      }
      
      override public function init(param1:§>4§) : void
      {
         super.init(param1);
         this.§##§ = [];
      }
      
      override public function setController(param1:§[!A§) : void
      {
         super.setController(param1);
         if(param1 is §3Q§)
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
      
      override protected function initThemeGraphicsManager() : §]!f§
      {
         return new §]!f§(this.§24§.loaderInfo.parameters.assetsUrl || "",this.§24§.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initThemeSoundsManager() : §]!f§
      {
         return new §]!f§(this.§24§.loaderInfo.parameters.assetsUrl || "",this.§24§.loaderInfo.parameters.buildNumber || "",false);
      }
      
      override protected function initCutSceneManager() : §]!f§
      {
         return new §]!f§(this.§24§.loaderInfo.parameters.assetsUrl || "",this.§24§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : §!o§
      {
         if(§]!J§)
         {
            return §]!J§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§!o§) : §>N§
      {
         return new §]!D§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§!o§, param4:Number) : §#Q§
      {
         if(param1 == "BACKGROUND_FB_MOUNTAINS" && !§,!]§.§,?§)
         {
            return new §`b§(param1,param2,param3,param4);
         }
         return new §#Q§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§>4§) : § R§
      {
         return new §2!7§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§>4§) : §[?§
      {
         return new §[V§(this,param1,new Sprite());
      }
   }
}

package §@N§
{
   import §"G§.§3h§;
   import §"m§.§3!`§;
   import §%Q§.§=[§;
   import §'!9§.Sprite;
   import §,!5§.§>!A§;
   import §,!5§.§^g§;
   import §,m§.§'=§;
   import §-w§.§,Q§;
   import §-w§.§6!O§;
   import §-w§.§>!@§;
   import §-w§.§^!&§;
   import §0!N§.§=+§;
   import §68§.§+!`§;
   import §<&§.§^b§;
   import §`!f§.§ '§;
   import flash.display.Stage;
   
   public class §2w§ extends §^g§
   {
       
      
      private var §;p§:Stage;
      
      private var §"!w§:Array;
      
      public function §2w§(param1:Stage)
      {
         this.§;p§ = param1;
         super(param1);
      }
      
      public function §&!y§() : Array
      {
         if(this.§"!w§)
         {
            return this.§"!w§.concat();
         }
         return null;
      }
      
      public function §''§() : int
      {
         if(this.§"!w§)
         {
            return this.§"!w§.length;
         }
         return 0;
      }
      
      public function §!=§(param1:String) : Boolean
      {
         if(!this.§"!w§)
         {
            return false;
         }
         return this.§"!w§.indexOf(param1) >= 0;
      }
      
      public function §0T§(param1:String) : void
      {
         if(!this.§"!w§)
         {
            this.§"!w§ = [];
         }
         this.§"!w§.push(param1);
      }
      
      override public function init(param1:§=+§) : void
      {
         super.init(param1);
         this.§"!w§ = [];
      }
      
      override public function setController(param1:§3!`§) : void
      {
         super.setController(param1);
         if(param1 is §'=§)
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
      
      override protected function initThemeGraphicsManager() : §6!O§
      {
         return new §6!O§(this.§;p§.loaderInfo.parameters.assetsUrl || "",this.§;p§.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initThemeSoundsManager() : §6!O§
      {
         return new §6!O§(this.§;p§.loaderInfo.parameters.assetsUrl || "",this.§;p§.loaderInfo.parameters.buildNumber || "",false);
      }
      
      override protected function initCutSceneManager() : §6!O§
      {
         return new §6!O§(this.§;p§.loaderInfo.parameters.assetsUrl || "",this.§;p§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : §,Q§
      {
         if(§8!Z§)
         {
            return §8!Z§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§,Q§) : §^!&§
      {
         return new §>!@§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§,Q§, param4:Number) : §+!`§
      {
         if(param1 == "BACKGROUND_FB_MOUNTAINS" && !§^b§.§7h§)
         {
            return new §3h§(param1,param2,param3,param4);
         }
         return new §+!`§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§=+§) : §>!A§
      {
         return new §7P§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§=+§) : §=[§
      {
         return new § '§(this,param1,new Sprite());
      }
   }
}

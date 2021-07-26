package §4!<§
{
   import §!!=§.§"l§;
   import §!!=§.§=H§;
   import §"a§.§!"J§;
   import §&E§.§6!O§;
   import §&E§.§="@§;
   import §'!6§.Sprite;
   import §-"N§.§3!K§;
   import §-"N§.§4!W§;
   import §-p§.§7"4§;
   import §-r§.§!"M§;
   import §9!n§.§0"T§;
   import §<T§.§""#§;
   import §<T§.§#!2§;
   import §<T§.§'!O§;
   import §<T§.§^!Y§;
   import §<T§.§`m§;
   import §@!"§.§?l§;
   import §^"F§.§4!2§;
   import §^"F§.§?G§;
   import §`!G§.§8"=§;
   import §`!G§.§]"'§;
   import flash.display.Stage;
   
   public class §%6§ extends §'!S§
   {
       
      
      private var §,">§:Stage;
      
      private var §>!p§:§?G§;
      
      private var §+!J§:Array;
      
      public function §%6§(param1:Stage)
      {
         this.§,">§ = param1;
         super(param1);
      }
      
      public function §'!>§() : Array
      {
         if(this.§+!J§)
         {
            return this.§+!J§.concat();
         }
         return null;
      }
      
      public function §1"R§() : void
      {
         (§`"G§ as §3+§).§""M§ = false;
      }
      
      public function §4!]§() : int
      {
         var _loc1_:int = 0;
         if(this.§+!J§)
         {
            _loc1_ = this.§+!J§.length;
            if((§?l§.§'h§ as §%6§).§'!>§().indexOf(§4!2§.§-Y§.§1!#§) != -1)
            {
               _loc1_--;
            }
         }
         return _loc1_;
      }
      
      override public function addItemsToDisplayList() : void
      {
         if(§3!K§.§'A§)
         {
            §<!A§(§#"O§.backgroundLayersSprite,false);
         }
         this.§1"R§();
         §<!A§(§6&§.getGroupSprite(§6!O§.§`U§),false);
         §<!A§(§6&§.getGroupSprite(§6!O§.§-4§),true);
         §<!A§((§'H§ as §]"'§).§!!Z§,true);
         §<!A§(§6&§.getGroupSprite(§6!O§.PARTICLE_GROUP_BACKGROUND_EFFECTS),true);
         §<!A§(§'H§.mainSprite,true);
         §<!A§(§`"G§.sprite,true);
         §<!A§(§6&§.getGroupSprite(§6!O§.PARTICLE_GROUP_GAME_EFFECTS),true);
         §<!A§(§#"O§.groundSprite,false);
         if(§3!K§.§'A§)
         {
            §<!A§(§#"O§.foregroundLayersSprite,false);
         }
         §<!A§(§6&§.getGroupSprite(§6!O§.§;m§),true);
         §<!A§(§6&§.getGroupSprite(§6!O§.§,G§),true);
      }
      
      public function §"!A§(param1:String) : Boolean
      {
         if(!this.§+!J§)
         {
            return false;
         }
         return this.§+!J§.indexOf(param1) >= 0;
      }
      
      public function usePowerup(param1:String) : void
      {
         if(!this.§+!J§)
         {
            this.§+!J§ = [];
         }
         this.§+!J§.push(param1);
      }
      
      override public function init(param1:§0"T§) : void
      {
         super.init(param1);
         this.§+!J§ = [];
         this.§>!p§ = new §?G§();
      }
      
      override public function setController(param1:§7"4§) : void
      {
         super.setController(param1);
         if(param1 is §!"M§)
         {
            this.§>!p§.setController(param1 as §!"M§);
         }
      }
      
      override public function clearLevel() : void
      {
         super.clearLevel();
         if(this.§>!p§)
         {
            this.§>!p§.dispose();
            this.§>!p§ = null;
         }
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         this.§>!p§.run(param1);
         return super.updateWithTime(param1,param2,param3,param4);
      }
      
      override public function handleEngineUpdateStep(param1:Number) : void
      {
         super.handleEngineUpdateStep(param1);
         this.§>!p§.§1"V§(param1);
      }
      
      override protected function initThemeGraphicsManager() : §""#§
      {
         return new §'!O§(this.§,">§.loaderInfo.parameters.assetsRoot,this.§,">§.loaderInfo.parameters.assetsUrl || "",this.§,">§.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initThemeSoundsManager() : §""#§
      {
         return new §'!O§(this.§,">§.loaderInfo.parameters.assetsRoot,this.§,">§.loaderInfo.parameters.assetsUrl || "",this.§,">§.loaderInfo.parameters.buildNumber || "",false);
      }
      
      override protected function initCutSceneManager() : §""#§
      {
         return new §'!O§(this.§,">§.loaderInfo.parameters.assetsRoot,this.§,">§.loaderInfo.parameters.assetsUrl || "",this.§,">§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : §`m§
      {
         if(§]"8§)
         {
            return §]"8§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§`m§) : §^!Y§
      {
         return new §#!2§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§`m§, param4:Number) : §3!K§
      {
         if(param1 == "BACKGROUND_FB_MOUNTAINS" && !§!"J§.§!X§)
         {
            return new §4!W§(param1,param2,param3,param4);
         }
         return new §3!K§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§0"T§) : §&=§
      {
         return new §3+§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§0"T§) : §8"=§
      {
         return new §]"'§(this,param1,new Sprite());
      }
      
      override protected function initParticleManager(param1:§^!Y§, param2:§`m§) : §6!O§
      {
         return new §="@§(param1,param2);
      }
      
      public function get §+"3§() : §?G§
      {
         return this.§>!p§;
      }
      
      override protected function initLevelCamera(param1:§0"T§) : §"l§
      {
         return new §=H§(this,param1);
      }
   }
}

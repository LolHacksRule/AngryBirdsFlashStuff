package §9"!§
{
   import §#!e§.§1"B§;
   import §'6§.§"]§;
   import §1!$§.Sprite;
   import §3!7§.§#A§;
   import §3!7§.§>,§;
   import §3![§.§5!@§;
   import §6!D§.§0Y§;
   import §6!D§.§7"?§;
   import §6!D§.§;";§;
   import §6!D§.§[t§;
   import §9"%§.§1!Q§;
   import §9"%§.§]a§;
   import §]!4§.§^!f§;
   import §]!A§.;
   import §^j§.§7>§;
   import §`!W§.§[!x§;
   import §`!W§.§]!G§;
   import flash.display.Stage;
   
   public class §2K§ extends §9"3§
   {
       
      
      private var §^!w§:Stage;
      
      private var §"!<§:§#A§;
      
      private var §+"3§:Array;
      
      public function §2K§(param1:Stage)
      {
         this.§^!w§ = param1;
         super(param1);
      }
      
      public function §[v§() : Array
      {
         if(this.§+"3§)
         {
            return this.§+"3§.concat();
         }
         return null;
      }
      
      public function §0h§(param1:Boolean) : void
      {
         (§5^§ as §>"7§).§?!k§ = param1;
      }
      
      public function §[^§() : int
      {
         var _loc1_:int = 0;
         if(this.§+"3§)
         {
            _loc1_ = this.§+"3§.length;
            if((§#6§.§6!z§ as §2K§).§[v§().indexOf(§>,§.§," §.§]6§) != -1)
            {
               _loc1_--;
            }
         }
         return _loc1_;
      }
      
      override public function addItemsToDisplayList() : void
      {
         if(§[!x§.§50§)
         {
            §6!§(§4J§.backgroundLayersSprite,false);
         }
         §6!§(§3">§.getGroupSprite(§^!f§.§6d§),false);
         §6!§(§3">§.getGroupSprite(§^!f§.§?i§),true);
         §6!§((§%!O§ as §1!Q§).§;'§,true);
         §6!§(§3">§.getGroupSprite(§^!f§.§4N§),true);
         §6!§(§%!O§.mainSprite,true);
         §6!§(§5^§.sprite,true);
         §6!§(§3">§.getGroupSprite(§^!f§.§>"F§),true);
         §6!§(§4J§.groundSprite,false);
         if(§[!x§.§50§)
         {
            §6!§(§4J§.foregroundLayersSprite,false);
         }
         §6!§(§3">§.getGroupSprite(§^!f§.§?y§),true);
      }
      
      public function §6!f§(param1:String) : Boolean
      {
         if(!this.§+"3§)
         {
            return false;
         }
         return this.§+"3§.indexOf(param1) >= 0;
      }
      
      public function § !2§(param1:String) : void
      {
         if(!this.§+"3§)
         {
            this.§+"3§ = [];
         }
         this.§+"3§.push(param1);
      }
      
      override public function init(param1:§1"B§) : void
      {
         super.init(param1);
         this.§+"3§ = [];
         this.§"!<§ = new §#A§();
      }
      
      override public function setController(param1:§5!@§) : void
      {
         super.setController(param1);
         if(param1 is §7>§)
         {
            this.§"!<§.setController(param1 as §7>§);
         }
      }
      
      override public function clearLevel() : void
      {
         super.clearLevel();
         if(this.§"!<§)
         {
            this.§"!<§.dispose();
            this.§"!<§ = null;
         }
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         this.§"!<§.run(param1);
         return super.updateWithTime(param1,param2,param3,param4);
      }
      
      override public function handleEngineUpdateStep(param1:Number) : void
      {
         super.handleEngineUpdateStep(param1);
         this.§"!<§.§2c§(param1);
      }
      
      override protected function initThemeGraphicsManager() : §;";§
      {
         return new §;";§(this.§^!w§.loaderInfo.parameters.assetsUrl || "",this.§^!w§.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initThemeSoundsManager() : §;";§
      {
         return new §;";§(this.§^!w§.loaderInfo.parameters.assetsUrl || "",this.§^!w§.loaderInfo.parameters.buildNumber || "",false);
      }
      
      override protected function initCutSceneManager() : §;";§
      {
         return new §;";§(this.§^!w§.loaderInfo.parameters.assetsUrl || "",this.§^!w§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : §0Y§
      {
         if(§3<§)
         {
            return §3<§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§0Y§) : §[t§
      {
         return new §7"?§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§0Y§, param4:Number) : §[!x§
      {
         if(param1 == "BACKGROUND_FB_MOUNTAINS" && !§"]§.§4"!§)
         {
            return new §]!G§(param1,param2,param3,param4);
         }
         return new §[!x§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§1"B§) : §2a§
      {
         return new §>"7§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§1"B§) : §]a§
      {
         return new §1!Q§(this,param1,new Sprite());
      }
      
      public function get §-"#§() : §#A§
      {
         return this.§"!<§;
      }
   }
}

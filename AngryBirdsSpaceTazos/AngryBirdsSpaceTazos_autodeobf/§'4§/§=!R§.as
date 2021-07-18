package §'4§
{
   import §"!&§.§!"7§;
   import §"!&§.§-!M§;
   import §+!a§.§@!_§;
   import §+!a§.§`b§;
   import §4&§.§ "E§;
   import §4&§.§'!,§;
   import §4&§.§,C§;
   import §7!8§.Sprite;
   import §9!w§.§9!,§;
   import §9!w§.§@""§;
   import §;C§.§%"$§;
   import §;C§.§^<§;
   import §<!o§.§32§;
   import §]">§.§!!r§;
   import §]">§.§#"'§;
   import §]">§.§%!E§;
   import §]">§.§-%§;
   import §]">§.§=!;§;
   import §]">§.§=?§;
   import §]">§.§@!q§;
   import §]">§.§]"-§;
   import §]">§.§`!R§;
   import §`!#§.Texture;
   import §`!j§.§#b§;
   import §`!j§.§+!A§;
   import §`!j§.§2!7§;
   import §`!j§.§9"!§;
   import flash.display.Stage;
   
   public class §=!R§ extends §^";§
   {
       
      
      protected var §1!A§:§-T§;
      
      public function §=!R§(param1:Stage, param2:§-!M§, param3:§`b§, param4:§9"!§)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function initializeLevelObjectManager(param1:§#b§) : §-%§
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:§32§ = null;
         var _loc2_:String = §@!_§.§!z§;
         if(param1 is §2!7§)
         {
            _loc3_ = "";
            _loc4_ = "";
            if(_loc5_ = §3"C§ as §32§)
            {
               _loc3_ = _loc5_.§?"5§;
               _loc4_ = _loc5_.§4L§;
            }
            return this.§!"9§(param1,_loc2_,_loc3_,_loc4_);
         }
         return super.initializeLevelObjectManager(param1);
      }
      
      override protected function initializeLevelCamera(param1:§#b§) : §9!,§
      {
         return new §@""§(this,param1);
      }
      
      override protected function initializeLevelSlingshot(param1:§#b§) : §3!n§
      {
         return new §"!Q§(this,param1,new Sprite());
      }
      
      protected function §!"9§(param1:§#b§, param2:String, param3:String = "", param4:String = "") : §@!q§
      {
         return new §@!q§(this,param1 as §2!7§,new Sprite(),param2,param3,param4);
      }
      
      override protected function initThemeGraphicsManager() : § "E§
      {
         return new §^<§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§6u§,§!"7§(§3"4§));
      }
      
      override protected function initThemeSoundsManager() : § "E§
      {
         return null;
      }
      
      override protected function initCutSceneManager() : § "E§
      {
         return new §^<§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§6u§,§!"7§(§3"4§));
      }
      
      override protected function initAnimationManager(param1:§,C§) : §'!,§
      {
         return new §%"$§(param1);
      }
      
      override protected function levelInitialized() : void
      {
         §4"-§();
      }
      
      override public function getCurrentLevelData() : §#b§
      {
         var _loc1_:§#b§ = new §+!A§();
         _loc1_.scoreGold = §^`§.scoreGold;
         _loc1_.scoreSilver = §^`§.scoreSilver;
         §+%§.writeCameraInformation(_loc1_);
         §9u§.writeObjectInformation(_loc1_);
         §-!t§.writeSlingshotInformation(_loc1_);
         _loc1_.theme = §3"C§.getCurrentThemeName();
         return _loc1_;
      }
      
      protected function §1;§(param1:String) : Texture
      {
         var _loc2_:Texture = null;
         switch(param1)
         {
            case §=?§.§!!p§:
               _loc2_ = textureManager.getTexture("TRAIL_AIM_GREEN").texture;
               break;
            case §`!R§.§!!p§:
               _loc2_ = textureManager.getTexture("TRAIL_AIM_BOMB").texture;
               break;
            case §=!;§.§!!p§:
               _loc2_ = textureManager.getTexture("TRAIL_AIM_BLUE").texture;
               break;
            case §]"-§.§!!p§:
               _loc2_ = textureManager.getTexture("TRAIL_AIM_LASER").texture;
               break;
            case §#"'§.§!!p§:
               _loc2_ = textureManager.getTexture("TRAIL_AIM_RED").texture;
               break;
            case §!!r§.§!!p§:
               _loc2_ = textureManager.getTexture("TRAIL_AIM_LASER").texture;
               break;
            default:
               _loc2_ = textureManager.getTexture("TRAIL_AIM_LASER").texture;
         }
         return _loc2_;
      }
      
      override public function update(param1:Number, param2:Boolean) : Number
      {
         var _loc3_:§-T§ = null;
         if(§-!t§)
         {
            if(§-!t§.mBirds.length > §-!t§.mNextBirdIndex)
            {
               _loc3_ = §-!t§.mBirds[§-!t§.mNextBirdIndex];
            }
            if(_loc3_ && this.§1!A§ != _loc3_)
            {
               this.§1!A§ = _loc3_;
               this.§9p§();
            }
         }
         return super.update(param1,param2);
      }
      
      protected function §9p§() : void
      {
         var _loc1_:Texture = this.§1;§(this.§1!A§.name);
         if(§]F§)
         {
            if(§]F§.sprite.parent == objects.overlaySprite)
            {
               objects.overlaySprite.removeChild(§]F§.sprite);
            }
            §]F§.dispose();
         }
         §]F§ = new §?D§(new Sprite(),_loc1_,§%!E§.§6&§ / 1000,§%!E§.§0e§);
         objects.overlaySprite.addChild(§]F§.sprite);
      }
      
      override public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param1 == 10000 && param2 == §!!t§.§1!@§)
         {
            return;
         }
         super.addScore(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function getThemeGraphicsLoadList(param1:String) : Array
      {
         var _loc2_:Array = super.getThemeGraphicsLoadList(param1);
         if(_loc2_)
         {
            _loc2_.push("THEME_COMMON");
         }
         return _loc2_;
      }
   }
}

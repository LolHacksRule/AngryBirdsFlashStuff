package §3"#§
{
   import §&!]§.Sprite;
   import §1z§.§!P§;
   import §1z§.§2#§;
   import §1z§.§;!L§;
   import §1z§.§^!@§;
   import §3!E§.§8!§;
   import §3!E§.§;!=§;
   import §3>§.§?_§;
   import §3>§.§]!N§;
   import §3h§.§'`§;
   import §3h§.§`!f§;
   import §9!v§.§-!^§;
   import §9!v§.§6a§;
   import §9!v§.static;
   import §9"!§.§"!6§;
   import §9"!§.§"" §;
   import §9"!§.§"0§;
   import §9"!§.§#K§;
   import §9"!§.§#q§;
   import §9"!§.§1Z§;
   import §9"!§.§97§;
   import §9"!§.§;g§;
   import §9"!§.§]m§;
   import §9"@§.Texture;
   import §;"0§.§-q§;
   import §;"0§.§@$§;
   import §?"@§.§0!T§;
   import flash.display.Stage;
   
   public class §=t§ extends §]"2§
   {
       
      
      protected var §]!%§:§'"&§;
      
      public function §=t§(param1:Stage, param2:§]!N§, param3:§-q§, param4:§^!@§)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function initializeLevelObjectManager(param1:§2#§) : §"" §
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:§0!T§ = null;
         var _loc2_:String = §@$§.§`! §;
         if(param1 is §!P§)
         {
            _loc3_ = "";
            _loc4_ = "";
            if(_loc5_ = §""4§ as §0!T§)
            {
               _loc3_ = _loc5_.§ A§;
               _loc4_ = _loc5_.§6^§;
            }
            return this.§9S§(param1,_loc2_,_loc3_,_loc4_);
         }
         return super.initializeLevelObjectManager(param1);
      }
      
      override protected function initializeLevelCamera(param1:§2#§) : §'`§
      {
         return new §`!f§(this,param1);
      }
      
      override protected function initializeLevelSlingshot(param1:§2#§) : §0k§
      {
         return new § !G§(this,param1,new Sprite());
      }
      
      protected function §9S§(param1:§2#§, param2:String, param3:String = "", param4:String = "") : §]m§
      {
         return new §]m§(this,param1 as §!P§,new Sprite(),param2,param3,param4);
      }
      
      override protected function initThemeGraphicsManager() : §-!^§
      {
         return new §8!§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§#"=§,§?_§(§!d§));
      }
      
      override protected function initThemeSoundsManager() : §-!^§
      {
         return null;
      }
      
      override protected function initCutSceneManager() : §-!^§
      {
         return new §8!§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§#"=§,§?_§(§!d§));
      }
      
      override protected function initAnimationManager(param1:§6a§) : static
      {
         return new §;!=§(param1);
      }
      
      override protected function levelInitialized() : void
      {
         §>!;§();
      }
      
      override public function getCurrentLevelData() : §2#§
      {
         var _loc1_:§2#§ = new §;!L§();
         _loc1_.scoreGold = §[!!§.scoreGold;
         _loc1_.scoreSilver = §[!!§.scoreSilver;
         §&j§.writeCameraInformation(_loc1_);
         §9!-§.writeObjectInformation(_loc1_);
         §2!j§.writeSlingshotInformation(_loc1_);
         _loc1_.theme = §""4§.getCurrentThemeName();
         return _loc1_;
      }
      
      protected function § "4§(param1:String) : Texture
      {
         var _loc2_:Texture = null;
         switch(param1)
         {
            case §97§.§#!"§:
               _loc2_ = textureManager.getTexture("TRAIL_AIM_GREEN").texture;
               break;
            case §#q§.§#!"§:
               _loc2_ = textureManager.getTexture("TRAIL_AIM_BOMB").texture;
               break;
            case §"!6§.§#!"§:
               _loc2_ = textureManager.getTexture("TRAIL_AIM_BLUE").texture;
               break;
            case §;g§.§#!"§:
               _loc2_ = textureManager.getTexture("TRAIL_AIM_LASER").texture;
               break;
            case §1Z§.§#!"§:
               _loc2_ = textureManager.getTexture("TRAIL_AIM_RED").texture;
               break;
            case §"0§.§#!"§:
               _loc2_ = textureManager.getTexture("TRAIL_AIM_LASER").texture;
               break;
            default:
               _loc2_ = textureManager.getTexture("TRAIL_AIM_LASER").texture;
         }
         return _loc2_;
      }
      
      override public function update(param1:Number, param2:Boolean) : Number
      {
         var _loc3_:§'"&§ = null;
         if(§2!j§)
         {
            if(§2!j§.mBirds.length > §2!j§.mNextBirdIndex)
            {
               _loc3_ = §2!j§.mBirds[§2!j§.mNextBirdIndex];
            }
            if(_loc3_ && this.§]!%§ != _loc3_)
            {
               this.§]!%§ = _loc3_;
               this.§8!e§();
            }
         }
         return super.update(param1,param2);
      }
      
      protected function §8!e§() : void
      {
         var _loc1_:Texture = this.§ "4§(this.§]!%§.name);
         if(§"K§)
         {
            if(§"K§.sprite.parent == objects.overlaySprite)
            {
               objects.overlaySprite.removeChild(§"K§.sprite);
            }
            §"K§.dispose();
         }
         §"K§ = new § &§(new Sprite(),_loc1_,§#K§.§5!g§ / 1000,§#K§.§3L§);
         objects.overlaySprite.addChild(§"K§.sprite);
      }
      
      override public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param1 == 10000 && param2 == § 7§.§?A§)
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

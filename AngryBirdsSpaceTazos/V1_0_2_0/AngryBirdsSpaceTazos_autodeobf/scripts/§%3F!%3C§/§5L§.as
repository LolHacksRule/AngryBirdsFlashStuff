package §?!<§
{
   import §'!&§.Sprite;
   import §,§.;
   import §,§.§-!d§;
   import §-!b§.§#q§;
   import §3"$§.Texture;
   import §8!9§.§-!#§;
   import §8!9§.§;!s§;
   import §8o§.§""4§;
   import §8o§.§5"%§;
   import §8o§.§^!L§;
   import §;!0§.§!!#§;
   import §;!0§.§!!X§;
   import §;!0§.;
   import §;!0§.§]w§;
   import §;"=§.§3"=§;
   import §;"=§.§<!8§;
   import §[,§.§ !B§;
   import §[,§.§%B§;
   import §[,§.§&!l§;
   import §[,§.§,!V§;
   import §[,§.§9"=§;
   import §[,§.§>">§;
   import §[,§.§?"7§;
   import §[,§.§]j§;
   import §[,§.§^"§;
   import §[r§.§ use§;
   import §[r§.§6c§;
   import flash.display.Stage;
   
   public class §5L§ extends §@"-§
   {
       
      
      protected var §31§:§6"3§;
      
      public function §5L§(param1:Stage, param2:§3"=§, param3:§,§.§#0§, param4:§;!0§.§#2§)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function initializeLevelObjectManager(param1:§!!X§) : §]j§
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:§#q§ = null;
         var _loc2_:String = §-!d§.§`"=§;
         if(param1 is §!!#§)
         {
            _loc3_ = "";
            _loc4_ = "";
            if(_loc5_ = §]"3§ as §#q§)
            {
               _loc3_ = _loc5_.§%!I§;
               _loc4_ = _loc5_.§""E§;
            }
            return this.§,!F§(param1,_loc2_,_loc3_,_loc4_);
         }
         return super.initializeLevelObjectManager(param1);
      }
      
      override protected function initializeLevelCamera(param1:§!!X§) : § use§
      {
         return new §6c§(this,param1);
      }
      
      override protected function initializeLevelSlingshot(param1:§!!X§) : §&V§
      {
         return new §7!r§(this,param1,new Sprite());
      }
      
      protected function §,!F§(param1:§!!X§, param2:String, param3:String = "", param4:String = "") : §,!V§
      {
         return new §,!V§(this,param1 as §!!#§,new Sprite(),param2,param3,param4);
      }
      
      override protected function initThemeGraphicsManager() : §^!L§
      {
         return new §;!s§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§,W§,§<!8§(§@1§));
      }
      
      override protected function initThemeSoundsManager() : §^!L§
      {
         return null;
      }
      
      override protected function initCutSceneManager() : §^!L§
      {
         return new §;!s§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§,W§,§<!8§(§@1§));
      }
      
      override protected function initAnimationManager(param1:§5"%§) : §""4§
      {
         return new §-!#§(param1);
      }
      
      override protected function levelInitialized() : void
      {
         §6!P§();
      }
      
      override public function getCurrentLevelData() : §!!X§
      {
         var _loc1_:§!!X§ = new §]w§();
         _loc1_.scoreGold = §0!9§.scoreGold;
         _loc1_.scoreSilver = §0!9§.scoreSilver;
         §=5§.writeCameraInformation(_loc1_);
         §#!u§.writeObjectInformation(_loc1_);
         §]v§.writeSlingshotInformation(_loc1_);
         _loc1_.theme = §]"3§.getCurrentThemeName();
         return _loc1_;
      }
      
      protected function §["7§(param1:String) : Texture
      {
         var _loc2_:Texture = null;
         switch(param1)
         {
            case §^"§.§2_§:
               _loc2_ = textureManager.getTexture("TRAIL_AIM_GREEN").texture;
               break;
            case §%B§.§2_§:
               _loc2_ = textureManager.getTexture("TRAIL_AIM_BOMB").texture;
               break;
            case §&!l§.§2_§:
               _loc2_ = textureManager.getTexture("TRAIL_AIM_BLUE").texture;
               break;
            case §>">§.§2_§:
               _loc2_ = textureManager.getTexture("TRAIL_AIM_LASER").texture;
               break;
            case §9"=§.§2_§:
               _loc2_ = textureManager.getTexture("TRAIL_AIM_RED").texture;
               break;
            case § !B§.§2_§:
               _loc2_ = textureManager.getTexture("TRAIL_AIM_LASER").texture;
               break;
            default:
               _loc2_ = textureManager.getTexture("TRAIL_AIM_LASER").texture;
         }
         return _loc2_;
      }
      
      override public function update(param1:Number, param2:Boolean) : Number
      {
         var _loc3_:§6"3§ = null;
         if(§]v§)
         {
            if(§]v§.mBirds.length > §]v§.mNextBirdIndex)
            {
               _loc3_ = §]v§.mBirds[§]v§.mNextBirdIndex];
            }
            if(_loc3_ && this.§31§ != _loc3_)
            {
               this.§31§ = _loc3_;
               this.§=! §();
            }
         }
         return super.update(param1,param2);
      }
      
      protected function §=! §() : void
      {
         var _loc1_:Texture = this.§["7§(this.§31§.name);
         if(§4!'§)
         {
            if(§4!'§.sprite.parent == objects.overlaySprite)
            {
               objects.overlaySprite.removeChild(§4!'§.sprite);
            }
            §4!'§.dispose();
         }
         §4!'§ = new § S§(new Sprite(),_loc1_,§?"7§.§30§ / 1000,§?"7§.§4!_§);
         objects.overlaySprite.addChild(§4!'§.sprite);
      }
      
      override public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param1 == 10000 && param2 == §8R§.§!d§)
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

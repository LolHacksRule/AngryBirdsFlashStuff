package §3R§
{
   import §#!5§.§@"8§;
   import §&!3§.§0!W§;
   import §&!3§.§5!f§;
   import §'@§.Texture;
   import §4",§.§&!q§;
   import §4",§.§,!j§;
   import §4",§.§3v§;
   import §4",§.§;"%§;
   import §4"@§.Sprite;
   import §5"D§.§!"F§;
   import §5"D§.§"B§;
   import §5"D§.§%!!§;
   import §5"D§.§&!,§;
   import §5"D§.§3!3§;
   import §5"D§.§9!-§;
   import §5"D§.§<!9§;
   import §5"D§.§=r§;
   import §5"D§.§[3§;
   import §6!M§.§1",§;
   import §6!M§.§8"3§;
   import §7!m§.§-!+§;
   import §7!m§.§@!u§;
   import §<!<§.§0`§;
   import §<!<§.§1!q§;
   import §^e§.§0"1§;
   import §^e§.§1"B§;
   import §^e§.§?!D§;
   import flash.display.Stage;
   
   public class §]!F§ extends §`f§
   {
       
      
      protected var §7!i§:§;!h§;
      
      public function §]!F§(param1:Stage, param2:§8"3§, param3:§0`§, param4:§,!j§)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function initializeLevelObjectManager(param1:§3v§) : §3!3§
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:§@"8§ = null;
         var _loc2_:String = §1!q§.§;$§;
         if(param1 is §;"%§)
         {
            _loc3_ = "";
            _loc4_ = "";
            if(_loc5_ = §+^§ as §@"8§)
            {
               _loc3_ = _loc5_.§?N§;
               _loc4_ = _loc5_.§;9§;
            }
            return this.§;v§(param1,_loc2_,_loc3_,_loc4_);
         }
         return super.initializeLevelObjectManager(param1);
      }
      
      override protected function initializeLevelCamera(param1:§3v§) : §0!W§
      {
         return new §5!f§(this,param1);
      }
      
      override protected function initializeLevelSlingshot(param1:§3v§) : §,@§
      {
         return new §&"$§(this,param1,new Sprite());
      }
      
      protected function §;v§(param1:§3v§, param2:String, param3:String = "", param4:String = "") : §=r§
      {
         return new §=r§(this,param1 as §;"%§,new Sprite(),param2,param3,param4);
      }
      
      override protected function initThemeGraphicsManager() : §1"B§
      {
         return new §@!u§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§]m§,§1",§(§2!?§));
      }
      
      override protected function initThemeSoundsManager() : §1"B§
      {
         return null;
      }
      
      override protected function initCutSceneManager() : §1"B§
      {
         return new §@!u§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§]m§,§1",§(§2!?§));
      }
      
      override protected function initAnimationManager(param1:§0"1§) : §?!D§
      {
         return new §-!+§(param1);
      }
      
      override protected function levelInitialized() : void
      {
         § 0§();
      }
      
      override public function getCurrentLevelData() : §3v§
      {
         var _loc1_:§3v§ = new §&!q§();
         _loc1_.scoreGold = §6!`§.scoreGold;
         _loc1_.scoreSilver = §6!`§.scoreSilver;
         §&F§.writeCameraInformation(_loc1_);
         §&"!§.writeObjectInformation(_loc1_);
         §6"'§.writeSlingshotInformation(_loc1_);
         _loc1_.theme = §+^§.getCurrentThemeName();
         return _loc1_;
      }
      
      protected function §;=§(param1:String) : Texture
      {
         var _loc2_:Texture = null;
         switch(param1)
         {
            case §!"F§.§8p§:
               _loc2_ = textureManager.getTexture("TRAIL_AIM_GREEN").texture;
               break;
            case §[3§.§8p§:
               _loc2_ = textureManager.getTexture("TRAIL_AIM_BOMB").texture;
               break;
            case §"B§.§8p§:
               _loc2_ = textureManager.getTexture("TRAIL_AIM_BLUE").texture;
               break;
            case §<!9§.§8p§:
               _loc2_ = textureManager.getTexture("TRAIL_AIM_LASER").texture;
               break;
            case §%!!§.§8p§:
               _loc2_ = textureManager.getTexture("TRAIL_AIM_RED").texture;
               break;
            case §&!,§.§8p§:
               _loc2_ = textureManager.getTexture("TRAIL_AIM_LASER").texture;
               break;
            default:
               _loc2_ = textureManager.getTexture("TRAIL_AIM_LASER").texture;
         }
         return _loc2_;
      }
      
      override public function update(param1:Number, param2:Boolean) : Number
      {
         var _loc3_:§;!h§ = null;
         if(§6"'§)
         {
            if(§6"'§.mBirds.length > §6"'§.mNextBirdIndex)
            {
               _loc3_ = §6"'§.mBirds[§6"'§.mNextBirdIndex];
            }
            if(_loc3_ && this.§7!i§ != _loc3_)
            {
               this.§7!i§ = _loc3_;
               this.§"O§();
            }
         }
         return super.update(param1,param2);
      }
      
      protected function §"O§() : void
      {
         var _loc1_:Texture = this.§;=§(this.§7!i§.name);
         if(§["9§)
         {
            if(§["9§.sprite.parent == objects.overlaySprite)
            {
               objects.overlaySprite.removeChild(§["9§.sprite);
            }
            §["9§.dispose();
         }
         §["9§ = new §;5§(new Sprite(),_loc1_,§9!-§.§5">§ / 1000,§9!-§.§5"F§);
         objects.overlaySprite.addChild(§["9§.sprite);
      }
      
      override public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param1 == 10000 && param2 == §+7§.§@e§)
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

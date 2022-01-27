package §"§#0
{
   import §!!k§.§0!B§;
   import §!!k§.§7!s§;
   import §!!k§.§@'§;
   import §!r§.§%2§;
   import §!r§.§9"f§;
   import §""c§.§=!Y§;
   import §#g§.§2"m§;
   import §#g§.§]4§;
   import §+=§.§<T§;
   import §+d§.§0#&§;
   import §,B§.§7!J§;
   import §4"L§.§9"#§;
   import §`!v§.§5!R§;
   import §`!v§.§8X§;
   import flash.display.Stage;
   import §null §.§'!k§;
   import §null §.§5#§;
   import §null §.§>#-§;
   import §use§.Sprite;
   
   public class §`#&§ extends §+# §
   {
      
      public static const §!"Z§:§0#&§ = new §0#&§(8 - 3);
       
      
      protected var §%!<§:§7!s§;
      
      protected var §9"O§:§7!s§;
      
      public function §`#&§(param1:Stage, param2:§2"m§, param3:§5!R§, param4:§5#§)
      {
         super(param1,param2,param3,param4);
         §-"-§("Boss_TrenchRun",§7!J§);
      }
      
      override public function get damageScoreMultiplier() : int
      {
         return §`#&§.§!"Z§.getValue();
      }
      
      override protected function initializeLevelObjectManager(param1:§>#-§) : §9"f§
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:§=!Y§ = null;
         var _loc2_:String = §8X§.§ W§;
         if(param1 is §'!k§)
         {
            _loc3_ = "";
            _loc4_ = "";
            if(_loc5_ = §3"k§ as §=!Y§)
            {
               _loc3_ = _loc5_.§?#"§;
               _loc4_ = _loc5_.§1#%§;
            }
            return this.initializeLevelObjectManagerBlack(param1,_loc2_,_loc3_,_loc4_);
         }
         return super.initializeLevelObjectManager(param1);
      }
      
      protected function initializeLevelObjectManagerBlack(param1:§>#-§, param2:String, param3:String = "", param4:String = "") : §%2§
      {
         return new §%2§(this,param1 as §'!k§,new Sprite(),param2,param3,param4);
      }
      
      override protected function initThemeGraphicsManager() : §@'§
      {
         return new §9"#§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§'""§,§]4§(§7W§));
      }
      
      override protected function initThemeSoundsManager() : §@'§
      {
         return new §9"#§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§'""§,§]4§(§7W§),false);
      }
      
      override protected function initCutSceneManager() : §@'§
      {
         return new §9"#§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§'""§,§]4§(§7W§));
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
      
      override protected function initializeLevelSlingshot(param1:§>#-§) : §%#7§
      {
         return new §8!U§(this,param1,new Sprite());
      }
      
      override public function get backgroundTextureManager() : §0!B§
      {
         if(this.§%!<§)
         {
            this.§%!<§.reset();
         }
         else
         {
            this.§%!<§ = new §7!s§();
         }
         this.§%!<§.§;"z§(super.backgroundTextureManager);
         this.§%!<§.§;"z§(super.textureManager);
         return this.§%!<§;
      }
      
      override public function get textureManager() : §0!B§
      {
         if(this.§9"O§)
         {
            this.§9"O§.reset();
         }
         else
         {
            this.§9"O§ = new §7!s§();
         }
         this.§9"O§.§;"z§(super.textureManager);
         this.§9"O§.§;"z§(super.backgroundTextureManager);
         return this.§9"O§;
      }
      
      override protected function getSpriteSheetGroup(param1:§<T§) : int
      {
         var _loc2_:String = param1.name.toLowerCase();
         if(_loc2_.indexOf("bird") >= 0 || _loc2_.indexOf("pig") >= 0)
         {
            return 1;
         }
         if(_loc2_.indexOf("blocks") >= 0 || _loc2_.indexOf("decorations") >= 0)
         {
            return 2;
         }
         return 0;
      }
   }
}

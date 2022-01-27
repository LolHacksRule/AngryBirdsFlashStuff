package §5!q§
{
   import §'"b§.§%"x§;
   import §+"f§.§+!0§;
   import §+"f§.§[_§;
   import §,#+§.§7!m§;
   import §,#+§.§<U§;
   import §,#+§.§="l§;
   import §1"s§.Sprite;
   import §3"$§.§"7§;
   import §3"$§.§&"0§;
   import §3"$§.§1"B§;
   import §6"C§.§>#%§;
   import §6"R§.§,"z§;
   import §6"R§.§super§;
   import §7!S§.§ !x§;
   import §7§.§21§;
   import §7A§.§<1§;
   import §>P§.§!!O§;
   import §>P§.§+"o§;
   import flash.display.Stage;
   
   public class §%b§ extends §0"w§
   {
      
      public static const §#"U§:§<1§ = new §<1§(8 - 3);
       
      
      protected var §9#2§:§1"B§;
      
      protected var §-!a§:§1"B§;
      
      public function §%b§(param1:Stage, param2:§!!O§, param3:§+!0§, param4:§7!m§)
      {
         super(param1,param2,param3,param4);
         §["@§("Boss_TrenchRun",§%"x§);
      }
      
      override public function get damageScoreMultiplier() : int
      {
         return §%b§.§#"U§.getValue();
      }
      
      override protected function initializeLevelObjectManager(param1:§<U§) : §super§
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:§ !x§ = null;
         var _loc2_:String = §[_§.§+!3§;
         if(param1 is §="l§)
         {
            _loc3_ = "";
            _loc4_ = "";
            if(_loc5_ = §!A§ as § !x§)
            {
               _loc3_ = _loc5_.§-!2§;
               _loc4_ = _loc5_.§]j§;
            }
            return this.initializeLevelObjectManagerBlack(param1,_loc2_,_loc3_,_loc4_);
         }
         return super.initializeLevelObjectManager(param1);
      }
      
      protected function initializeLevelObjectManagerBlack(param1:§<U§, param2:String, param3:String = "", param4:String = "") : §,"z§
      {
         return new §,"z§(this,param1 as §="l§,new Sprite(),param2,param3,param4);
      }
      
      override protected function initThemeGraphicsManager() : §"7§
      {
         return new §>#%§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§ !p§,§+"o§(§#"§));
      }
      
      override protected function initThemeSoundsManager() : §"7§
      {
         return new §>#%§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§ !p§,§+"o§(§#"§),false);
      }
      
      override protected function initCutSceneManager() : §"7§
      {
         return new §>#%§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§ !p§,§+"o§(§#"§));
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
      
      override protected function initializeLevelSlingshot(param1:§<U§) : §-R§
      {
         return new §=&§(this,param1,new Sprite());
      }
      
      override public function get backgroundTextureManager() : §&"0§
      {
         if(this.§9#2§)
         {
            this.§9#2§.reset();
         }
         else
         {
            this.§9#2§ = new §1"B§();
         }
         this.§9#2§.§ l§(super.backgroundTextureManager);
         this.§9#2§.§ l§(super.textureManager);
         return this.§9#2§;
      }
      
      override public function get textureManager() : §&"0§
      {
         if(this.§-!a§)
         {
            this.§-!a§.reset();
         }
         else
         {
            this.§-!a§ = new §1"B§();
         }
         this.§-!a§.§ l§(super.textureManager);
         this.§-!a§.§ l§(super.backgroundTextureManager);
         return this.§-!a§;
      }
      
      override protected function getSpriteSheetGroup(param1:§21§) : int
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

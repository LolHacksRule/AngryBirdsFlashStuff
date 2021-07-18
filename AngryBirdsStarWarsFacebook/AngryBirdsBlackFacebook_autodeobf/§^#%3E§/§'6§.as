package §^#>§
{
   import § #§.§]p§;
   import §!!U§.Sprite;
   import §1!i§.§;7§;
   import §2"Y§.§"#`§;
   import §2"Y§.§,§;
   import §2d§.§;H§;
   import §69§.§!!u§;
   import §69§.§4!e§;
   import §7!F§.§+W§;
   import §7!F§.§1x§;
   import §7!F§.§7§;
   import §7P§.§;=§;
   import §7P§.§^!K§;
   import §9#@§.§1"6§;
   import §?m§.§+"2§;
   import §?m§.§8!B§;
   import §?m§.§=!z§;
   import §finally§.§<V§;
   import flash.display.Stage;
   
   public class §'6§ extends §;!;§
   {
      
      public static const §#!B§:§;7§ = new §;7§(8 - 3);
       
      
      protected var §<6§:§+W§;
      
      protected var §,"!§:§+W§;
      
      public function §'6§(param1:Stage, param2:§,#5§, param3:§!!u§, param4:§+"2§)
      {
         super(param1,param2,param3,param4);
         §?!5§("Boss_TrenchRun",§]p§);
      }
      
      override public function get damageScoreMultiplier() : int
      {
         return §'6§.§#!B§.getValue();
      }
      
      override protected function initializeLevelObjectManager(param1:§8!B§) : §;=§
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:§1"6§ = null;
         var _loc2_:String = §4!e§.§0!K§;
         if(param1 is §=!z§)
         {
            _loc3_ = "";
            _loc4_ = "";
            if(_loc5_ = §1!C§ as §1"6§)
            {
               _loc3_ = _loc5_.§?c§;
               _loc4_ = _loc5_.§ "&§;
            }
            return this.initializeLevelObjectManagerBlack(param1,_loc2_,_loc3_,_loc4_);
         }
         return super.initializeLevelObjectManager(param1);
      }
      
      protected function initializeLevelObjectManagerBlack(param1:§8!B§, param2:String, param3:String = "", param4:String = "") : §^!K§
      {
         return new §^!K§(this,param1 as §=!z§,new Sprite(),param2,param3,param4);
      }
      
      override protected function initThemeGraphicsManager() : §1x§
      {
         return new §<V§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§+!b§,§"#`§(§?4§));
      }
      
      override protected function initThemeSoundsManager() : §1x§
      {
         return new §<V§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§+!b§,§"#`§(§?4§),false);
      }
      
      override protected function initCutSceneManager() : §1x§
      {
         return new §<V§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§+!b§,§"#`§(§?4§));
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
      
      override protected function initializeLevelSlingshot(param1:§8!B§) : §;x§
      {
         return new § !Y§(this,param1,new Sprite());
      }
      
      override public function get backgroundTextureManager() : §7#5§
      {
         if(this.§<6§)
         {
            this.§<6§.reset();
         }
         else
         {
            this.§<6§ = new §+W§();
         }
         this.§<6§.§+#T§(super.backgroundTextureManager);
         this.§<6§.§+#T§(super.textureManager);
         return this.§<6§;
      }
      
      override public function get textureManager() : §7#5§
      {
         if(this.§,"!§)
         {
            this.§,"!§.reset();
         }
         else
         {
            this.§,"!§ = new §+W§();
         }
         this.§,"!§.§+#T§(super.textureManager);
         this.§,"!§.§+#T§(super.backgroundTextureManager);
         return this.§,"!§;
      }
      
      override protected function getSpriteSheetGroup(param1:§;H§) : int
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

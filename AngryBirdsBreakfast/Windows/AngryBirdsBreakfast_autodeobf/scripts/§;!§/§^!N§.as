package §;!§
{
   import §"n§.§!!G§;
   import §&v§.§#!R§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §<G§.§2C§;
   import §[!i§.§-!`§;
   import com.angrybirds.§&!"§;
   
   public class §^!N§ extends §;" §
   {
      
      public static const §-!q§:String = "LanguageSelectionState";
       
      
      public function §^!N§(param1:§5!Y§, param2:§6h§, param3:§#!R§, param4:Boolean = true, param5:String = "LanguageSelectionState")
      {
         super(param1,param4,param5,param2);
      }
      
      protected function §`!K§() : XML
      {
         var _loc1_:XML = §#"0§.§+#§.Views.ViewLanguageSelection[0];
         return §4!=§.§'!u§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         §?P§ = new §2W§(this);
         §?P§.init(this.§`!K§());
         §?P§.movieClip.cacheAsBitmap = true;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         var _loc2_:String = (§6!!§.singleton as §4!=§).§?!b§.§'!]§();
         if(_loc2_)
         {
            §!!G§.§2Z§.setLanguage(_loc2_);
            §-!]§.setLanguage(_loc2_);
            §<f§(§`B§.§-!q§);
            return;
         }
         §&!"§.§1!D§.§"!Q§(false);
         this.updateLocalization();
         §6!!§.singleton.§%![§.openPopup(new §-!`§(§?P§.container));
         (§6!!§.singleton as §4!=§).§"!<§();
      }
      
      override public function updateLocalization() : void
      {
         §!!G§.§2Z§.updateTextFields(§?P§.container,"LanguageSelectionState");
      }
      
      private function §0t§(param1:String) : void
      {
         §!!G§.§2Z§.setLanguage(param1);
         §-!]§.setLanguage(param1);
         param1 = §!!G§.§2Z§.§-`§();
         §2C§.§^!A§("language",param1);
      }
   }
}

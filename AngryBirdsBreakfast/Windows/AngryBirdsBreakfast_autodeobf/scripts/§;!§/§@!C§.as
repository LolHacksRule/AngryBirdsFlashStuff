package §;!§
{
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §[!i§.§2"-§;
   import com.angrybirds.§&!"§;
   
   public class §@!C§ extends §;" §
   {
      
      public static const §-!q§:String = "LevelEndFailStateRio";
       
      
      private var §!!=§:§2"-§;
      
      public function §@!C§(param1:§5!Y§, param2:Boolean, param3:String, param4:§6h§)
      {
         super(param1,param2,param3,param4);
         this.§!!=§ = new §2"-§(this);
      }
      
      override protected function init() : void
      {
         §?P§ = new §2W§(this);
         §?P§.init(this.§`!K§());
         §?P§.movieClip.cacheAsBitmap = true;
      }
      
      protected function §`!K§() : XML
      {
         return §#"0§.§+#§.Views.ViewLevelEndFailCustom[0];
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §6!!§.singleton.§%![§.§[!"§();
         §6!!§.singleton.§%![§.openPopup(this.§!!=§,false,false);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §&!"§.§1!D§.clearLevel();
         }
         this.§!!=§.update(param1);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      public function §8!w§() : String
      {
         return §[j§.§-!q§;
      }
      
      public function §0!Z§() : String
      {
         return §4!9§.§-!q§;
      }
      
      public function §=!V§(param1:String) : void
      {
         §<f§(param1);
      }
      
      public function get §@!R§() : §5!Y§
      {
         return §&" §;
      }
      
      public function §[H§() : void
      {
         §&" §.loadLevel(§&" §.getValidLevelId(this.§@!R§.getNextLevelId()));
         §<f§(§[j§.§-!q§);
      }
   }
}

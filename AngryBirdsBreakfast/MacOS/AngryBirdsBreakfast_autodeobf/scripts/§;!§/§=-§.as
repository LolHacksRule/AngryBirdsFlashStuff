package §;!§
{
   import § ^§.§`!2§;
   import §"n§.§!!G§;
   import §&v§.§#!R§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §[!i§.§1v§;
   import com.angrybirds.§&!"§;
   
   public class §=-§ extends §;" §
   {
      
      public static const §-!q§:String = "LevelEndStateRio";
       
      
      private var §!!=§:§1v§;
      
      public function §=-§(param1:§5!Y§, param2:Boolean, param3:String, param4:§6h§, param5:§#!R§)
      {
         super(param1,param2,param3,param4);
         this.§!!=§ = new §1v§(this,param5);
      }
      
      protected function §`!K§() : XML
      {
         return §#"0§.§+#§.Views.ViewLevelEndCustom[0];
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
         §6!!§.singleton.§%![§.§[!"§();
         §6!!§.singleton.§%![§.openPopup(this.§!!=§);
         §!!G§.§2Z§.updateTextFields(§?P§.container,"StateEnd");
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§!!=§.isOpen)
         {
            this.§!!=§.update(param1);
         }
         if(nextState.length > 0)
         {
            §&!"§.§1!D§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      public function §=!2§() : String
      {
         return §[j§.§-!q§;
      }
      
      public function §@y§() : String
      {
         return §`B§.§-!q§;
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
         var _loc1_:String = this.§@!R§.getNextLevelId();
         var _loc2_:String = !!_loc1_ ? §&" §.getValidLevelId(this.§@!R§.getNextLevelId()) : null;
         if(!_loc1_ || §`!2§.§'!d§(_loc2_))
         {
            §&" §.loadLevel(_loc2_);
            §<f§(StateCutScene.§-!q§);
         }
         else
         {
            §<f§(§+A§.§-!q§);
         }
      }
   }
}

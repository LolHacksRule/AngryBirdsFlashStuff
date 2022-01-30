package §,#§
{
   import §!"+§.§2!H§;
   import §"!G§.§3!f§;
   import §%f§.§[@§;
   import §&!>§.§2!V§;
   import §5<§.§58§;
   import §5<§.§8!1§;
   import §8!e§.§3"&§;
   import §?I§.§?!>§;
   import com.angrybirds.§4"6§;
   
   public class §?%§ extends §@!4§
   {
      
      public static const §'u§:String = "LevelEndStateRio";
       
      
      private var §>R§:§?!>§;
      
      public function §?%§(param1:§3"&§, param2:Boolean, param3:String, param4:§3!f§, param5:§2!H§)
      {
         super(param1,param2,param3,param4);
         this.§>R§ = new §?!>§(this,param5);
      }
      
      protected function §'!N§() : XML
      {
         return §8!1§.§31§.Views.ViewLevelEndCustom[0];
      }
      
      override protected function init() : void
      {
         super.init();
         §^!6§ = new §58§(this);
         §^!6§.init(this.§'!N§());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §-O§.§5!1§.§-6§.closeAllPopups();
         §-O§.§5!1§.§-6§.openPopup(this.§>R§);
         §[@§.§"e§.updateTextFields(§^!6§.container,"StateEnd");
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§>R§.isOpen)
         {
            this.§>R§.update(param1);
         }
         if(nextState.length > 0)
         {
            §4"6§.§;!k§.clearLevel();
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
      
      public function §1""§() : String
      {
         return § K§.§'u§;
      }
      
      public function §3<§() : String
      {
         return §'!&§.§'u§;
      }
      
      public function §7I§(param1:String) : void
      {
         §'"6§(param1);
      }
      
      public function get §4!d§() : §3"&§
      {
         return §!3§;
      }
      
      public function § !_§() : void
      {
         var _loc1_:String = this.§4!d§.getNextLevelId();
         var _loc2_:String = !!_loc1_ ? §!3§.getValidLevelId(this.§4!d§.getNextLevelId()) : null;
         if(!_loc1_ || §2!V§.§"L§(_loc2_))
         {
            §!3§.loadLevel(_loc2_);
            §'"6§(StateCutScene.§'u§);
         }
         else
         {
            §'"6§(§=%§.§'u§);
         }
      }
   }
}

package §6!5§
{
   import § !T§.§ q§;
   import § ,§.§>u§;
   import §%z§.§?8§;
   import §&_§.§%y§;
   import §2W§.§+!d§;
   import §63§.§^!!§;
   import §^!`§.§#p§;
   import §^!`§.§-"5§;
   import com.angrybirds.§6!E§;
   
   public class §84§ extends §3!3§
   {
      
      public static const §7w§:String = "LevelEndStateRio";
       
      
      private var §8p§:§%y§;
      
      public function §84§(param1:§ q§, param2:Boolean, param3:String, param4:§>u§, param5:§?8§)
      {
         super(param1,param2,param3,param4);
         this.§8p§ = new §%y§(this,param5);
      }
      
      protected function §;!<§() : XML
      {
         return §#p§.§'"0§.Views.ViewLevelEndCustom[0];
      }
      
      override protected function init() : void
      {
         super.init();
         § !z§ = new §-"5§(this);
         § !z§.init(this.§;!<§());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §-!I§.§[f§.§@!C§.closeAllPopups();
         §-!I§.§[f§.§@!C§.openPopup(this.§8p§);
         §+!d§.§<"5§.updateTextFields(§ !z§.container,"StateEnd");
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§8p§.isOpen)
         {
            this.§8p§.update(param1);
         }
         if(nextState.length > 0)
         {
            §6!E§.§7I§.clearLevel();
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
      
      public function §0O§() : String
      {
         return §4!R§.§7w§;
      }
      
      public function §"!R§() : String
      {
         return §^;§.§7w§;
      }
      
      public function §2J§(param1:String) : void
      {
         §?n§(param1);
      }
      
      public function get §+!t§() : § q§
      {
         return §="4§;
      }
      
      public function §8!w§() : void
      {
         var _loc1_:String = this.§+!t§.getNextLevelId();
         var _loc2_:String = !!_loc1_ ? §="4§.getValidLevelId(this.§+!t§.getNextLevelId()) : null;
         if(!_loc1_ || §^!!§.§=!"§(_loc2_))
         {
            §="4§.loadLevel(_loc2_);
            §?n§(StateCutScene.§7w§);
         }
         else
         {
            §?n§(§^!+§.§7w§);
         }
      }
   }
}

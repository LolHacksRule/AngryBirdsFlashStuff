package §?!E§
{
   import §%9§.§&"#§;
   import §'<§.§=!o§;
   import §-!G§.§!!Y§;
   import §02§.§+!b§;
   import §02§.§`%§;
   import §5!7§.§<"2§;
   import §;!b§.§%>§;
   import §`6§.§!!]§;
   import com.angrybirds.§6U§;
   
   public class §6^§ extends §5"#§
   {
      
      public static const §+B§:String = "LevelEndStateRio";
       
      
      private var §9! §:§&"#§;
      
      public function §6^§(param1:§=!o§, param2:Boolean, param3:String, param4:§%>§, param5:§<"2§)
      {
         super(param1,param2,param3,param4);
         this.§9! § = new §&"#§(this,param5);
      }
      
      protected function §^!!§() : XML
      {
         return §+!b§.§#!P§.Views.ViewLevelEndCustom[0];
      }
      
      override protected function init() : void
      {
         super.init();
         §#2§ = new §`%§(this);
         §#2§.init(this.§^!!§());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §-!l§.§"x§.§,!W§.closeAllPopups();
         §-!l§.§"x§.§,!W§.openPopup(this.§9! §);
         §!!]§.§?!+§.updateTextFields(§#2§.container,"StateEnd");
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§9! §.isOpen)
         {
            this.§9! §.update(param1);
         }
         if(nextState.length > 0)
         {
            §6U§.§+_§.clearLevel();
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
      
      public function §%!7§() : String
      {
         return §62§.§+B§;
      }
      
      public function §&D§() : String
      {
         return §;!k§.§+B§;
      }
      
      public function §2w§(param1:String) : void
      {
         §0!w§(param1);
      }
      
      public function get §6!N§() : §=!o§
      {
         return §+o§;
      }
      
      public function §`H§() : void
      {
         var _loc1_:String = this.§6!N§.getNextLevelId();
         var _loc2_:String = !!_loc1_ ? §+o§.getValidLevelId(this.§6!N§.getNextLevelId()) : null;
         if(!_loc1_ || §!!Y§.§5!=§(_loc2_))
         {
            §+o§.loadLevel(_loc2_);
            §0!w§(StateCutScene.§+B§);
         }
         else
         {
            §0!w§(§]l§.§+B§);
         }
      }
   }
}

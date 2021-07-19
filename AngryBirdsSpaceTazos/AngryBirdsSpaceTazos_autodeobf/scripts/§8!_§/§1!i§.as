package §8!_§
{
   import § !Y§.§&$§;
   import §"!&§.§8"F§;
   import §%!r§.§3!'§;
   import §,"&§.§9q§;
   import §3C§.§[!E§;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§9"!§;
   
   public class §1!i§ extends §5!&§
   {
      
      public static const STATE_NAME:String = "LevelEndStateRio";
       
      
      private var §?"§:§[!E§;
      
      public function §1!i§(param1:§9"!§, param2:Boolean, param3:String, param4:§3!'§, param5:§8"F§)
      {
         super(param1,param2,param3,param4);
         this.§?"§ = new §[!E§(this,param5);
      }
      
      protected function §!!n§() : XML
      {
         return §-G§.§4+§.Views.ViewLevelEndCustom[0];
      }
      
      override protected function init() : void
      {
         super.init();
         §8!A§ = new §1"F§(this);
         §8!A§.init(this.§!!n§());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         § !g§.§;!'§.§>";§.§@;§();
         § !g§.§;!'§.§>";§.openPopup(this.§?"§);
         §&$§.§[!1§.updateTextFields(§8!A§.container,"StateEnd");
         (§ !g§.§;!'§ as §`Y§).§&,§.§,A§(true);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§?"§.isOpen)
         {
            this.§?"§.update(param1);
         }
         if(nextState.length > 0)
         {
            §9q§.§>!L§.clearLevel();
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
      
      public function §[!V§() : String
      {
         return §?!#§.STATE_NAME;
      }
      
      public function § [§() : String
      {
         return StateEpisodeSelection.STATE_NAME;
      }
      
      public function §+"$§(param1:String) : void
      {
         §8!^§(param1);
      }
      
      public function get §=!+§() : §9"!§
      {
         return §6u§;
      }
      
      public function §@!§() : void
      {
         §6u§.loadLevel(§6u§.getValidLevelId(this.§=!+§.getNextLevelId()));
         §8!^§(§?!#§.STATE_NAME);
      }
   }
}

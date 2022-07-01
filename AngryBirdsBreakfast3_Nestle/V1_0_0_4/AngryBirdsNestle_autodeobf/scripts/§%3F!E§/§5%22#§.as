package §?!E§
{
   import §'<§.§=!o§;
   import §9!a§.§@S§;
   import §;!b§.§%>§;
   import §<!9§.§^!o§;
   
   public class §5"#§ extends §@S§
   {
       
      
      protected var §+o§:§=!o§;
      
      public function §5"#§(param1:§=!o§, param2:Boolean, param3:String, param4:§%>§)
      {
         this.§+o§ = param1;
         super(param2,param3,param4);
      }
      
      public function §6!p§() : void
      {
         this.§+o§.loadLevel(this.§+o§.getNextLevelId());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §-!l§.§"x§.§@!W§.addLocalizationTarget(this);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §-!l§.§"x§.§@!W§.removeLocalizationTarget(this);
      }
      
      override protected function runAnimations(param1:Number) : void
      {
         if(§42§ && §%!0§ != §^!o§.§7!W§ && !§-!l§.§"x§.§,!W§.§7"#§())
         {
            §42§.run(param1);
         }
      }
   }
}

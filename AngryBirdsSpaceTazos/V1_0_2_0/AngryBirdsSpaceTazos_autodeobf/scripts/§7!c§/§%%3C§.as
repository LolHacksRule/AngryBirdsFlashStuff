package §7!c§
{
   import §"!>§.§<!o§;
   import §;!0§.;
   import §@"D§.§#d§;
   import §]n§.§0!g§;
   
   public class §%<§ extends §0!g§
   {
       
      
      protected var §,W§:§#2§;
      
      public function §%<§(param1:§#2§, param2:Boolean, param3:String, param4:§<!o§)
      {
         this.§,W§ = param1;
         super(param2,param3,param4);
      }
      
      public function §0" §() : void
      {
         this.§,W§.loadLevel(this.§,W§.getNextLevelId());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §&!h§.§ u§.§^"5§.addLocalizationTarget(this);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §&!h§.§ u§.§^"5§.removeLocalizationTarget(this);
      }
      
      override protected function runAnimations(param1:Number) : void
      {
         if(§,"4§ && §0"D§ != §#d§.§'C§ && !§&!h§.§ u§.§-"F§.§^X§())
         {
            §,"4§.run(param1);
         }
      }
   }
}

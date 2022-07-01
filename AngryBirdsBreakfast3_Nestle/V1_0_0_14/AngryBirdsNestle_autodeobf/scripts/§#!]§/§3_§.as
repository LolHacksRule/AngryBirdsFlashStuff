package §#!]§
{
   import §7"6§.§^!_§;
   import §?9§.§ x§;
   import §]'§.§'"+§;
   
   public class §3_§ extends § x§
   {
       
      
      protected var §#n§:§-g§;
      
      public function §3_§(param1:§-g§, param2:Boolean, param3:String, param4:§^!_§)
      {
         this.§#n§ = param1;
         super(param2,param3,param4);
      }
      
      public function §4o§() : void
      {
         this.§#n§.loadLevel(this.§#n§.getNextLevelId());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §-!2§.§7O§.§`"6§.addLocalizationTarget(this);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §-!2§.§7O§.§`"6§.removeLocalizationTarget(this);
      }
      
      override protected function runAnimations(param1:Number) : void
      {
         if(§0!Z§ && §,b§ != §'"+§.§49§ && !§-!2§.§7O§.§0!l§.§6!7§())
         {
            §0!Z§.run(param1);
         }
      }
   }
}

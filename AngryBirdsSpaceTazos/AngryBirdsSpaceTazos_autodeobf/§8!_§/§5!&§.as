package §8!_§
{
   import §%!r§.§3!'§;
   import §1%§.§0!3§;
   import §<!X§.§7C§;
   import §`!j§.§9"!§;
   
   public class §5!&§ extends §0!3§
   {
       
      
      protected var §6u§:§9"!§;
      
      public function §5!&§(param1:§9"!§, param2:Boolean, param3:String, param4:§3!'§)
      {
         this.§6u§ = param1;
         super(param2,param3,param4);
      }
      
      public function §?R§() : void
      {
         this.§6u§.loadLevel(this.§6u§.getNextLevelId());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         § !g§.§;!'§.§super§.addLocalizationTarget(this);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         § !g§.§;!'§.§super§.removeLocalizationTarget(this);
      }
      
      override protected function runAnimations(param1:Number) : void
      {
         if(§-!w§ && §0§ != §7C§.§-!Z§ && !§ !g§.§;!'§.§>";§.§^",§())
         {
            §-!w§.run(param1);
         }
      }
   }
}

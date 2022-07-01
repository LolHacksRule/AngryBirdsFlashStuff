package §1!c§
{
   import §%!B§.§0![§;
   import §,M§.§+f§;
   import §37§.§9!c§;
   import §@3§.§]K§;
   
   public class §7X§ extends §9!c§
   {
       
      
      protected var §4a§:§0![§;
      
      public function §7X§(param1:§0![§, param2:Boolean, param3:String, param4:§+f§)
      {
         this.§4a§ = param1;
         super(param2,param3,param4);
      }
      
      public function §2G§() : void
      {
         this.§4a§.loadLevel(this.§4a§.getNextLevelId());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         § !4§.§%"7§.§,$§.addLocalizationTarget(this);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         § !4§.§%"7§.§,$§.removeLocalizationTarget(this);
      }
      
      override protected function runAnimations(param1:Number) : void
      {
         if(§@"+§ && §,!f§ != §]K§.§,"3§ && !§ !4§.§%"7§.§+!J§.§8!5§())
         {
            §@"+§.run(param1);
         }
      }
   }
}

package §6!5§
{
   import § !T§.§ q§;
   import § ,§.§>u§;
   import §"r§.§"j§;
   import §0K§.§&"§;
   
   public class §3!3§ extends §"j§
   {
       
      
      protected var §="4§:§ q§;
      
      public function §3!3§(param1:§ q§, param2:Boolean, param3:String, param4:§>u§)
      {
         this.§="4§ = param1;
         super(param2,param3,param4);
      }
      
      public function § for§() : void
      {
         this.§="4§.loadLevel(this.§="4§.getNextLevelId());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §-!I§.§[f§.§<u§.addLocalizationTarget(this);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §-!I§.§[f§.§<u§.removeLocalizationTarget(this);
      }
      
      override protected function runAnimations(param1:Number) : void
      {
         if(§`!?§ && §2!Z§ != §&"§.§-!j§ && !§-!I§.§[f§.§@!C§.§+!F§())
         {
            §`!?§.run(param1);
         }
      }
   }
}

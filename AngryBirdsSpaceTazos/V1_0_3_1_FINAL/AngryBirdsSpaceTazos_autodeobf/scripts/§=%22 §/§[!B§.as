package §=" §
{
   import §0I§.§<i§;
   import §4",§.§,!j§;
   import §6O§.§6!x§;
   import §71§.§;l§;
   
   public class §[!B§ extends §6!x§
   {
       
      
      protected var §]m§:§,!j§;
      
      public function §[!B§(param1:§,!j§, param2:Boolean, param3:String, param4:§;l§)
      {
         this.§]m§ = param1;
         super(param2,param3,param4);
      }
      
      public function §5u§() : void
      {
         this.§]m§.loadLevel(this.§]m§.getNextLevelId());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §&"<§.§<!7§.§2]§.addLocalizationTarget(this);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §&"<§.§<!7§.§2]§.removeLocalizationTarget(this);
      }
      
      override protected function runAnimations(param1:Number) : void
      {
         if(§&!E§ && §+T§ != §<i§.§9,§ && !§&"<§.§<!7§.§1"0§.§["5§())
         {
            §&!E§.run(param1);
         }
      }
   }
}

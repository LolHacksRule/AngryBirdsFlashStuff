package §,#§
{
   import §"!G§.§3!f§;
   import §#A§.§,!;§;
   import §8!e§.§3"&§;
   import §^C§.§5!L§;
   
   public class §@!4§ extends §5!L§
   {
       
      
      protected var §!3§:§3"&§;
      
      public function §@!4§(param1:§3"&§, param2:Boolean, param3:String, param4:§3!f§)
      {
         this.§!3§ = param1;
         super(param2,param3,param4);
      }
      
      public function §@$§() : void
      {
         this.§!3§.loadLevel(this.§!3§.getNextLevelId());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §-O§.§5!1§.§&"&§.addLocalizationTarget(this);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §-O§.§5!1§.§&"&§.removeLocalizationTarget(this);
      }
      
      override protected function runAnimations(param1:Number) : void
      {
         if(§2`§ && §switch§ != §,!;§.§!!"§ && !§-O§.§5!1§.§-6§.§ !I§())
         {
            §2`§.run(param1);
         }
      }
   }
}

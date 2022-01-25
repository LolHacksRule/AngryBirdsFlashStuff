package §'!3§
{
   import §1!i§.§4z§;
   import §1!i§.§`!t§;
   import §24§.§4!H§;
   
   public class §,!S§ extends §;!o§
   {
      
      private static var §[W§:Class = §1!#§;
       
      
      private var §'w§:Boolean;
      
      public function §,!S§()
      {
         §9p§ = true;
         §]G§ = false;
         §^J§ = true;
         super(§`!t§.§>t§,§4z§.DEFAULT,this.§'!,§());
      }
      
      protected function §'!,§() : XML
      {
         var _loc1_:XML = §4!H§.§7o§(§[W§);
         return AngryBirdsCustom.§9!>§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§'w§ = (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§.§9!Z§;
         if((§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§8!E§())
         {
            (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§;!I§(false);
         }
         else
         {
            (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§2!J§(false);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§'w§)
         {
            if((§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§8!E§())
            {
               (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§;!I§(true);
            }
            else
            {
               (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§2!J§(true);
            }
         }
      }
   }
}

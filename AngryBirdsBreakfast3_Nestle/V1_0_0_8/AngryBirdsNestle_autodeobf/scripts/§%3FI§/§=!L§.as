package §?I§
{
   import § S§.§ !+§;
   import § S§.§4&§;
   import §;4§.§%@§;
   
   public class §=!L§ extends §1>§
   {
      
      private static var §?M§:Class = §2#§;
       
      
      private var §`4§:Boolean;
      
      public function §=!L§()
      {
         §2!b§ = true;
         §@n§ = false;
         §!d§ = true;
         super(§4&§.§""'§,§ !+§.DEFAULT,this.§'!N§());
      }
      
      protected function §'!N§() : XML
      {
         var _loc1_:XML = §%@§.set(§?M§);
         return AngryBirdsCustom.§3!z§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§`4§ = (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!j§.§88§;
         if((§-O§.§5!1§ as AngryBirdsCustom).§9]§.§`!E§())
         {
            (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§+;§(false);
         }
         else
         {
            (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§+$§(false);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§`4§)
         {
            if((§-O§.§5!1§ as AngryBirdsCustom).§9]§.§`!E§())
            {
               (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§+;§(true);
            }
            else
            {
               (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§+$§(true);
            }
         }
      }
   }
}

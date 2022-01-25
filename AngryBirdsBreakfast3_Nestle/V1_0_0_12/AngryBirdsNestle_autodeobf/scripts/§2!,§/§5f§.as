package §2!,§
{
   import §1!s§.§8!f§;
   import §1!s§.§finally§;
   import §8!$§.§1b§;
   
   public class §5f§ extends §,!#§
   {
      
      private static var §@"7§:Class = § !g§;
       
      
      private var §!b§:Boolean;
      
      public function §5f§()
      {
         §&5§ = true;
         §2L§ = false;
         §[!k§ = true;
         super(§8!f§.§"]§,§finally§.DEFAULT,this.§';§());
      }
      
      protected function §';§() : XML
      {
         var _loc1_:XML = §1b§.§?!R§(§@"7§);
         return AngryBirdsCustom.§6-§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§!b§ = (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!+§.§;c§;
         if((§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§;9§())
         {
            (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!§(false);
         }
         else
         {
            (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§%"-§(false);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§!b§)
         {
            if((§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§;9§())
            {
               (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!§(true);
            }
            else
            {
               (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§%"-§(true);
            }
         }
      }
   }
}

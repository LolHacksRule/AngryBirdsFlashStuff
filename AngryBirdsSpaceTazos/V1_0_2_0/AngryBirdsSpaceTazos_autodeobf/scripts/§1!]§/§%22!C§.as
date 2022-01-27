package §1!]§
{
   import §""<§.§=Q§;
   import §"_§.§&r§;
   import §"_§.§3o§;
   
   public class §"!C§ extends §%"%§
   {
      
      private static var §-F§:Class = §5!R§;
       
      
      private var §&!#§:Boolean;
      
      public function §"!C§()
      {
         §&"<§ = true;
         § !z§ = false;
         super(§&r§.§,!4§,§3o§.§0!n§,§=Q§.§%!g§(§-F§));
      }
      
      override protected function init() : void
      {
         super.init();
         this.§&!#§ = (§&!h§.§ u§ as §^"=§).§?P§.§?!,§.§'p§;
         if((§&!h§.§ u§ as §^"=§).§?P§.§`!t§())
         {
            (§&!h§.§ u§ as §^"=§).§?P§.§;j§(false);
         }
         else
         {
            (§&!h§.§ u§ as §^"=§).§?P§.§@!k§(false);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§&!#§)
         {
            if((§&!h§.§ u§ as §^"=§).§?P§.§`!t§())
            {
               (§&!h§.§ u§ as §^"=§).§?P§.§;j§(true);
            }
            else
            {
               (§&!h§.§ u§ as §^"=§).§?P§.§@!k§(true);
            }
         }
      }
   }
}

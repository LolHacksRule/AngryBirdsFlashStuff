package §]!x§
{
   import §-!r§.§'!h§;
   import §-!r§.§>§;
   import §`!w§.§?!U§;
   
   public class §#!x§ extends §5!O§
   {
      
      private static var §2"5§:Class = §4O§;
       
      
      private var §2g§:Boolean;
      
      public function §#!x§()
      {
         §<"5§ = true;
         §8!X§ = false;
         super(§>§.§8!0§,§'!h§.§3"4§,§?!U§.§3!c§(§2"5§));
      }
      
      override protected function init() : void
      {
         super.init();
         this.§2g§ = (§2&§.§6o§ as §@T§).§56§.§`a§.§7"8§;
         if((§2&§.§6o§ as §@T§).§56§.§,1§())
         {
            (§2&§.§6o§ as §@T§).§56§.§,j§(false);
         }
         else
         {
            (§2&§.§6o§ as §@T§).§56§.§&"C§(false);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§2g§)
         {
            if((§2&§.§6o§ as §@T§).§56§.§,1§())
            {
               (§2&§.§6o§ as §@T§).§56§.§,j§(true);
            }
            else
            {
               (§2&§.§6o§ as §@T§).§56§.§&"C§(true);
            }
         }
      }
   }
}

package §3C§
{
   import §0N§.§0!g§;
   import §7!H§.§1#§;
   import §7!H§.§8"6§;
   
   public class §["1§ extends §9!;§
   {
      
      private static var §>!+§:Class = §;t§;
       
      
      private var §package§:Boolean;
      
      public function §["1§()
      {
         §>"2§ = true;
         §1"$§ = false;
         super(§1#§.§1!W§,§8"6§.§ K§,§0!g§.§[!y§(§>!+§));
      }
      
      override protected function init() : void
      {
         super.init();
         this.§package§ = (§ !g§.§;!'§ as §`Y§).§&,§.§9Z§.§%_§;
         if((§ !g§.§;!'§ as §`Y§).§&,§.§ w§())
         {
            (§ !g§.§;!'§ as §`Y§).§&,§.§4"1§(false);
         }
         else
         {
            (§ !g§.§;!'§ as §`Y§).§&,§.§""8§(false);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§package§)
         {
            if((§ !g§.§;!'§ as §`Y§).§&,§.§ w§())
            {
               (§ !g§.§;!'§ as §`Y§).§&,§.§4"1§(true);
            }
            else
            {
               (§ !g§.§;!'§ as §`Y§).§&,§.§""8§(true);
            }
         }
      }
   }
}

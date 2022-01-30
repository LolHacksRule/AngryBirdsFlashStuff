package §&_§
{
   import §0!$§.§2!K§;
   import §5u§.§+!]§;
   import §5u§.§^!=§;
   
   public class §+?§ extends §-"!§
   {
      
      private static var §7"0§:Class = §@"1§;
       
      
      private var §'!C§:Boolean;
      
      public function §+?§()
      {
         §^c§ = true;
         §'[§ = false;
         §null§ = true;
         super(§^!=§.§""2§,§+!]§.DEFAULT,this.§;!<§());
      }
      
      protected function §;!<§() : XML
      {
         var _loc1_:XML = §2!K§.§5i§(§7"0§);
         return AngryBirdsCustom.§>@§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§'!C§ = (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§`G§.§>"'§;
         if((§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§ !`§())
         {
            (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§70§(false);
         }
         else
         {
            (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§&!i§(false);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§'!C§)
         {
            if((§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§ !`§())
            {
               (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§70§(true);
            }
            else
            {
               (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§&!i§(true);
            }
         }
      }
   }
}

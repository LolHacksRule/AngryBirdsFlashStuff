package §`q§
{
   import §=!7§.§%!%§;
   import §[<§.§#!q§;
   import §[<§.§%!T§;
   
   public class §9Q§ extends §'!O§
   {
      
      private static var §0!;§:Class = §[Z§;
       
      
      private var §-_§:Boolean;
      
      public function §9Q§()
      {
         §=!c§ = true;
         §1!b§ = false;
         §0!2§ = true;
         super(§%!T§.§-F§,§#!q§.DEFAULT,this.§@A§());
      }
      
      protected function §@A§() : XML
      {
         var _loc1_:XML = §%!%§.§<!0§(§0!;§);
         return AngryBirdsCustom.§5!g§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§-_§ = (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§[k§.§#!G§;
         if((§&N§.§#Y§ as AngryBirdsCustom).§#A§.§`"1§())
         {
            (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§,v§(false);
         }
         else
         {
            (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§"B§(false);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§-_§)
         {
            if((§&N§.§#Y§ as AngryBirdsCustom).§#A§.§`"1§())
            {
               (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§,v§(true);
            }
            else
            {
               (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§"B§(true);
            }
         }
      }
   }
}

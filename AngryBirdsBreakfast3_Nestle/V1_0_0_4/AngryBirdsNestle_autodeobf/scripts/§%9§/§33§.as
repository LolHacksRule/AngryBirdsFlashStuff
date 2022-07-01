package §%9§
{
   import §"I§.§ !R§;
   import §?N§.§9r§;
   import §?N§.§>!H§;
   
   public class §33§ extends §<a§
   {
      
      private static var §1K§:Class = §?!B§;
       
      
      private var §-H§:Boolean;
      
      public function §33§()
      {
         §?!^§ = true;
         §+!X§ = false;
         §8!^§ = true;
         super(§9r§.§6!L§,§>!H§.DEFAULT,this.§^!!§());
      }
      
      protected function §^!!§() : XML
      {
         var _loc1_:XML = § !R§.§`G§(§1K§);
         return AngryBirdsCustom.§+Z§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§-H§ = (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§,!-§.§[,§;
         if((§-!l§.§"x§ as AngryBirdsCustom).§catch§.§4!2§())
         {
            (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§!!g§(false);
         }
         else
         {
            (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§<<§(false);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§-H§)
         {
            if((§-!l§.§"x§ as AngryBirdsCustom).§catch§.§4!2§())
            {
               (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§!!g§(true);
            }
            else
            {
               (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§<<§(true);
            }
         }
      }
   }
}

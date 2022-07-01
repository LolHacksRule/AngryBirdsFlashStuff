package §@!l§
{
   import § !Q§.§=!3§;
   import §!!`§.§4!f§;
   import §!!`§.§>!&§;
   
   public class §0d§ extends §-"+§
   {
      
      private static var §@!!§:Class = §8!B§;
       
      
      private var §="1§:Boolean;
      
      public function §0d§()
      {
         §@_§ = true;
         §!"6§ = false;
         §>,§ = true;
         super(§>!&§.§99§,§4!f§.DEFAULT,this.§[x§());
      }
      
      protected function §[x§() : XML
      {
         var _loc1_:XML = §=!3§.§0I§(§@!!§);
         return AngryBirdsCustom.§^Z§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§="1§ = (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§<!%§.§3_§;
         if((§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§^D§())
         {
            (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§?q§(false);
         }
         else
         {
            (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§9!X§(false);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§="1§)
         {
            if((§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§^D§())
            {
               (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§?q§(true);
            }
            else
            {
               (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§9!X§(true);
            }
         }
      }
   }
}

package
{
   import § !A§.§"!8§;
   import § !r§.§3!X§;
   import §-!0§.§1^§;
   import §1!F§.§%!A§;
   import §1!F§.§0!u§;
   import §1!F§.§26§;
   import §1!F§.§3S§;
   import §1!F§.§6!$§;
   import §1!F§.§?! §;
   import flash.events.Event;
   
   public class §^p§ extends §#!?§
   {
      
      protected static var §^>§:Class = §9!X§;
      
      protected static var §%&§:Class = §%'§;
       
      
      private var § m§:String = "";
      
      public function §^p§(param1:§"!8§, param2:int, param3:int)
      {
         super(param1,param2,param3);
      }
      
      override protected function getAssetMap() : XML
      {
         return §3!X§.§3<§(§^>§);
      }
      
      override protected function getUIData() : XML
      {
         return §3!X§.§3<§(§%&§);
      }
      
      override protected function initStates() : void
      {
         § Y§(new §3S§(false));
         § Y§(new §6!$§(false));
         § Y§(new §?! §(false));
         § Y§(new §%!A§(false));
         § Y§(new §0!u§(false));
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         §7!p§ = true;
         §1^§.§ ]§ = stage.loaderInfo.parameters.levelDataUrl;
         if(!§1^§.§ ]§)
         {
            §1^§.§ ]§ = "http://head.angrybirds-build.appspot.com/level/public/9a71019f-d717-4910-bfb5-ca2bbd6c6c7e";
         }
         §8!W§(§26§.STATE_NAME);
      }
      
      override public function onInstanceStarting(param1:String) : void
      {
      }
   }
}

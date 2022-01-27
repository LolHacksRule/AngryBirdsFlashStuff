package §0R§
{
   import §4m§.§5!R§;
   import §4m§.§^T§;
   import §<"s§.§0u§;
   import §<"s§.§33§;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   
   public class §@P§ extends §%"!§
   {
       
      
      public function §@P§(param1:UncaughtErrorEvents, param2:String)
      {
         super(param1,param2);
      }
      
      override protected function onError(param1:UncaughtErrorEvent) : void
      {
         var _loc2_:§5!R§ = null;
         super.onError(param1);
         if(§;"@§.singleton && §;"@§.singleton.popupManager)
         {
            _loc2_ = new §33§(§0u§.ERROR,§^T§.DEFAULT);
            §;"@§.singleton.popupManager.openPopup(_loc2_);
         }
      }
   }
}

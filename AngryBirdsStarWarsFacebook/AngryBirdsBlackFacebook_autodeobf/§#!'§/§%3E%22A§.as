package §#!'§
{
   import §!"e§.§>"]§;
   import §!"e§.§`"W§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   
   public class §>"A§ extends §7!>§
   {
       
      
      public function §>"A§(param1:UncaughtErrorEvents, param2:String)
      {
         super(param1,param2);
      }
      
      override protected function onError(param1:UncaughtErrorEvent) : void
      {
         var _loc2_:§[!j§ = null;
         super.onError(param1);
         if(§4#;§.singleton && §4#;§.singleton.popupManager)
         {
            _loc2_ = new §>"]§(§`"W§.ERROR,§+5§.DEFAULT);
            §4#;§.singleton.popupManager.openPopup(_loc2_);
         }
      }
   }
}

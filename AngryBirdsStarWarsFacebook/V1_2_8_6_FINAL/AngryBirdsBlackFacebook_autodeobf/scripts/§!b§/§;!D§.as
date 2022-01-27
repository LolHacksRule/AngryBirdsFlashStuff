package §!b§
{
   import §+"Y§.§,"!§;
   import §+"Y§.§^!S§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   
   public class §;!D§ extends §%""§
   {
       
      
      public function §;!D§(param1:UncaughtErrorEvents, param2:String)
      {
         super(param1,param2);
      }
      
      override protected function onError(param1:UncaughtErrorEvent) : void
      {
         var _loc2_:§3!§ = null;
         super.onError(param1);
         if(§4"#§.singleton && §4"#§.singleton.popupManager)
         {
            _loc2_ = new §,"!§(§^!S§.ERROR,§2!s§.DEFAULT);
            §4"#§.singleton.popupManager.openPopup(_loc2_);
         }
      }
   }
}

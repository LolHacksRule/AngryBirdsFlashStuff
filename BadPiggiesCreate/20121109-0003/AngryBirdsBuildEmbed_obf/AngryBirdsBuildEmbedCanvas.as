package
{
   import flash.events.UncaughtErrorEvent;
   
   public class AngryBirdsBuildEmbedCanvas extends §^f§
   {
       
      
      public function AngryBirdsBuildEmbedCanvas()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      override protected function loadingComplete() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,§[!G§);
            if(_loc2_)
            {
               addr42:
               new §^p§(this,stage.stageWidth,stage.stageHeight);
            }
            return;
         }
         §§goto(addr42);
      }
   }
}

package
{
   import flash.events.UncaughtErrorEvent;
   
   public class AngryBirdsBuildEmbedCanvas extends §^f§
   {
       
      
      public function AngryBirdsBuildEmbedCanvas()
      {
         super();
      }
      
      override protected function loadingComplete() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,§[!G§);
         new §^p§(this,stage.stageWidth,stage.stageHeight);
      }
   }
}

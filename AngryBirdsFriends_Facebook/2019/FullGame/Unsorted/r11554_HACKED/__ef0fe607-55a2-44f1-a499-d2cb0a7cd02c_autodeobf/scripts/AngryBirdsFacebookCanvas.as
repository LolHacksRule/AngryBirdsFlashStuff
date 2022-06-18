package
{
   import §+#B§.§4$7§;
   import §+#B§.§5"w§;
   import §8#?§.§!!y§;
   import flash.events.Event;
   
   public class AngryBirdsFacebookCanvas extends §!!y§
   {
      
      public static const §%#F§:String = "r11554";
       
      
      public function AngryBirdsFacebookCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         }
      }
      
      private function init() : void
      {
         §4$7§.§!#Y§(stage,"UA-23082676-15");
         §5"w§.§'!k§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§%!,§);
         }
         else
         {
            this.§]"m§();
         }
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.init();
      }
      
      private function §%!,§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§%!,§);
         this.§]"m§();
      }
      
      protected function §]"m§() : void
      {
         new §'"a§(this);
      }
   }
}

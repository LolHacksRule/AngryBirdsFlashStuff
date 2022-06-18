package
{
   import §&1§.§,"I§;
   import §2E§.§'@§;
   import §2E§.§7J§;
   import flash.events.Event;
   
   public class AngryBirdsFacebookCanvas extends §,"I§
   {
      
      public static const §!"O§:String = "r12277";
       
      
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
         §7J§.§-"X§(stage,"UA-23082676-15");
         §'@§.§function§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§7!K§);
         }
         else
         {
            this.§^"I§();
         }
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.init();
      }
      
      private function §7!K§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§7!K§);
         this.§^"I§();
      }
      
      protected function §^"I§() : void
      {
         new §^"a§(this);
      }
   }
}

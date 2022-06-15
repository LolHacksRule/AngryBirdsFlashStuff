package
{
   import §#"4§.§"!o§;
   import §#"4§.§<"G§;
   import §##y§.§<Y§;
   import flash.events.Event;
   
   public class AngryBirdsFacebookCanvas extends §<Y§
   {
      
      public static const §=#0§:String = "r12171";
       
      
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
         §"!o§.§;S§(stage,"UA-23082676-15");
         §<"G§.§@#u§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§#"f§);
         }
         else
         {
            this.§3&§();
         }
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.init();
      }
      
      private function §#"f§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§#"f§);
         this.§3&§();
      }
      
      protected function §3&§() : void
      {
         new §@z§(this);
      }
   }
}

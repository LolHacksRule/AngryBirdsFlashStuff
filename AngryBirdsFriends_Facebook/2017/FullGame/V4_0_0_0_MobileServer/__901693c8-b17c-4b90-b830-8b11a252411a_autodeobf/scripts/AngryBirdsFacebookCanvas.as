package
{
   import §6V§.§@!o§;
   import §6V§.§`"5§;
   import §<"P§.§8#-§;
   import flash.events.Event;
   
   public class AngryBirdsFacebookCanvas extends §8#-§
   {
      
      public static const §%"u§:String = "r9678";
       
      
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
         §@!o§.§3,§(stage,"UA-23082676-15");
         §`"5§.§3"U§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§3a§);
         }
         else
         {
            this.§^n§();
         }
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.init();
      }
      
      private function §3a§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§3a§);
         this.§^n§();
      }
      
      protected function §^n§() : void
      {
         new §-#+§(this);
      }
   }
}

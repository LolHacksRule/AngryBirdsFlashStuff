package
{
   import §@l§.§8"9§;
   import §`7§.§`"x§;
   import §`7§.§`m§;
   import flash.events.Event;
   
   public class AngryBirdsFacebookCanvas extends §8"9§
   {
      
      public static const §,4§:String = "r10688";
       
      
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
         §`m§.§!"?§(stage,"UA-23082676-15");
         §`"x§.§<![§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§7M§);
         }
         else
         {
            this.§+"+§();
         }
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.init();
      }
      
      private function §7M§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§7M§);
         this.§+"+§();
      }
      
      protected function §+"+§() : void
      {
         new §,A§(this);
      }
   }
}

package
{
   import §<!'§.§-"$§;
   import §>!#§.§,"W§;
   import §>!#§.§;-§;
   import flash.events.Event;
   
   public class AngryBirdsFacebookCanvas extends §-"$§
   {
      
      public static const §`!-§:String = "r7751";
       
      
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
         §;-§.§`"H§(stage,"UA-23082676-15");
         §,"W§.§4!D§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§%#H§);
         }
         else
         {
            this.§##-§();
         }
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.init();
      }
      
      private function §%#H§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§%#H§);
         this.§##-§();
      }
      
      protected function §##-§() : void
      {
         new §8G§(this);
      }
   }
}

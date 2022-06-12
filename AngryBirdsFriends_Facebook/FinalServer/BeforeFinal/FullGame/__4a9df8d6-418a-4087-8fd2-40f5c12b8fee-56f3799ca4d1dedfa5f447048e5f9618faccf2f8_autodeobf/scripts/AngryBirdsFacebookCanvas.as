package
{
   import §&!_§.§"@§;
   import §&!_§.§0I§;
   import §&m§.§'5§;
   import flash.events.Event;
   
   public class AngryBirdsFacebookCanvas extends §'5§
   {
      
      public static const §["&§:String = "r11831";
       
      
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
         §"@§.§3">§(stage,"UA-23082676-15");
         §0I§.§%!B§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§[m§);
         }
         else
         {
            this.§3#O§();
         }
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.init();
      }
      
      private function §[m§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§[m§);
         this.§3#O§();
      }
      
      protected function §3#O§() : void
      {
         new § #v§(this);
      }
   }
}

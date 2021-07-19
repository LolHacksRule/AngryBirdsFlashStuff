package §%_§
{
   import com.angrybirds.PreLoaderLoadingIndicator;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getDefinitionByName;
   
   public class §^!B§ extends MovieClip
   {
       
      
      protected var §=!J§:PreLoaderLoadingIndicator;
      
      public function §^!B§()
      {
         super();
         this.§=!J§ = new PreLoaderLoadingIndicator();
         addChild(this.§=!J§);
         this.align();
         addEventListener(Event.ENTER_FRAME,this.§"!c§);
         stage.addEventListener(Event.RESIZE,this.§[!C§);
      }
      
      private function §"!c§(param1:Event) : void
      {
         if(currentFrame == totalFrames)
         {
            stop();
            removeEventListener(Event.ENTER_FRAME,this.§"!c§);
            stage.removeEventListener(Event.RESIZE,this.§[!C§);
            removeChild(this.§=!J§);
            this.§ O§();
         }
      }
      
      private function §[!C§(param1:Event) : void
      {
         this.align();
      }
      
      protected function align() : void
      {
         this.§=!J§.x = Math.round(stage.stageWidth / 2);
         this.§=!J§.y = Math.round(stage.stageHeight / 2);
      }
      
      protected function § O§() : void
      {
         var _loc1_:Class = getDefinitionByName(this.§@!6§) as Class;
         addChild(DisplayObject(new _loc1_()));
      }
      
      protected function get §@!6§() : String
      {
         return "AngryBirdsCustomCanvas";
      }
   }
}

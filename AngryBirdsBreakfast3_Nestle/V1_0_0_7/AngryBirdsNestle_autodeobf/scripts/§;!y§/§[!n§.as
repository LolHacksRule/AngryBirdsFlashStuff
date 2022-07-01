package §;!y§
{
   import com.angrybirds.PreLoaderLoadingIndicator;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getDefinitionByName;
   
   public class §[!n§ extends MovieClip
   {
       
      
      protected var §[R§:PreLoaderLoadingIndicator;
      
      public function §[!n§()
      {
         super();
         this.§[R§ = new PreLoaderLoadingIndicator();
         addChild(this.§[R§);
         this.align();
         addEventListener(Event.ENTER_FRAME,this.§#"0§);
         stage.addEventListener(Event.RESIZE,this.§7"!§);
      }
      
      private function §#"0§(param1:Event) : void
      {
         if(currentFrame == totalFrames)
         {
            stop();
            removeEventListener(Event.ENTER_FRAME,this.§#"0§);
            stage.removeEventListener(Event.RESIZE,this.§7"!§);
            removeChild(this.§[R§);
            this.§91§();
         }
      }
      
      private function §7"!§(param1:Event) : void
      {
         this.align();
      }
      
      protected function align() : void
      {
         this.§[R§.x = Math.round(stage.stageWidth / 2);
         this.§[R§.y = Math.round(stage.stageHeight / 2);
      }
      
      protected function §91§() : void
      {
         var _loc1_:Class = getDefinitionByName(this.§%c§) as Class;
         addChild(DisplayObject(new _loc1_()));
      }
      
      protected function get §%c§() : String
      {
         return "AngryBirdsCustomCanvas";
      }
   }
}

package §,!9§
{
   import com.angrybirds.PreLoaderLoadingIndicator;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getDefinitionByName;
   
   public class §;V§ extends MovieClip
   {
       
      
      protected var §3U§:PreLoaderLoadingIndicator;
      
      public function §;V§()
      {
         super();
         this.§3U§ = new PreLoaderLoadingIndicator();
         addChild(this.§3U§);
         this.align();
         addEventListener(Event.ENTER_FRAME,this.§<",§);
         stage.addEventListener(Event.RESIZE,this.§`!2§);
      }
      
      private function §<",§(param1:Event) : void
      {
         if(currentFrame == totalFrames)
         {
            stop();
            removeEventListener(Event.ENTER_FRAME,this.§<",§);
            stage.removeEventListener(Event.RESIZE,this.§`!2§);
            removeChild(this.§3U§);
            this.§#!e§();
         }
      }
      
      private function §`!2§(param1:Event) : void
      {
         this.align();
      }
      
      protected function align() : void
      {
         this.§3U§.x = Math.round(stage.stageWidth / 2);
         this.§3U§.y = Math.round(stage.stageHeight / 2);
      }
      
      protected function §#!e§() : void
      {
         var _loc1_:Class = getDefinitionByName(this.§>X§) as Class;
         addChild(DisplayObject(new _loc1_()));
      }
      
      protected function get §>X§() : String
      {
         return "AngryBirdsCustomCanvas";
      }
   }
}

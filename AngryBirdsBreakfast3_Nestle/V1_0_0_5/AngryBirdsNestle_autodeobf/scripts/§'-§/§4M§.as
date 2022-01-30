package §'-§
{
   import com.angrybirds.PreLoaderLoadingIndicator;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getDefinitionByName;
   
   public class §4M§ extends MovieClip
   {
       
      
      protected var § !<§:PreLoaderLoadingIndicator;
      
      public function §4M§()
      {
         super();
         this.§ !<§ = new PreLoaderLoadingIndicator();
         addChild(this.§ !<§);
         this.align();
         addEventListener(Event.ENTER_FRAME,this.§9T§);
         stage.addEventListener(Event.RESIZE,this.§9Q§);
      }
      
      private function §9T§(param1:Event) : void
      {
         if(currentFrame == totalFrames)
         {
            stop();
            removeEventListener(Event.ENTER_FRAME,this.§9T§);
            stage.removeEventListener(Event.RESIZE,this.§9Q§);
            removeChild(this.§ !<§);
            this.§0!N§();
         }
      }
      
      private function §9Q§(param1:Event) : void
      {
         this.align();
      }
      
      protected function align() : void
      {
         this.§ !<§.x = Math.round(stage.stageWidth / 2);
         this.§ !<§.y = Math.round(stage.stageHeight / 2);
      }
      
      protected function §0!N§() : void
      {
         var _loc1_:Class = getDefinitionByName(this.§;t§) as Class;
         addChild(DisplayObject(new _loc1_()));
      }
      
      protected function get §;t§() : String
      {
         return "AngryBirdsCustomCanvas";
      }
   }
}

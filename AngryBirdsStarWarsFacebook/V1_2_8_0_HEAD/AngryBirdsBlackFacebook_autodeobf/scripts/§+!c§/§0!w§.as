package §+!c§
{
   import com.angrybirds.PreLoaderLoadingIndicator;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getDefinitionByName;
   
   public class §0!w§ extends MovieClip
   {
       
      
      protected var §1#F§:PreLoaderLoadingIndicator;
      
      public function §0!w§()
      {
         super();
         this.§1#F§ = new PreLoaderLoadingIndicator();
         addChild(this.§1#F§);
         this.align();
         addEventListener(Event.ENTER_FRAME,this.§-!u§);
         stage.addEventListener(Event.RESIZE,this.§9"q§);
      }
      
      private function §-!u§(param1:Event) : void
      {
         if(currentFrame == totalFrames)
         {
            stop();
            removeEventListener(Event.ENTER_FRAME,this.§-!u§);
            stage.removeEventListener(Event.RESIZE,this.§9"q§);
            removeChild(this.§1#F§);
            this.§<#]§();
         }
      }
      
      private function §9"q§(param1:Event) : void
      {
         this.align();
      }
      
      protected function align() : void
      {
         this.§1#F§.x = Math.round(stage.stageWidth / 2);
         this.§1#F§.y = Math.round(stage.stageHeight / 2);
      }
      
      protected function §<#]§() : void
      {
         var _loc1_:Class = getDefinitionByName(this.mainClassName) as Class;
         addChild(DisplayObject(new _loc1_()));
      }
      
      protected function get mainClassName() : String
      {
         return "AngryBirdsBlackCanvas";
      }
   }
}

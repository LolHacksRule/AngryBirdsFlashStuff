package §7""§
{
   import com.angrybirds.PreLoaderLoadingIndicator;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getDefinitionByName;
   
   public class §<l§ extends MovieClip
   {
       
      
      protected var §;"H§:PreLoaderLoadingIndicator;
      
      public function §<l§()
      {
         super();
         this.§;"H§ = new PreLoaderLoadingIndicator();
         addChild(this.§;"H§);
         this.align();
         addEventListener(Event.ENTER_FRAME,this.§`_§);
         stage.addEventListener(Event.RESIZE,this.§#!N§);
      }
      
      private function §`_§(param1:Event) : void
      {
         if(currentFrame == totalFrames)
         {
            stop();
            removeEventListener(Event.ENTER_FRAME,this.§`_§);
            stage.removeEventListener(Event.RESIZE,this.§#!N§);
            removeChild(this.§;"H§);
            this.§9"f§();
         }
      }
      
      private function §#!N§(param1:Event) : void
      {
         this.align();
      }
      
      protected function align() : void
      {
         this.§;"H§.x = Math.round(stage.stageWidth / 2);
         this.§;"H§.y = Math.round(stage.stageHeight / 2);
      }
      
      protected function §9"f§() : void
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

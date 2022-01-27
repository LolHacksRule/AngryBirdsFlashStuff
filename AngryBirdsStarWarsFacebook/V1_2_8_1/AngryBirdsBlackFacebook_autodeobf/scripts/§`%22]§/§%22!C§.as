package §`"]§
{
   import com.angrybirds.PreLoaderLoadingIndicator;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getDefinitionByName;
   
   public class §"!C§ extends MovieClip
   {
       
      
      protected var §1!g§:PreLoaderLoadingIndicator;
      
      public function §"!C§()
      {
         super();
         this.§1!g§ = new PreLoaderLoadingIndicator();
         addChild(this.§1!g§);
         this.align();
         addEventListener(Event.ENTER_FRAME,this.§^!<§);
         stage.addEventListener(Event.RESIZE,this.§,"M§);
      }
      
      private function §^!<§(param1:Event) : void
      {
         if(currentFrame == totalFrames)
         {
            stop();
            removeEventListener(Event.ENTER_FRAME,this.§^!<§);
            stage.removeEventListener(Event.RESIZE,this.§,"M§);
            removeChild(this.§1!g§);
            this.§-D§();
         }
      }
      
      private function §,"M§(param1:Event) : void
      {
         this.align();
      }
      
      protected function align() : void
      {
         this.§1!g§.x = Math.round(stage.stageWidth / 2);
         this.§1!g§.y = Math.round(stage.stageHeight / 2);
      }
      
      protected function §-D§() : void
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

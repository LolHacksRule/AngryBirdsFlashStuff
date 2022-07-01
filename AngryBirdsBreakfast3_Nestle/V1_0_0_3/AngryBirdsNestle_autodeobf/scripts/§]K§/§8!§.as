package §]K§
{
   import com.angrybirds.PreLoaderLoadingIndicator;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getDefinitionByName;
   
   public class §8!§ extends MovieClip
   {
       
      
      protected var § `§:PreLoaderLoadingIndicator;
      
      public function §8!§()
      {
         super();
         this.§ `§ = new PreLoaderLoadingIndicator();
         addChild(this.§ `§);
         this.align();
         addEventListener(Event.ENTER_FRAME,this.§5=§);
         stage.addEventListener(Event.RESIZE,this.§-!2§);
      }
      
      private function §5=§(param1:Event) : void
      {
         if(currentFrame == totalFrames)
         {
            stop();
            removeEventListener(Event.ENTER_FRAME,this.§5=§);
            stage.removeEventListener(Event.RESIZE,this.§-!2§);
            removeChild(this.§ `§);
            this.§'y§();
         }
      }
      
      private function §-!2§(param1:Event) : void
      {
         this.align();
      }
      
      protected function align() : void
      {
         this.§ `§.x = Math.round(stage.stageWidth / 2);
         this.§ `§.y = Math.round(stage.stageHeight / 2);
      }
      
      protected function §'y§() : void
      {
         var _loc1_:Class = getDefinitionByName(this.§7#§) as Class;
         addChild(DisplayObject(new _loc1_()));
      }
      
      protected function get §7#§() : String
      {
         return "AngryBirdsCustomCanvas";
      }
   }
}

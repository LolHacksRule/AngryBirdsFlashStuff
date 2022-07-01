package §2!"§
{
   import com.angrybirds.PreLoaderLoadingIndicator;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getDefinitionByName;
   
   public class §6g§ extends MovieClip
   {
       
      
      protected var §0!Q§:PreLoaderLoadingIndicator;
      
      public function §6g§()
      {
         super();
         this.§0!Q§ = new PreLoaderLoadingIndicator();
         addChild(this.§0!Q§);
         this.align();
         addEventListener(Event.ENTER_FRAME,this.§[i§);
         stage.addEventListener(Event.RESIZE,this.§7!;§);
      }
      
      private function §[i§(param1:Event) : void
      {
         if(currentFrame == totalFrames)
         {
            stop();
            removeEventListener(Event.ENTER_FRAME,this.§[i§);
            stage.removeEventListener(Event.RESIZE,this.§7!;§);
            removeChild(this.§0!Q§);
            this.§@_§();
         }
      }
      
      private function §7!;§(param1:Event) : void
      {
         this.align();
      }
      
      protected function align() : void
      {
         this.§0!Q§.x = Math.round(stage.stageWidth / 2);
         this.§0!Q§.y = Math.round(stage.stageHeight / 2);
      }
      
      protected function §@_§() : void
      {
         var _loc1_:Class = getDefinitionByName(this.§+p§) as Class;
         addChild(DisplayObject(new _loc1_()));
      }
      
      protected function get §+p§() : String
      {
         return "AngryBirdsCustomCanvas";
      }
   }
}

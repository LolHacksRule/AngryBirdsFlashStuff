package §_-LM§
{
   import §_-FQ§.§_-7W§;
   import §_-JR§.§_-yh§;
   import §_-UX§.DisplayObject;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.TouchEvent;
   import starling.events.§_-9U§;
   import starling.events.§_-IZ§;
   
   public class §_-sY§ implements §_-wJ§
   {
       
      
      protected var §_-6q§:§_-7W§;
      
      private var §_-YU§:Boolean = false;
      
      public function §_-sY§(param1:§_-7W§)
      {
         super();
         this.§_-6q§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§_-6q§.update(param1,true);
      }
      
      public function init() : void
      {
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
      }
      
      public function addEventListeners() : void
      {
         this.removeEventListeners();
         if(§_-yh§.§_-1o§)
         {
            §_-yh§.§_-1o§.stage.addEventListener(TouchEvent.§_-1N§,this.§_-OU§);
         }
         this.§_-6q§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§_-yh§.§_-1o§)
         {
            §_-yh§.§_-1o§.stage.removeEventListener(TouchEvent.§_-1N§,this.§_-OU§);
         }
         this.§_-6q§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §_-OU§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§_-9U§> = null;
         var _loc4_:§_-9U§ = null;
         var _loc5_:§_-9U§ = null;
         if(!this.§_-YU§ || !this.§_-6q§.§_-FO§)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§_-4n§(_loc2_,§_-IZ§.§_-Wx§);
            _loc3_ = _loc3_.concat(param1.§_-4n§(_loc2_,§_-IZ§.§_-R-§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§_-BN§(_loc2_,§_-IZ§.§_-b6§)) && _loc4_.§_-Nr§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§_-BN§(_loc2_,§_-IZ§.§_-cZ§)) && _loc5_.§_-Nr§ > 0)
            {
               this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
            }
         }
      }
      
      public function handleMouseMove(param1:Number, param2:Number) : void
      {
      }
      
      public function handleMouseUp(param1:Number, param2:Number) : void
      {
      }
      
      public function handleMouseDown(param1:Number, param2:Number) : void
      {
      }
      
      public function onMouseWheel(param1:MouseEvent) : void
      {
      }
      
      public function addScore(param1:int) : void
      {
      }
      
      public function getScore() : int
      {
         return 0;
      }
      
      public function §_-pL§(param1:Boolean) : void
      {
         this.§_-YU§ = param1;
      }
      
      public function §_-Bb§() : Boolean
      {
         return this.§_-YU§;
      }
   }
}

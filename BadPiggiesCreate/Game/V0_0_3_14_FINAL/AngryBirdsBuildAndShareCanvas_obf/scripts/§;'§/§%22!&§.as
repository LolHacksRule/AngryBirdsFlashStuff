package §;'§
{
   import §5!V§.§!w§;
   import §6p§.§?%§;
   import §default§.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§1[§;
   import starling.events.§<!h§;
   import starling.events.TouchEvent;
   
   public class §"!&§ extends EventDispatcher implements §return§
   {
       
      
      protected var §9q§:§!w§;
      
      private var § !2§:Boolean = false;
      
      public function §"!&§(param1:§!w§)
      {
         super();
         this.§9q§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§9q§.update(param1,true);
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
         if(§?%§.§%b§)
         {
            §?%§.§%b§.stage.addEventListener(TouchEvent.§9>§,this.§9R§);
         }
         this.§9q§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§?%§.§%b§)
         {
            §?%§.§%b§.stage.removeEventListener(TouchEvent.§9>§,this.§9R§);
         }
         this.§9q§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §9R§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§1[§> = null;
         var _loc4_:§1[§ = null;
         var _loc5_:§1[§ = null;
         if(!this.§ !2§ || !this.§9q§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§<C§(_loc2_,§<!h§.§-!V§);
            _loc3_ = _loc3_.concat(param1.§<C§(_loc2_,§<!h§.§"W§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§package§(_loc2_,§<!h§.§,"#§)) && _loc4_.§0!T§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§package§(_loc2_,§<!h§.§?!o§)) && _loc5_.§0!T§ > 0)
            {
               this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
            }
         }
      }
      
      protected function handleMouseMove(param1:Number, param2:Number) : void
      {
      }
      
      protected function handleMouseUp(param1:Number, param2:Number) : void
      {
      }
      
      protected function handleMouseDown(param1:Number, param2:Number) : void
      {
      }
      
      protected function onMouseWheel(param1:MouseEvent) : void
      {
      }
      
      public function getZoomRatio() : Number
      {
         return this.§9q§.camera.getZoomRatio();
      }
      
      public function setZoomRatio(param1:Number) : void
      {
         this.§9q§.camera.setZoomRatio(param1);
      }
      
      public function addScore(param1:int) : void
      {
      }
      
      public function getScore() : int
      {
         return 0;
      }
      
      public function getEagleScore() : int
      {
         return 0;
      }
      
      public function §;"3§(param1:Boolean) : void
      {
         this.§ !2§ = param1;
      }
      
      public function §2!B§() : Boolean
      {
         return this.§ !2§;
      }
   }
}

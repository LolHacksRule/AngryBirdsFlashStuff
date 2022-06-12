package §&=§
{
   import §3",§.§0"<§;
   import §@!i§.DisplayObject;
   import §[B§.§"d§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§6!,§;
   import starling.events.TouchEvent;
   import starling.events.§[b§;
   
   public class §0?§ extends EventDispatcher implements §%!j§
   {
       
      
      protected var §]!3§:§"d§;
      
      private var §[" §:Boolean = false;
      
      public function §0?§(param1:§"d§)
      {
         super();
         this.§]!3§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§]!3§.update(param1,true);
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
         if(§0"<§.§<?§)
         {
            §0"<§.§<?§.stage.addEventListener(TouchEvent.§-!I§,this.§-!L§);
         }
         this.§]!3§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§0"<§.§<?§)
         {
            §0"<§.§<?§.stage.removeEventListener(TouchEvent.§-!I§,this.§-!L§);
         }
         this.§]!3§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §-!L§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§6!,§> = null;
         var _loc4_:§6!,§ = null;
         var _loc5_:§6!,§ = null;
         if(!this.§[" § || !this.§]!3§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§6l§(_loc2_,§[b§.§?!6§);
            _loc3_ = _loc3_.concat(param1.§6l§(_loc2_,§[b§.§+!9§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§""+§(_loc2_,§[b§.§%"%§)) && _loc4_.§>G§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§""+§(_loc2_,§[b§.§^!x§)) && _loc5_.§>G§ > 0)
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
         return this.§]!3§.camera.getZoomRatio();
      }
      
      public function setZoomRatio(param1:Number) : void
      {
         this.§]!3§.camera.setZoomRatio(param1);
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
      
      public function §0!w§(param1:Boolean) : void
      {
         this.§[" § = param1;
      }
      
      public function §?"0§() : Boolean
      {
         return this.§[" §;
      }
   }
}

package §5#§
{
   import §-!`§.DisplayObject;
   import §<!<§.§7E§;
   import §@!X§.§7j§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§,s§;
   import starling.events.§21§;
   import starling.events.TouchEvent;
   
   public class §?o§ extends EventDispatcher implements §5k§
   {
       
      
      protected var §-n§:§7E§;
      
      private var §-!s§:Boolean = false;
      
      public function §?o§(param1:§7E§)
      {
         super();
         this.§-n§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§-n§.update(param1,true);
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
         if(§7j§.§else§)
         {
            §7j§.§else§.stage.addEventListener(TouchEvent.§1C§,this.§6!j§);
         }
         this.§-n§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§7j§.§else§)
         {
            §7j§.§else§.stage.removeEventListener(TouchEvent.§1C§,this.§6!j§);
         }
         this.§-n§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §6!j§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§,s§> = null;
         var _loc4_:§,s§ = null;
         var _loc5_:§,s§ = null;
         if(!this.§-!s§ || !this.§-n§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§'[§(_loc2_,§21§.§#!`§);
            _loc3_ = _loc3_.concat(param1.§'[§(_loc2_,§21§.§&i§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§ var§(_loc2_,§21§.§<w§)) && _loc4_.§=!u§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§ var§(_loc2_,§21§.§%@§)) && _loc5_.§=!u§ > 0)
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
         return this.§-n§.camera.getZoomRatio();
      }
      
      public function setZoomRatio(param1:Number) : void
      {
         this.§-n§.camera.setZoomRatio(param1);
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
      
      public function §05§(param1:Boolean) : void
      {
         this.§-!s§ = param1;
      }
      
      public function §9!S§() : Boolean
      {
         return this.§-!s§;
      }
   }
}

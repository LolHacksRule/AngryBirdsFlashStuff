package §62§
{
   import §0P§.§!!l§;
   import §1!Y§.DisplayObject;
   import §1!v§.§@%§;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.§<!O§;
   import starling.events.§?!!§;
   import starling.events.TouchEvent;
   
   public class §7! § extends EventDispatcher implements §7!_§
   {
       
      
      protected var §]Z§:§@%§;
      
      private var §^!2§:Boolean = false;
      
      public function §7! §(param1:§@%§)
      {
         super();
         this.§]Z§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         this.§]Z§.update(param1,true);
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
         if(§!!l§.§`7§)
         {
            §!!l§.§`7§.stage.addEventListener(TouchEvent.§5V§,this.§-R§);
         }
         this.§]Z§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(§!!l§.§`7§)
         {
            §!!l§.§`7§.stage.removeEventListener(TouchEvent.§5V§,this.§-R§);
         }
         this.§]Z§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function §-R§(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<§?!!§> = null;
         var _loc4_:§?!!§ = null;
         var _loc5_:§?!!§ = null;
         if(!this.§^!2§ || !this.§]Z§.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.§+!_§(_loc2_,§<!O§.§!+§);
            _loc3_ = _loc3_.concat(param1.§+!_§(_loc2_,§<!O§.§9",§));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.§ 4§(_loc2_,§<!O§.§&!h§)) && _loc4_.§'!F§ > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.§ 4§(_loc2_,§<!O§.§<z§)) && _loc5_.§'!F§ > 0)
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
         return this.§]Z§.camera.getZoomRatio();
      }
      
      public function setZoomRatio(param1:Number) : void
      {
         this.§]Z§.camera.setZoomRatio(param1);
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
      
      public function §%5§(param1:Boolean) : void
      {
         this.§^!2§ = param1;
      }
      
      public function §[!l§() : Boolean
      {
         return this.§^!2§;
      }
   }
}
